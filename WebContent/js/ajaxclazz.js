$(function() {
	$('#deptid').change(function(){
		var deptid = $("#deptid").val();
		var loc = $("#basepath").val();
		var url = loc+"ajax/getClazz.action?id=" + deptid;
		$.ajax({
			type : "get",
			url : url,
			dataType : "json",
			success : function(json) {
				var clazzid = json.clazzid.replace("[", "").replace("]", "").split(",");
				var clazzname = json.clazzname.replace("[", "").replace("]", "").split(",");
				var myOptions = '<option value="">---请选择班级---</option>';
				for (var i = 0; i < clazzid.length; i++) {
					myOptions += '<option value="' + clazzid[i] + '">' + clazzname[i] + '</option>';
				}
				$("#clazzid").empty(); 
				$("#clazzid").html(myOptions);
			},
			error : function() {
				alert("ajax请求发生错误3");
			}
		});
	});
});