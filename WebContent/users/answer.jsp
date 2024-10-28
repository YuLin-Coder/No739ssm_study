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
						&nbsp;&nbsp;您的位置：<a href="index/index.action">首页</a>&nbsp;&gt;&nbsp;在线结果
					</div>

					<div
						style="font-size: 36px; line-height: 50px; color: #000000; text-align: center; width: 90%; padding-top: 25px; padding-bottom: 25px; font-weight: bold; font-family: 微软雅黑;">
						<div id="timer" style="color: red; font-size: large;"></div>
					</div>
					<div
						style="margin-top: 20px; font-size: 14px; color: #333333; background-color: #F5F5F5; height: 30px; width: 100%; margin-bottom: 20px; line-height: 30px; text-align: center;">
						&nbsp;</div>
					<table width="95%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td align="left">
								<div class="z" id="z">
									<table width="99%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
										<tr>
											<td bgcolor="#ffffff" colspan="5">&nbsp;单选题</td>
										</tr>
										<c:forEach items="${singleList }" varStatus="st" var="x">
											<tr>
												<td bgcolor="#ffffff" colspan="5">${st.index + 1}、${x.question }</td>
											</tr>
											<tr>
												<td bgcolor="#ffffff">A ${x.answera }</td>
												<td bgcolor="#ffffff">B ${x.answerb }</td>
												<td bgcolor="#ffffff">C ${x.answerc }</td>
												<td bgcolor="#ffffff" colspan="2">D ${x.answerd }</td>
											</tr>
											<tr>
												<td bgcolor="#ffffff" colspan="5">答案:${x.correct }</td>
											</tr>
										</c:forEach>
										<tr>
											<td bgcolor="#ffffff" colspan="5">&nbsp;多选题</td>
										</tr>
										<c:forEach items="${mulitList }" varStatus="st" var="x">
											<tr>
												<td bgcolor="#ffffff" colspan="5">${st.index + 1}、${x.question }</td>
											</tr>
											<tr>
												<td bgcolor="#ffffff">A ${x.answera }</td>
												<td bgcolor="#ffffff">B ${x.answerb }</td>
												<td bgcolor="#ffffff">C ${x.answerc }</td>
												<td bgcolor="#ffffff">D ${x.answerd }</td>
												<td bgcolor="#ffffff">E ${x.answere }</td>
											</tr>
											<tr>
												<td bgcolor="#ffffff" colspan="5">答案:${x.correct }</td>
											</tr>
										</c:forEach>
										<tr>
											<td bgcolor="#ffffff" colspan="5">&nbsp;判断题</td>
										</tr>
										<c:forEach items="${judgeList }" varStatus="st" var="x">
											<tr>
												<td bgcolor="#ffffff" colspan="5">${st.index + 1}、${x.question }</td>
											</tr>
											<tr>
												<td bgcolor="#ffffff" colspan="5">答案:${x.correct }</td>
											</tr>
										</c:forEach>
										<tr>
											<td bgcolor="#ffffff" colspan="5">&nbsp;填空题(${paper.fnum }分)</td>
										</tr>
										<c:forEach items="${fillinList }" varStatus="st" var="x">
											<tr>
												<td bgcolor="#ffffff" colspan="5">${st.index + 1}、${x.question }</td>
											</tr>
											<tr>
												<td bgcolor="#ffffff" colspan="5">答案:${x.correct }</td>
											</tr>
										</c:forEach>
									</table>
								</div>
							</td>
						</tr>
					</table>
					<div style="text-align: center; width: 90%; margin-top: 20px; margin-bottom: 20px;"></div>
				</td>
			</tr>
		</table>
		<div style="text-align: center; margin: auto; height: 60px; width: 90%;"></div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

