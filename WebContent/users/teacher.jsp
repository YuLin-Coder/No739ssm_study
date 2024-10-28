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
	<!--dh-->
	<div id="box" style="width: 1200px;">
		<table class="table1200" border="0" align="center" cellpadding="0" cellspacing="15" bgcolor="#FFFFFF">
			<tr valign="top">
				<td align="center">
					<!--文章显示 -->
					<table width="98%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="list_title">
						<tr>
							<td width="150" align="center" class="list_title">教师信息</td>
							<td align="right"><a href="index/index.action">首页</a>&nbsp;&gt;&nbsp;&nbsp;教师信息</td>
						</tr>
					</table>
					<table height="20" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td></td>
						</tr>
					</table> <!--图片格式显示 -->
					<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FF9900">

						<c:forEach items="${teacherList}" var="teacher" varStatus="status">
							<c:if test="${status.count eq 1 || (status.count-1) % 4 eq 0}">
								<tr>
							</c:if>

							<td align="center" valign="top" whith="200"><table border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF"
									bgcolor="#FFFFFF">
									<tr>
										<td align="center" valign="middle" bgcolor="#FFFFFF"><a href="index/teacherDetail.action?id=${teacher.teacherid }"
											target="_blank"><img src="${teacher.image }" alt=" " width="250" height="200" border="0"></a></td>
									</tr>
								</table>
								<table width="250" border="0" cellpadding="0" cellspacing="0" style="margin-bottom: 10px;">
									<tr>
										<td height="40" align="center"><a href="index/teacherDetail.action?id=${teacher.teacherid }" target="_blank">${teacher.teachername }
										</a></td>
									</tr>
								</table> <br /></td>

							<c:if test="${status.count % 4 eq 0 || status.count eq 4}">
								</tr>
							</c:if>

						</c:forEach>



					</table>

					<table height="20" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td>${html }</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
