$(function() {
	$('#courseid').change(function(){
		var courseid = $("#courseid").val();
		var loc = $("#basepath").val();
		var url = loc+"ajax/getSectionx.action?id=" + courseid;
		$.ajax({
			type : "get",
			url : url,
			dataType : "json",
			success : function(json) {
				var sectionxid = json.sectionxid.replace("[", "").replace("]", "").split(",");
				var sectionxname = json.sectionxname.replace("[", "").replace("]", "").split(",");
				var myOptions = '<option value="">---请选择章节---</option>';
				for (var i = 0; i < sectionxid.length; i++) {
					myOptions += '<option value="' + sectionxid[i] + '">' + sectionxname[i] + '</option>';
				}
				$("#sectionxid").empty(); 
				$("#sectionxid").html(myOptions);
			},
			error : function() {
				alert("ajax请求发生错误3");
			}
		});
	});
});