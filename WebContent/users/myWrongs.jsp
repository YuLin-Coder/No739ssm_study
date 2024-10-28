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
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/pwd.js" charset="utf-8"></script>
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
						&nbsp;&nbsp;您的位置：<a href="index/index.action">首页</a>&nbsp;&gt;&nbsp;我的错题集
					</div>
					<table height="30" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td></td>
						</tr>
					</table>
					<table width="95%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td align="left">
								<div class="z" id="z">
									<table width="99%" border="0" cellpadding="5" cellspacing="1" bgcolor="#E0EDB7">
										<tr>
											<td height="30" colspan="9" align="left" background="themes/nzblue/images/nzcms/list_bg.gif" class="white14B">我的错题集</td>
										</tr>
										<tr>
											<td align="center" bgcolor="#FFFFFF">学生</td>
											<td align="center" bgcolor="#FFFFFF">课程</td>
											<td align="center" bgcolor="#FFFFFF">章节</td>
											<td align="center" bgcolor="#FFFFFF">问题</td>
											<td align="center" bgcolor="#FFFFFF">解析</td>
											<td align="center" bgcolor="#FFFFFF">日期</td>
											<td align="center" bgcolor="#FFFFFF">操作</td>
										</tr>
										<c:forEach items="${wrongsList}" var="wrongs">
											<tr align="center" bgcolor="#FFFFFF">
												<td class="center">${wrongs.realname}</td>
												<td class="center">${wrongs.coursename}</td>
												<td class="center">${wrongs.sectionxname}</td>
												<td class="center">${wrongs.quections}</td>
												<td class="center">${wrongs.parsing}</td>
												<td class="center">${wrongs.addtime}</td>
												<td class="center"><a href="index/deleteWrongs.action?id=${wrongs.wrongsid }"
													onclick="{if(confirm('确定要删除吗?')){return true;}return false;}">移除</a></td>
											</tr>
										</c:forEach>
									</table>
								</div>
							</td>
						</tr>
					</table>
					<table height="20" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td>${html }</td>
						</tr>
					</table>
					<table height="50" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

