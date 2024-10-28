$(function() {

$("#sectionxname").blur(
		function() {
			$("#sectionxname_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#sectionxname").after("<span id='sectionxname_msg' style='color: red'>章节名不能为空</span>");
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

$("#memo").blur(
		function() {
			$("#memo_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
			}
	});







$('#sub').click(function(){
var sectionxname = $("#sectionxname").val();
var courseid = $("#courseid").val();
var memo = $("#memo").val();
$("#sectionxname_msg").empty();
$("#courseid_msg").empty();
$("#memo_msg").empty();
if (sectionxname == "" || sectionxname == null) {
	$("#sectionxname").after("<span id='sectionxname_msg' style='color: red'>章节名不能为空</span>");
	return false;
}
if (courseid == "" || courseid == null) {
	$("#courseid").after("<span id='courseid_msg' style='color: red'>课程不能为空</span>");
	return false;
}
if (memo == "" || memo == null) {
	$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#sectionxname_msg").empty();
$("#courseid_msg").empty();
$("#memo_msg").empty();
});

});
