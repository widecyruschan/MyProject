<?php
defined('CMSROOT') or die('Access Denied.');
$config = array (
  'debugging' => '1',
  'static' => '1',
  'url' => 'http://zjbg.cyrus.com/',
  'home' => 'index.php',
  'lang_total' => '2',
  'lang_default' => '1',
  'status' => '1',
  'admin_dir' => 'zjbgadmin',
  'maintenance' => '<font color="#F00">网站维护中，请稍候访问 。。。</font>',
  'zone' => '8',
  'icp' => '粤ICP备0123456789号',
  'traffic_statistics' => '',
  'guestbook_show' => '1',
  'template' => 
  array (
    'caching' => '0',
    'cache_lifetime' => '0',
    'auto_clear_caching' => '1',
    'force_compile' => '0',
    'customize_page' => 'tag',
  ),
  'upload' => 
  array (
    'type' => 'jpg,gif,png,rar,jpeg',
    'max_annex' => '200000',
    'max_picture' => '1000',
    'date_dir' => '1',
    'naming' => '0',
  ),
  'mail' => 
  array (
    'mailer' => 'smtp',
    'frommail' => 'smtpauto@qq.com',
    'fromname' => 'Service',
    'smtphost' => 'smtp.qq.com',
    'smptport' => '465',
    'smtpauth' => '1',
    'smtpuser' => 'smtpauto',
    'smtppass' => '123456',
    'starttls' => 'ssl',
    'testaddress' => '',
  ),
  'ftp' => 
  array (
    'enable' => '0',
    'host' => '',
    'port' => '',
    'user' => '',
    'pwd' => '',
    'root' => '',
  ),
);