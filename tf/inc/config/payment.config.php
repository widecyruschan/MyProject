<?php
defined('CMSROOT') or die('Access Denied.');
$payment_config = array (
  'alipay' => 
  array (
    'email' => '',
    'id' => '',
    'key' => '',
    'service' => 'create_direct_pay_by_user',
    'transport' => 'http',
    'enable' => '1',
  ),
  'tenpay' => 
  array (
    'id' => '',
    'key' => '',
    'service' => '1',
    'enable' => '1',
  ),
);