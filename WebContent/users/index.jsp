<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

	<div>
		<iframe src="users/home_pic.jsp" name="sina_roll" width="100%" marginwidth="0" height="380" marginheight="0"
			scrolling="No" frameborder="NO" id="sina_roll" border="0"></iframe>
	</div>
	<!--大图close -->
	<div id="indexbox">
		<div id="index_a">
			<div class="title-left" style="width: 1200px;">
				<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
					<tr>
						<td height="35" align="center" class="kklist_news">置顶新闻</td>
						<td align="right" class="kklist_news2">&nbsp;</td>
					</tr>
				</table>
			</div>
			<!--left -->
			<div class="news-left">
				<jsp:include page="flash.jsp"></jsp:include>
			</div>
			<!--right -->
			<div class="news-center" style="width: 730px;">
				<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="35" height="25" align="center" valign="top" background="themes/nzblue/images/123.gif">&nbsp;</td>
						<td align="center" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
								<c:forEach items="${topList}" var="article">
									<tr>
										<td height="26" align="left" valign="middle"><a href="index/read.action?id=${article.articleid }" target="_blank" title="">${article.title }</a></td>
										<td width="175" align="right" valign="middle">${article.addtime }</td>
									</tr>
								</c:forEach>
							</table></td>
					</tr>
				</table>
			</div>
		</div>
		<!-- news-->
		<div id="index_news_box">
			<div id="news_left" style="width: 1200px;">
				<!-- news-->
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<c:forEach items="${frontList}" var="article" varStatus="status">
							<c:if test="${status.count eq 1 || (status.count-1) % 2 eq 0}">
								<tr>
							</c:if>
							<td align="left" valign="top"><table width="580" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
									<tr>
										<td align="center" class="kklist_news">${article.bannername }</td>
										<td align="right" class="kklist_news2"><a href="index/article.action?id=${article.bannerid }"> 更多+</a>&nbsp;&nbsp;</td>
									</tr>
								</table>
								<table width="580" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="margin-bottom: 20px;">
									<tr>
										<td align="center" valign="top"><c:forEach items="${article.articleList}" var="a">
												<table width="98%" height="24" border="0" align="center" cellpadding="0" cellspacing="0" onMouseOver="this.bgColor='#f5f5f5';"
													onMouseOut="this.bgColor='#FFFFFF';" bgcolor="#ffffff">
													<tr>
														<td height="30" align="left" valign="middle">&nbsp;·&nbsp; <a href="index/read.action?id=${a.articleid }" target="_blank">${a.title }
														</a>
														</td>
														<td width="170" align="right" valign="middle">${a.addtime }</td>
													</tr>
												</table>
											</c:forEach></td>
									</tr>
								</table></td>
							<c:if test="${status.count % 2 eq 0 || status.count eq 2}">
					</tr>
					</c:if>
					</c:forEach>
					<tr>
					</tr>
				</table>
			</div>
			<!-- news-->
		</div>
		<!-- news-->
		<div class="news_Clear"></div>
		<!-- pic-->
		<div class="news_Clear"></div>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

