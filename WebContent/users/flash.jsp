<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- NEWS -->
<script type="text/javascript" src="themes/nzblue/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="themes/nzblue/js/koala.min.1.5.js"></script>
<div id="fsD1" class="focus" style="margin-left: 0px">
	<div id="D1pic1" class="fPic">
		<c:forEach items="${favList}" var="article">
			<div class="fcon" style="display: none;">
				<a target="_blank" href="index/read.action?id=${article.articleid }"><img src="${article.image }"
					alt="${article.title }" border="0" style="opacity: 1;"></a> <span class="shadow"><a target="_blank"
					href="index/read.action?id=${article.articleid }">${article.title }</a></span>
			</div>
		</c:forEach>
	</div>
	<div class="fbg">
		<div class="D1fBt" id="D1fBt">
			<c:forEach items="${favList}" var="article">
				<a href="javascript:void(0)" hidefocus="true" target="_self" class=""><i>1</i></a>
			</c:forEach>
		</div>
	</div>
	<span class="prev"></span> <span class="next"></span>
</div>

<script type="text/javascript">
	Qfast.add('widgets', {
		path : "themes/nzblue/js/terminator2.2.min.js",
		type : "js",
		requires : [ 'fx' ]
	});
	Qfast(false, 'widgets', function() {
		K.tabs({
			id : 'fsD1', //焦点图包裹id  
			conId : "D1pic1", //** 大图域包裹id  
			tabId : "D1fBt",
			tabTn : "a",
			conCn : '.fcon', //** 大图域配置class       
			auto : 1, //自动播放 1或0
			effect : 'fade', //效果配置
			eType : 'click', //** 鼠标事件
			pageBt : true,//是否有按钮切换页码
			bns : [ '.prev', '.next' ],//** 前后按钮配置class                          
			interval : 3000
		//** 停顿时间  
		})
	})
</script>
<!--left -->