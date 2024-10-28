$(function() {

$("#username").blur(
		function() {
			$("#username_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#username").after("<span id='username_msg' style='color: red'>用户名不能为空</span>");
			}
	});

$("#password").blur(
		function() {
			$("#password_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#password").after("<span id='password_msg' style='color: red'>密码不能为空</span>");
			}
	});

$("#teachername").blur(
		function() {
			$("#teachername_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#teachername").after("<span id='teachername_msg' style='color: red'>姓名不能为空</span>");
			}
	});

$("#birthday").blur(
		function() {
			$("#birthday_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#birthday").after("<span id='birthday_msg' style='color: red'>出生日期不能为空</span>");
			}
	});

$("#graduate").blur(
		function() {
			$("#graduate_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#graduate").after("<span id='graduate_msg' style='color: red'>毕业院校不能为空</span>");
			}
	});

$("#contact").blur(
		function() {
			$("#contact_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#contact").after("<span id='contact_msg' style='color: red'>联系方式不能为空</span>");
			}
	});

$("#image").blur(
		function() {
			$("#image_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#image").after("<span id='image_msg' style='color: red'>照片不能为空</span>");
			}
	});

$("#contents").blur(
		function() {
			$("#contents_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#contents").after("<span id='contents_msg' style='color: red'>教师介绍不能为空</span>");
			}
	});







$('#sub').click(function(){
var username = $("#username").val();
var password = $("#password").val();
var teachername = $("#teachername").val();
var birthday = $("#birthday").val();
var graduate = $("#graduate").val();
var contact = $("#contact").val();
var image = $("#image").val();
var contents = $("#contents").val();
$("#username_msg").empty();
$("#password_msg").empty();
$("#teachername_msg").empty();
$("#birthday_msg").empty();
$("#graduate_msg").empty();
$("#contact_msg").empty();
$("#image_msg").empty();
$("#contents_msg").empty();
if (username == "" || username == null) {
	$("#username").after("<span id='username_msg' style='color: red'>用户名不能为空</span>");
	return false;
}
if (password == "" || password == null) {
	$("#password").after("<span id='password_msg' style='color: red'>密码不能为空</span>");
	return false;
}
if (teachername == "" || teachername == null) {
	$("#teachername").after("<span id='teachername_msg' style='color: red'>姓名不能为空</span>");
	return false;
}
if (birthday == "" || birthday == null) {
	$("#birthday").after("<span id='birthday_msg' style='color: red'>出生日期不能为空</span>");
	return false;
}
if (graduate == "" || graduate == null) {
	$("#graduate").after("<span id='graduate_msg' style='color: red'>毕业院校不能为空</span>");
	return false;
}
if (contact == "" || contact == null) {
	$("#contact").after("<span id='contact_msg' style='color: red'>联系方式不能为空</span>");
	return false;
}
if (image == "" || image == null) {
	$("#image").after("<span id='image_msg' style='color: red'>照片不能为空</span>");
	return false;
}
if (contents == "" || contents == null) {
	$("#contents").after("<span id='contents_msg' style='color: red'>教师介绍不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#username_msg").empty();
$("#password_msg").empty();
$("#teachername_msg").empty();
$("#birthday_msg").empty();
$("#graduate_msg").empty();
$("#contact_msg").empty();
$("#image_msg").empty();
$("#contents_msg").empty();
});

});
