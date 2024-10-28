$(function() {

$("#usersid").blur(
		function() {
			$("#usersid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#usersid").after("<span id='usersid_msg' style='color: red'>学生不能为空</span>");
			}
	});

$("#courseid").blur(
		function() {
			$("#courseid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#courseid").after("<span id='courseid_msg' style='color: red'>课程不能为空</span>");
			}
	});

$("#sectionxid").blur(
		function() {
			$("#sectionxid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#sectionxid").after("<span id='sectionxid_msg' style='color: red'>章节不能为空</span>");
			}
	});

$("#quections").blur(
		function() {
			$("#quections_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#quections").after("<span id='quections_msg' style='color: red'>问题不能为空</span>");
			}
	});

$("#parsing").blur(
		function() {
			$("#parsing_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#parsing").after("<span id='parsing_msg' style='color: red'>解析不能为空</span>");
			}
	});







$('#sub').click(function(){
var usersid = $("#usersid").val();
var courseid = $("#courseid").val();
var sectionxid = $("#sectionxid").val();
var quections = $("#quections").val();
var parsing = $("#parsing").val();
$("#usersid_msg").empty();
$("#courseid_msg").empty();
$("#sectionxid_msg").empty();
$("#quections_msg").empty();
$("#parsing_msg").empty();
if (usersid == "" || usersid == null) {
	$("#usersid").after("<span id='usersid_msg' style='color: red'>学生不能为空</span>");
	return false;
}
if (courseid == "" || courseid == null) {
	$("#courseid").after("<span id='courseid_msg' style='color: red'>课程不能为空</span>");
	return false;
}
if (sectionxid == "" || sectionxid == null) {
	$("#sectionxid").after("<span id='sectionxid_msg' style='color: red'>章节不能为空</span>");
	return false;
}
if (quections == "" || quections == null) {
	$("#quections").after("<span id='quections_msg' style='color: red'>问题不能为空</span>");
	return false;
}
if (parsing == "" || parsing == null) {
	$("#parsing").after("<span id='parsing_msg' style='color: red'>解析不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#usersid_msg").empty();
$("#courseid_msg").empty();
$("#sectionxid_msg").empty();
$("#quections_msg").empty();
$("#parsing_msg").empty();
});

});
