$(function() {

$("#coursename").blur(
		function() {
			$("#coursename_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#coursename").after("<span id='coursename_msg' style='color: red'>课程名称不能为空</span>");
			}
	});

$("#teacherid").blur(
		function() {
			$("#teacherid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#teacherid").after("<span id='teacherid_msg' style='color: red'>教师不能为空</span>");
			}
	});

$("#clazzid").blur(
		function() {
			$("#clazzid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#clazzid").after("<span id='clazzid_msg' style='color: red'>班级不能为空</span>");
			}
	});

$("#credits").blur(
		function() {
			$("#credits_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#credits").after("<span id='credits_msg' style='color: red'>学分不能为空</span>");
			}
	});

$("#timelong").blur(
		function() {
			$("#timelong_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#timelong").after("<span id='timelong_msg' style='color: red'>学时不能为空</span>");
			}
	});

$("#memo").blur(
		function() {
			$("#memo_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
			}
	});







$('#sub').click(function(){
var coursename = $("#coursename").val();
var teacherid = $("#teacherid").val();
var clazzid = $("#clazzid").val();
var credits = $("#credits").val();
var timelong = $("#timelong").val();
var memo = $("#memo").val();
$("#coursename_msg").empty();
$("#teacherid_msg").empty();
$("#clazzid_msg").empty();
$("#credits_msg").empty();
$("#timelong_msg").empty();
$("#memo_msg").empty();
if (coursename == "" || coursename == null) {
	$("#coursename").after("<span id='coursename_msg' style='color: red'>课程名称不能为空</span>");
	return false;
}
if (teacherid == "" || teacherid == null) {
	$("#teacherid").after("<span id='teacherid_msg' style='color: red'>教师不能为空</span>");
	return false;
}
if (clazzid == "" || clazzid == null) {
	$("#clazzid").after("<span id='clazzid_msg' style='color: red'>班级不能为空</span>");
	return false;
}
if (credits == "" || credits == null) {
	$("#credits").after("<span id='credits_msg' style='color: red'>学分不能为空</span>");
	return false;
}
if (timelong == "" || timelong == null) {
	$("#timelong").after("<span id='timelong_msg' style='color: red'>学时不能为空</span>");
	return false;
}
if (memo == "" || memo == null) {
	$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#coursename_msg").empty();
$("#teacherid_msg").empty();
$("#clazzid_msg").empty();
$("#credits_msg").empty();
$("#timelong_msg").empty();
$("#memo_msg").empty();
});

});
