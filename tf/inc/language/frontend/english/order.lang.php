<?php

defined('CMSROOT') or die('Access Denied.');

$language['page'] = array(
	'title' => 'My Order',
	'home' => 'Home',
	'center' => 'Member Center',
	'location' => 'You Are Here:',	
	
	'list' => array(
		0 => 'Order No.',
		1 => 'Date',
		2 => 'Payables',
		3 => 'Order Status',
		4 => 'Operation',
		5 => 'Payment',
		6 => 'View Order',
		7 => 'Payment',
		8 => 'Edit Order',
		9 => 'Back Cart',
		10 => 'Delete Order',
		11 => 'Has delivered goods',
		12 => 'Related to the current state of operation is not allowed.',
		13 => 'Determine pay with?\rAmount:',
		14 => 'The determination wants the cancel order?',
		15 => 'You want to delete the order?',
	),

	'status' => array(
		0 => 'Waiting payment',
		1 => 'waiting delivers goods',
		2 => 'Is distributing orders',
		3 => 'Has sent out',
		4 => 'transaction finished',
		-1 => 'Request returned goods',
		-2 => 'Rejects the returned goods',
		-3 => 'The returned goods finished',
	),
	
	'msg' => array(
		0 => 'Operation failed, please check the path you submit is correct.',
		1 => 'Remove the order:',
		2 => 'Sorry, insufficient funds to your account, please recharge.',
		3 => 'Incomplete orders.',
		4 => 'Operates successfully.',
		5 => 'Operates successfully.',
	),
	
	'menu' => array(
		0 => 'Member Center',
		1 => 'Avatar Control Panel',
		2 => 'Edit Profile',
		3 => 'Order Management',
		4 => 'Online Recharge',
		5 => 'Transaction Log',
		6 => 'Change Password',
		7 => 'Logout',
	),
);