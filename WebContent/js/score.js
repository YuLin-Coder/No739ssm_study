$(function() {

$("#courseid").blur(
		function() {
			$("#courseid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#courseid").after("<span id='courseid_msg' style='color: red'>课程不能为空</span>");
			}
	});

$("#usersid").blur(
		function() {
			$("#usersid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#usersid").after("<span id='usersid_msg' style='color: red'>学生不能为空</span>");
			}
	});

$("#normalx").blur(
		function() {
			$("#normalx_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#normalx").after("<span id='normalx_msg' style='color: red'>平时成绩不能为空</span>");
			}
	});

$("#exam").blur(
		function() {
			$("#exam_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#exam").after("<span id='exam_msg' style='color: red'>期末成绩不能为空</span>");
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
var courseid = $("#courseid").val();
var usersid = $("#usersid").val();
var normalx = $("#normalx").val();
var exam = $("#exam").val();
var memo = $("#memo").val();
$("#courseid_msg").empty();
$("#usersid_msg").empty();
$("#normalx_msg").empty();
$("#exam_msg").empty();
$("#memo_msg").empty();
if (courseid == "" || courseid == null) {
	$("#courseid").after("<span id='courseid_msg' style='color: red'>课程不能为空</span>");
	return false;
}
if (usersid == "" || usersid == null) {
	$("#usersid").after("<span id='usersid_msg' style='color: red'>学生不能为空</span>");
	return false;
}
if (normalx == "" || normalx == null) {
	$("#normalx").after("<span id='normalx_msg' style='color: red'>平时成绩不能为空</span>");
	return false;
}
if (exam == "" || exam == null) {
	$("#exam").after("<span id='exam_msg' style='color: red'>期末成绩不能为空</span>");
	return false;
}
if (memo == "" || memo == null) {
	$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#courseid_msg").empty();
$("#usersid_msg").empty();
$("#normalx_msg").empty();
$("#exam_msg").empty();
$("#memo_msg").empty();
});

});
