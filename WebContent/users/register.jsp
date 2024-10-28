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
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="js/ajaxclazz.js" charset="utf-8"></script>
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
						&nbsp;&nbsp;您的位置：<a href="index/index.action">首页</a>&nbsp;&gt;&nbsp;学生注册
					</div>
					<table height="30" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td></td>
						</tr>
					</table>
					<form action="index/register.action" method="post" name="myform">
						<table width="56%" border="0" cellpadding="5" cellspacing="1" bgcolor="#E0EDB7">
							<tr>
								<td height="30" colspan="2" align="center" background="themes/nzblue/images/nzcms/list_bg.gif" class="white14B">学生注册</td>
							</tr>
							<tr>
								<td width="80" height="50" align="right" bgcolor="#FFFFFF">用户账号：</td>
								<td bgcolor="#FFFFFF"><input type="text" name="username" style="width: 260px; height: 30px" id="username" placeholder="请输入用户账号" /></td>
							</tr>
							<tr>
								<td height="50" align="right" bgcolor="#FFFFFF">用户密码：</td>
								<td bgcolor="#FFFFFF"><input type="password" name="password" style="width: 260px; height: 30px" id="password"
									placeholder="请输入用户密码" /></td>
							</tr>
							<tr>
								<td width="80" height="50" align="right" bgcolor="#FFFFFF">用户姓名：</td>
								<td bgcolor="#FFFFFF"><input type="text" name="realname" style="width: 260px; height: 30px" id="realname" placeholder="请输入用户姓名" /></td>
							</tr>
							<tr>
								<td height="50" align="right" bgcolor="#FFFFFF">性别：</td>
								<td bgcolor="#FFFFFF"><input type="radio" name="sex" id="sex" value="男" checked="checked" />男 &nbsp;&nbsp; <input type="radio"
									name="sex" id="sex" value="女" />女</td>
							</tr>
							<tr>
								<td height="50" align="right" bgcolor="#FFFFFF">出生日期：</td>
								<td bgcolor="#FFFFFF"><input type="text" name="birthday" onclick="WdatePicker()" readonly="readonly"
									style="width: 260px; height: 30px" id="birthday" placeholder="请输入出生日期" /></td>
							</tr>
							<tr>
								<td height="50" align="right" bgcolor="#FFFFFF">院系：</td>
								<td bgcolor="#FFFFFF"><select name="deptid" style="width: 260px; height: 30px" id="deptid"><option value="">---请选择院系---</option>
										<c:forEach items="${deptList}" var="dept">
											<option value="${dept.deptid}">${dept.deptname }</option>
										</c:forEach>
								</select></td>
							</tr>
							<tr>
								<td height="50" align="right" bgcolor="#FFFFFF">班级：</td>
								<td bgcolor="#FFFFFF"><select name="clazzid" style="width: 260px; height: 30px" id="clazzid"><option value="">---请选择班级---</option></select>
								</td>
							</tr>
							<tr>
								<td height="50" align="right" bgcolor="#FFFFFF">联系方式：</td>
								<td bgcolor="#FFFFFF"><input type="text" name="contact" style="width: 260px; height: 30px" id="contact" placeholder="请输入联系方式" /></td>
							</tr>
							<tr>
								<td height="50" align="right" bgcolor="#FFFFFF">头像：</td>
								<td bgcolor="#FFFFFF"><input type="text" style="width: 260px; height: 30px" name="image" id="image" onclick="selimage();"
									placeholder="请选择图片" readonly="readonly" /></td>
							</tr>
							<tr>
								<td bgcolor="#FFFFFF" colspan="2" align="center"><input type="hidden" id="basepath" value="<%=basePath%>" />
								<input type="hidden" name="status" id="status" value="正常" /> <input
									type="submit" id="sub" value="提交" /> &nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" id="res" value="重置" /></td>
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

