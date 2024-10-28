$(function() {

$("#vedioname").blur(
		function() {
			$("#vedioname_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#vedioname").after("<span id='vedioname_msg' style='color: red'>标题不能为空</span>");
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

$("#image").blur(
		function() {
			$("#image_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#image").after("<span id='image_msg' style='color: red'>文件不能为空</span>");
			}
	});







$('#sub').click(function(){
var vedioname = $("#vedioname").val();
var courseid = $("#courseid").val();
var sectionxid = $("#sectionxid").val();
var image = $("#image").val();
$("#vedioname_msg").empty();
$("#courseid_msg").empty();
$("#sectionxid_msg").empty();
$("#image_msg").empty();
if (vedioname == "" || vedioname == null) {
	$("#vedioname").after("<span id='vedioname_msg' style='color: red'>标题不能为空</span>");
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
if (image == "" || image == null) {
	$("#image").after("<span id='image_msg' style='color: red'>文件不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#vedioname_msg").empty();
$("#courseid_msg").empty();
$("#sectionxid_msg").empty();
$("#image_msg").empty();
});

});
