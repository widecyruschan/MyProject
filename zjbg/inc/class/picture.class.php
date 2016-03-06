<?php
defined('CMSROOT') or die('Access Denied.');
class picture{
	public $info = true;
	public $cut = array(
		'file' => NULL,
		'min_width' => 120,
		'min_height' => 100,
		'save_dir' => 'auto',
		'save_name' => false,
		'format' => 'auto',	
		'quality' => 100,
		'width' => 124,
		'height' => 124
	);
	public $watermark = array(
		'file' => NULL,
		'min_width' => 300,
		'min_height' => 100,
		'rename' => 'auto', 
		'type' => 'pics', 
		'pics' => './images/watermark.png',
		'alignment' => 3,
		'x' => 0, 
		'y' => 0, 
		'font_file' => 'inc/fonts/ariali.ttf', 
		'color' => "#0000ff",
		'text' => 'www.CyrusChanHK.com',
		'font_size' => 22,
		'angle' => 0,
	);
	private $Language = array(
		0 => '当前环境不支持 GD 图像库，无法对图片进行处理。',
		1 => '非法的图片文件，裁切及水印支持的文件类型：jpg,gif,png',
		2 => '图片保存目录不存在：',
		3 => '图片小于规定值，没有对图片进行裁切。',
		4 => '图片小于规定值，没有添加图片水印。',
		5 => '无法读取水印字体文件：',
		6 => '无法读取水印图片文件：',
		7 => '添加文字水印时出现错误，可能原因：非法的字体库或字体库不支持当前填写的文字内容，请尝试选择（或安装）其它的字体文件。',
		8 => '无法保存处理后的图片文件，请确认您是否有相应文件的写入权限：',
	);
	private $Size = array();
    private $chmod_files = 0777;
	public function __construct(){
		global $picture_config;
		if(!function_exists("gd_info") || !extension_loaded('gd')){
			$this->info = $this->Language[0];
			return false;
		}
		require_once(CMSINC.'/config/picture.config.php');
		$this->cut['min_width'] = $picture_config['cut']['conditions'][0];
		$this->cut['min_height'] = $picture_config['cut']['conditions'][1];
		$this->cut['quality'] = $picture_config['cut']['quality'];
		$this->watermark['min_width'] = $picture_config['watermark']['request'][0];
		$this->watermark['min_height'] = $picture_config['watermark']['request'][1];
		$this->watermark['type'] = $picture_config['watermark']['type'];
		$this->watermark['pics'] = $picture_config['watermark']['pics'];
		$this->watermark['alignment'] = $picture_config['watermark']['alignment'];
		$this->watermark['x'] = $picture_config['watermark']['x'];
		$this->watermark['y'] = $picture_config['watermark']['y'];
		$this->watermark['font_file'] = $picture_config['watermark']['truetype'];
		$this->watermark['color'] = $picture_config['watermark']['color'];
		$this->watermark['text'] = $picture_config['watermark']['text'];
		$this->watermark['font_size'] = $picture_config['watermark']['size'];
		$this->watermark['angle'] = $picture_config['watermark']['angle'];
	}	
	public function cut(){
		$this->picssize($this->cut['file']); 
		if($this->info !== true) return false; 
		if($this->Size[0]<$this->cut['min_width'] || $this->Size[1]<$this->cut['min_height']){ 
			$this->info = $this->Language[3];
			return false;
		}
		if($this->cut['format'] == 'auto') $this->cut['format'] = $this->Size[4]; 
		if($this->cut['save_dir'] == 'auto') $this->cut['save_dir'] = dirname($this->cut['file']) . '/'; 
		if(!is_dir($this->cut['save_dir'])){
			$this->info = $this->Language[2] . $this->cut['save_dir']; 
			return false;			
		}
		$this->cut['save_name'] = $this->autoname(); 
		$NewPics = @imagecreatetruecolor($this->cut['width'],$this->cut['height']); 
		$sp = $this->picscreate($this->cut['file']);
		$w_again = $this->Size[0]/$this->cut['width']; 
		$h_again = $this->Size[1]/$this->cut['height']; 
		$again = $w_again<$h_again ? $w_again : $h_again; 
		$src_w = $this->cut['width']*$again; 
		$src_h = $this->cut['height']*$again; 
		$src_x = ($this->Size[0]-$src_w)/2; 
		$src_y = ($this->Size[1]-$src_h)/2; 
		imagecopyresampled($NewPics,$sp,0,0,$src_x,$src_y,$this->cut['width'],$this->cut['height'],$src_w,$src_h); 
		switch($this->cut['format']){
			case 'jpg' : $result = @imagejpeg($NewPics,$this->cut['save_dir'].$this->cut['save_name'],$this->cut['quality']); break; 
			case 'png' : $result = @imagepng($NewPics,$this->cut['save_dir'].$this->cut['save_name']); break; 
			case 'gif' : $result = @imagegif($NewPics,$this->cut['save_dir'].$this->cut['save_name']); break;			
		}
		if($result){
			@chmod ($this->cut['save_dir'].$this->cut['save_name'],$this->chmod_files); 
			@imagedestroy($NewPics); @imagedestroy($sp); 
			unset($NewPics,$w_again,$h_again,$again,$sp,$src_w,$src_h,$src_x,$src_y);
			return true;
		} else {
			$this->info = $this->Language[8].$newPics; 
			return false;			
		}
	}
	public function watermark(){
		$this->picssize($this->watermark['file']); 
		if($this->info !== true) return false; 
		if($this->Size[0]<$this->watermark['min_width'] || $this->Size[1]<$this->watermark['min_height']){ 
			$this->info = $this->Language[4];
			return false;
		}		
		$nzpics = $this->picscreate($this->watermark['file']);
		if($this->watermark['type'] == 'pics'){
			$wapics = $this->watermark['pics']; 
			if(!is_file($wapics)){
				$this->info = $this->Language[6] . $wapics;
				return false;
			}			
			$src = getimagesize($wapics); 
			$wapics = $this->picscreate($wapics); 
		}else { 
			$src[0] = 300;
			$src[1] = 30;
			if(!is_file($this->watermark['font_file'])){
				$this->info = $this->Language[5] . $this->watermark['font_file'];
				return false;
			}
		}
		switch($this->watermark['alignment']){
			case 1 : $src_x = 0;	$src_y = 0;	break;
			case 2 : $src_x = ($this->Size[0]/2)-($src[0]/2); $src_y = 0; break;
			case 3 : $src_x = $this->Size[0]-$src[0]; $src_y = 0; break;
			case 4 : $src_x = 0; $src_y = ($this->Size[1]/2)-($src[1]/2); break;
			case 5 : $src_x = ($this->Size[0]/2)-($src[0]/2); $src_y = ($this->Size[1]/2)-($src[1]/2); break;
			case 6 : $src_x = $this->Size[0]-$src[0]; $src_y = ($this->Size[1]/2)-($src[1]/2); break;				
			case 7 : $src_x = 0; $src_y = $this->Size[1]-$src[1]; break;	
			case 8 : $src_x = ($this->Size[0]/2)-($src[0]/2); $src_y = ($this->Size[1])-($src[1]); break;
			case 9 : $src_x = ($this->Size[0])-($src[0]); $src_y = ($this->Size[1])-($src[1]); break;	
		}
		$src_x += $this->watermark['x'];
		$src_y += $this->watermark['y'];
		if($this->watermark['type'] == 'pics'){ 
			imagecopyresampled($nzpics,$wapics,$src_x,$src_y,0,0,$src[0],$src[1],$src[0],$src[1]); 
		} else { 
			$src_x += 0;
			$src_y += 20;
			$rgb = $this->hex2rgb($this->watermark['color']);
			$color = imagecolorallocate($nzpics,$rgb[0],$rgb[1],$rgb[2]);	
			$result = @imagettftext($nzpics,$this->watermark['font_size'],$this->watermark['angle'],$src_x,$src_y,$color,$this->watermark['font_file'],$this->watermark['text']);
			if(!is_numeric($result[0])){ 
				$this->info = $this->Language[7];
				return false;
			}
			unset($color,$rgb);			
		}
		$newPics = $this->watermark['rename'] == 'auto' ? $this->watermark['file'] : $this->watermark['rename'];
		switch($this->Size[4]){
			case 'jpg' : $result = @imagejpeg($nzpics,$newPics,100); break; 
			case 'png' : $result = @imagepng($nzpics,$newPics); break; 
			case 'gif' : $result = @imagegif($nzpics,$newPics); break;
		}
		if($result){
			@chmod ($newPics,$this->chmod_files); 
			@imagedestroy($nzpics); @imagedestroy($wapics); 
			unset($wapics,$nzpics,$src,$src_x,$src_y,$newPics);
			return true;
		} else {
			$this->info = $this->Language[8].$newPics; 
			return false;	
		}
	}
	private function picscreate($xfile){
		switch($this->suffix($xfile)){
			case 'png' : $result = imagecreatefrompng($xfile); break;
			case 'jpg' : $result = imagecreatefromjpeg($xfile); break;
			case 'gif' : $result = imagecreatefromgif($xfile); break;
		}
		return $result;
	}
	private function autoname(){
		$sn = $this->cut['save_name'];
		if(false === $sn){
			$result = $this->Size[3];
			$result = basename($result,$this->Size[4]); 
			$result .= $this->cut['format']; 
			return $result;
		} elseif (true === $sn) {
			@$result = date("YmdHis") . mt_rand(1000,9999) . '.' . $this->cut['format'];
			return $result;
		} else {
			return $sn;
		}
	}
	private function picssize($xfile){
		@$this->Size = getimagesize($xfile);
		if($this->Size[2] < 1 || $this->Size[2] > 3){
			$this->info = $this->Language[1]; 
			return false;
		}
		$this->Size[3] = basename($xfile); 
		$this->Size[4] = $this->suffix($this->Size[3]); 
		unset($suffix);
		return true;
	}	
	private function suffix($xfile){
		$result = pathinfo($xfile);
		$result = strtolower($result['extension']);
		$result = strtolower($result);
		return $result;
	}
	private function hex2rgb($hex){ 
		if (strtolower(substr($hex,0,1)) == '#'){ 
			$offset = 1; 
		} else { 
			$offset = 0; 
		} 
		$rgb[0] = hexdec(substr($hex,$offset,2)); 
		$offset += 2; 
		$rgb[1] = hexdec(substr($hex,$offset,2)); 
		$offset += 2; 
		$rgb[2] = hexdec(substr($hex,$offset,2)); 
		return $rgb; 
	}
}
?>