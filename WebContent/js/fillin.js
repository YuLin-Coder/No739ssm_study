$(function() {

$("#question").blur(
		function() {
			$("#question_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#question").after("<span id='question_msg' style='color: red'>题目不能为空</span>");
			}
	});

$("#correct").blur(
		function() {
			$("#correct_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#correct").after("<span id='correct_msg' style='color: red'>正确答案不能为空</span>");
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
				$("#parsing").after("<span id='parsing_msg' style='color: red'>解析不能为空</span>");
			}
	});







$('#sub').click(function(){
var question = $("#question").val();
var correct = $("#correct").val();
var courseid = $("#courseid").val();
var sectionxid = $("#sectionxid").val();
var parsing = $("#parsing").val();
$("#question_msg").empty();
$("#correct_msg").empty();
$("#courseid_msg").empty();
$("#sectionxid_msg").empty();
$("#parsing_msg").empty();
if (question == "" || question == null) {
	$("#question").after("<span id='question_msg' style='color: red'>题目不能为空</span>");
	return false;
}
if (correct == "" || correct == null) {
	$("#correct").after("<span id='correct_msg' style='color: red'>正确答案不能为空</span>");
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
	$("#parsing").after("<span id='parsing_msg' style='color: red'>解析不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#question_msg").empty();
$("#correct_msg").empty();
$("#courseid_msg").empty();
$("#sectionxid_msg").empty();
$("#parsing_msg").empty();
});

});
