<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<title>${title }</title>

</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<br>
	<div id="box" style="width: 1200px;">
		<table class="table1200" border="0" align="center" cellpadding="1" cellspacing="0" bordercolor="#FFFFFF"
			bgcolor="#FFFFFF" style="margin-bottom: 20px;">
			<tr>
				<td align="center" valign="top" bgcolor="#FFFFFF" class="bg_qc">
					<div
						style="font-size: 14px; background-color: #F5F5F5; height: 30px; width: 100%; line-height: 30px; text-align: left; font-family: 宋体;">
						&nbsp;&nbsp;您的位置：<a href="index/index.action">首页</a>&nbsp;&gt;&nbsp;<a
							href="index/article.action?id=${article.bannerid }">${article.bannername }</a>&nbsp;&gt;&nbsp;${article.title }
					</div>

					<div
						style="font-size: 36px; line-height: 50px; color: #000000; text-align: center; width: 90%; padding-top: 25px; padding-bottom: 25px; font-weight: bold; font-family: 微软雅黑;">
						${article.title }</div>
					<div
						style="margin-top: 20px; font-size: 14px; color: #333333; background-color: #F5F5F5; height: 30px; width: 100%; margin-bottom: 20px; line-height: 30px; text-align: center;">
						发稿作者：管理员 &nbsp;&nbsp;‖&nbsp;&nbsp;发布时间：${article.addtime }&nbsp;&nbsp;‖&nbsp;&nbsp;查看${article.hits }次</div> <img
					src="${article.image }" alt="点击看大图" border="0" class="bg_qc" />

					<div
						style="text-align: left; margin: auto; width: 96%; line-height: 30px; font-size: 16px; color: #333333; fixed; word-break: break-all; fixed: word-break:                
	break-all;">${article.contents }</div>
					<div style="text-align: center; width: 90%; margin-top: 20px; margin-bottom: 20px;"></div>
				</td>
			</tr>
		</table>
		<div style="text-align: center; margin: auto; height: 60px; width: 90%;">
			<input name="button" type="button" onclick="window.location='javascript:window.print()'" value="打印此页"
				style="height: 30px" id="tjx" /> &nbsp;&nbsp;&nbsp;&nbsp; <input name="button2" type="button"
				onclick="window.location='#'" value="返回顶部" style="height: 30px" id="tjx" /> &nbsp;&nbsp;&nbsp;&nbsp; <input
				name="button2" type="button" onclick="window.location='javascript:window.close();'" value="关闭窗口"
				style="height: 30px" id="tjx" />
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

