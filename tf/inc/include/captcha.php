<?php
require_once(str_replace('\\','/',dirname(__FILE__)).'/globals.php');
require_once(CMSINC.'/class/captcha.class.php');
require_once(CMSINC.'/config/captcha.config.php');
$img = new captcha();
$img->image_width = $captcha_config['image_width'];
$img->image_height = $captcha_config['image_height'];
$img->perturbation = $captcha_config['perturbation'];
$img->text_angle_minimum = $captcha_config['text_angle_minimum'];
$img->text_angle_maximum = $captcha_config['text_angle_maximum'];
$img->text_x_start = $captcha_config['text_x_start'];
$img->image_bg_color = new captcha_color($captcha_config['image_bg_color']);
$img->multi_text_color = array(
	new captcha_color("#FF0000"),
	new captcha_color("#3399ff"),
	new captcha_color("#3300cc"),
	new captcha_color("#3333cc"),
	new captcha_color("#6666ff"),
	new captcha_color("#99cccc"),
	new captcha_color("#66CC66"),
	new captcha_color("#999900"),
	new captcha_color("#000000"),
);
$img->text_color = new captcha_color($captcha_config['text_color']);
$img->use_multi_text = $captcha_config['use_multi_text'] == 1 ? true : false;
$img->code_length = $captcha_config['code_length'];
$charset = '';
$charset = in_array(1,$captcha_config['charset']) ? '0123456789' : '';
$charset .= in_array(2,$captcha_config['charset']) ? 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' : '';
$img->charset = $charset;
$img->image_signature = '';
$img->signature_font = CMSINC.'/fonts/incite.ttf';
$img->ttf_file = CMSINC.'/fonts/incite.ttf';
$img->num_lines = $captcha_config['num_lines'];
$img->line_color = new captcha_color($captcha_config['line_color']);
$img->signature_color = new captcha_color(rand(0,64), rand(64,128), rand(128,255));
$img->image_type = SI_IMAGE_PNG;
$img->show($captcha_config['image_bg_imgae'] ? '../images/captcha_bg.jpg' : '');