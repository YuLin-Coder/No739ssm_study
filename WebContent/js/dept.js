$(function() {

$("#deptname").blur(
		function() {
			$("#deptname_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#deptname").after("<span id='deptname_msg' style='color: red'>院系名称不能为空</span>");
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
var deptname = $("#deptname").val();
var memo = $("#memo").val();
$("#deptname_msg").empty();
$("#memo_msg").empty();
if (deptname == "" || deptname == null) {
	$("#deptname").after("<span id='deptname_msg' style='color: red'>院系名称不能为空</span>");
	return false;
}
if (memo == "" || memo == null) {
	$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#deptname_msg").empty();
$("#memo_msg").empty();
});

});
