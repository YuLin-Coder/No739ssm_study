<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
		<table class="table1200" border="0" align="center" cellpadding="1" cellspacing="0" bordercolor="#FFFFFF" bgcolor="#FFFFFF"
			style="margin-bottom: 20px;">
			<tr>
				<td align="center" valign="top" bgcolor="#FFFFFF" class="bg_qc">
					<div
						style="font-size: 14px; background-color: #F5F5F5; height: 30px; width: 100%; line-height: 30px; text-align: left; font-family: 宋体;">
						&nbsp;&nbsp;您的位置：<a href="index/index.action">首页</a> &nbsp;&gt;&nbsp;${vedio.vedioname }
					</div>

					<div
						style="font-size: 36px; line-height: 50px; color: #000000; text-align: center; width: 90%; padding-top: 25px; padding-bottom: 25px; font-weight: bold; font-family: 微软雅黑;">
						${vedio.vedioname }</div>
					<div
						style="margin-top: 20px; font-size: 14px; color: #333333; background-color: #F5F5F5; height: 30px; width: 100%; margin-bottom: 20px; line-height: 30px; text-align: center;">
						&nbsp;&nbsp;课程：${vedio.coursename }&nbsp;&nbsp;‖&nbsp;&nbsp;章节：${vedio.sectionxname }&nbsp;&nbsp;‖&nbsp;&nbsp;查看${vedio.hits }次</div> <video
						controls autoplay class="bg_qc">
						<source src="${vedio.image}" type="video/mp4">
					</video>
					<div
						style="text-align: left; margin: auto; width: 96%; line-height: 30px; font-size: 16px; color: #333333; fixed; word-break: break-all; fixed: word-break:                                         
	break-all;"></div>
					<div style="text-align: center; width: 90%; margin-top: 20px; margin-bottom: 20px;"></div>
				</td>
			</tr>
		</table>
		<link href="themes/dangdang/style.css" rel="stylesheet" type="text/css" />
		<div id="ECS_COMMENT">
			<div class="box">
				<div class="box_1">
					<h3>
						<span class="text">用户留言</span>(共<font class="f1">${tnum }</font>条留言)
					</h3>
					<div class="boxCenterList clearfix" style="height: 1%;">
						<ul class="comments">
							<c:forEach items="${topicList}" var="topic">
								<li class="word"><font class="f2">${topic.username } </font> <font class="f3">(${topic.addtime }) </font> <br />
									<p>${topic.contents }</p> <c:if test="${topic.status eq '已回复' }">
										<p>教师回复${topic.reps }</p>
									</c:if></li>
							</c:forEach>
						</ul>
						<div class="blank5"></div>
						<div class="commentsList">
							<form action="index/addTopic.action" method="post" name="commentForm" id="commentForm">
								<table width="710" border="0" cellspacing="5" cellpadding="0">
									<tr>
										<td align="right" valign="top">留言内容：</td>
										<td><textarea name="contents" class="inputBorder" style="height: 150px; width: 99%;"></textarea> <input type="hidden"
											name="vedioid" value="${vedio.vedioid }" /></td>
									</tr>
									<tr>
										<td colspan="2"><input type="submit" value="留言" style="margin-right: 8px;" /></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div style="text-align: center; margin: auto; height: 60px; width: 90%;"></div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

