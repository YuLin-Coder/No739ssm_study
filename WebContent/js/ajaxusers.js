$(function() {
	$('#courseid').change(function(){
		var courseid = $("#courseid").val();
		var loc = $("#basepath").val();
		var url = loc+"ajax/getUsers.action?id=" + courseid;
		$.ajax({
			type : "get",
			url : url,
			dataType : "json",
			success : function(json) {
				var usersid = json.usersid.replace("[", "").replace("]", "").split(",");
				var username = json.username.replace("[", "").replace("]", "").split(",");
				var myOptions = '<option value="">---请选择学生---</option>';
				for (var i = 0; i < usersid.length; i++) {
					myOptions += '<option value="' + usersid[i] + '">' + username[i] + '</option>';
				}
				$("#usersid").empty(); 
				$("#usersid").html(myOptions);
			},
			error : function() {
				alert("ajax请求发生错误3");
			}
		});
	});
});