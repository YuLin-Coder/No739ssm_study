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
<script type="text/javascript" src="themes/nzblue/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="js/users.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
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
						&nbsp;&nbsp;您的位置：<a href="index/index.action">首页</a>&nbsp;&gt;&nbsp;个人信息
					</div>
					<table height="30" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td></td>
						</tr>
					</table>
					<form action="index/personal.action" name="myform" method="post">
						<table width="56%" border="0" cellpadding="5" cellspacing="1" bgcolor="#E0EDB7">
							<tr>
								<td height="30" colspan="2" align="center" background="themes/nzblue/images/nzcms/list_bg.gif" class="white14B">个人信息</td>
							</tr>
							<tr>
								<td width="80" height="50" align="right" bgcolor="#FFFFFF">账号：</td>
								<td bgcolor="#FFFFFF">${sessionScope.users.username }<input type="hidden" name="username" id="username"
									value="${sessionScope.users.username }" /> <input type="hidden" name="password" id="password"
									value="${sessionScope.users.password }" /> <input type="hidden" name="usersid" id="usersid" value="${sessionScope.users.usersid }" />
									<input type="hidden" name="regdate" id="regdate" value="${sessionScope.users.regdate }" /><input type="hidden" name="clazzid"
									id="clazzid" value="${sessionScope.users.clazzid }" /><input type="hidden" name="deptid" id="deptid"
									value="${sessionScope.users.deptid }" /><input type="hidden" name="status" id="status" value="${sessionScope.users.status }" />
								</td>
							</tr>
							<tr>
								<td width="80" height="50" align="right" bgcolor="#FFFFFF">姓名：</td>
								<td bgcolor="#FFFFFF"><input type="text" name="realname" style="width: 260px; height: 30px" id="realname"
									value="${sessionScope.users.realname }" /></td>
							</tr>
							<tr>
								<td height="50" align="right" bgcolor="#FFFFFF">性别：</td>
								<td bgcolor="#FFFFFF"><input type="radio" name="sex" id="sex" value="男" ${users.sex == "男"?"checked":""} />男 &nbsp;&nbsp; <input
									type="radio" name="sex" id="sex" value="女" ${users.sex == "女"?"checked":""} />女</td>
							</tr>
							<tr>
								<td height="50" align="right" bgcolor="#FFFFFF">出生日期：</td>
								<td bgcolor="#FFFFFF"><input type="text" name="birthday" onclick="WdatePicker()" readonly="readonly"
									style="width: 260px; height: 30px" id="birthday" value="${sessionScope.users.birthday }" /></td>
							</tr>
							<tr>
								<td height="50" align="right" bgcolor="#FFFFFF">院系：</td>
								<td bgcolor="#FFFFFF">${sessionScope.users.deptname }</td>
							</tr>
							<tr>
								<td height="50" align="right" bgcolor="#FFFFFF">班级：</td>
								<td bgcolor="#FFFFFF">${sessionScope.users.clazzname }</td>
							</tr>
							<tr>
								<td height="50" align="right" bgcolor="#FFFFFF">联系方式：</td>
								<td bgcolor="#FFFFFF"><input type="text" name="contact" style="width: 260px; height: 30px" id="contact"
									value="${sessionScope.users.contact }" /></td>
							</tr>
							<tr>
								<td height="50" align="right" bgcolor="#FFFFFF">头像：</td>
								<td bgcolor="#FFFFFF"><input type="text" style="width: 260px; height: 30px" name="image" id="image" onclick="selimage();"
									value="${sessionScope.users.image }" readonly="readonly" /></td>
							</tr>
							<tr>
								<td bgcolor="#FFFFFF" colspan="2" align="center"><label> <input type="submit" name="Submit" value="提交" />
										&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" name="Submit2" value="重置" />
								</label></td>
							</tr>
						</table>
					</form>
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

