
// 检查数据库参数，第 3 步
function check_data(){
	if(document.data_admin.db_host.value == ''){
		alert('请输入 MySQL 数据库服务器地址！');
		document.data_admin.db_host.focus();
		return false;		
	}
	if(document.data_admin.db_port.value == ''){
		alert('请输入数据库连接端口！');
		document.data_admin.db_port.focus();
		return false;		
	}
	if(document.data_admin.db_name.value == ''){
		alert('请输入数据库名称！');
		document.data_admin.db_name.focus();
		return false;		
	}
	if(document.data_admin.db_user.value == ''){
		alert('请输入数据库用户名！');
		document.data_admin.db_user.focus();
		return false;		
	}
//	允许空密码
//	if(document.data_admin.db_pass.value == ''){
//		alert('请输入数据库密码！');
//		document.data_admin.db_pass.focus();
//		return false;		
//	}
	if(document.data_admin.db_prefix.value == ''){
		alert('请输入数据前缀！');
		document.data_admin.db_prefix.focus();
		return false;		
	}
}

// 间歇输出，建立数据表，第 4 步用
var cumulative = 0;
var spacing = 350; // 间隔时间
function showmessage(message) {
	cumulative++;
	setTimeout(function(){
		document.getElementById('notice').innerHTML += message;
		document.getElementById('notice').scrollTop = 100000000;
	},cumulative * spacing);	
}

// 检查管理员，第 6 步
function check_admin(){
	if(document.data_admin.website.value == ''){
		alert('请输入网站访问地址！');
		document.data_admin.website.focus();
		return false;		
	}
	if(document.data_admin.username.value.match(/^[\w_]{5,20}$/) == null){
		alert('管理员帐号必须由5 - 20个字符组成，只能使用数字、字母或下划线！');
		document.data_admin.username.focus();
		return false;		
	}
	if(document.data_admin.password.value.match(/[^\'\"\\\/]{5,20}$/) == null){
		alert('管理员密码必须为5 - 20个字符，不得使用特殊字符！');
		document.data_admin.password.focus();
		return false;		
	}
	if(document.data_admin.password.value != document.data_admin.password2.value){
		alert('两次输入的后台登录密码不一致！');
		document.data_admin.password2.focus();
		return false;		
	}
}