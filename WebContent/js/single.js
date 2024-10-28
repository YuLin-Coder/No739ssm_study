$(function() {

$("#question").blur(
		function() {
			$("#question_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#question").after("<span id='question_msg' style='color: red'>问题不能为空</span>");
			}
	});

$("#answera").blur(
		function() {
			$("#answera_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#answera").after("<span id='answera_msg' style='color: red'>答案A不能为空</span>");
			}
	});

$("#answerb").blur(
		function() {
			$("#answerb_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#answerb").after("<span id='answerb_msg' style='color: red'>答案B不能为空</span>");
			}
	});

$("#answerc").blur(
		function() {
			$("#answerc_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#answerc").after("<span id='answerc_msg' style='color: red'>答案C不能为空</span>");
			}
	});

$("#answerd").blur(
		function() {
			$("#answerd_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#answerd").after("<span id='answerd_msg' style='color: red'>答案D不能为空</span>");
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

$("#parsing").blur(
		function() {
			$("#parsing_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#parsing").after("<span id='parsing_msg' style='color: red'>题目解析不能为空</span>");
			}
	});







$('#sub').click(function(){
var question = $("#question").val();
var answera = $("#answera").val();
var answerb = $("#answerb").val();
var answerc = $("#answerc").val();
var answerd = $("#answerd").val();
var courseid = $("#courseid").val();
var sectionxid = $("#sectionxid").val();
var parsing = $("#parsing").val();
$("#question_msg").empty();
$("#answera_msg").empty();
$("#answerb_msg").empty();
$("#answerc_msg").empty();
$("#answerd_msg").empty();
$("#courseid_msg").empty();
$("#sectionxid_msg").empty();
$("#parsing_msg").empty();
if (question == "" || question == null) {
	$("#question").after("<span id='question_msg' style='color: red'>问题不能为空</span>");
	return false;
}
if (answera == "" || answera == null) {
	$("#answera").after("<span id='answera_msg' style='color: red'>答案A不能为空</span>");
	return false;
}
if (answerb == "" || answerb == null) {
	$("#answerb").after("<span id='answerb_msg' style='color: red'>答案B不能为空</span>");
	return false;
}
if (answerc == "" || answerc == null) {
	$("#answerc").after("<span id='answerc_msg' style='color: red'>答案C不能为空</span>");
	return false;
}
if (answerd == "" || answerd == null) {
	$("#answerd").after("<span id='answerd_msg' style='color: red'>答案D不能为空</span>");
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
if (parsing == "" || parsing == null) {
	$("#parsing").after("<span id='parsing_msg' style='color: red'>题目解析不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#question_msg").empty();
$("#answera_msg").empty();
$("#answerb_msg").empty();
$("#answerc_msg").empty();
$("#answerd_msg").empty();
$("#courseid_msg").empty();
$("#sectionxid_msg").empty();
$("#parsing_msg").empty();
});

});
