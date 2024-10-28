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
<SCRIPT LANGUAGE="JavaScript">
	var maxtime = 60 * 45 //一个小时，按秒计算，自己调整!  
	function CountDown() {
		if (maxtime >= 0) {
			minutes = Math.floor(maxtime / 60);
			seconds = Math.floor(maxtime % 60);
			msg = "考试剩余时间:" + minutes + "分" + seconds + "秒";
			document.all["timer"].innerHTML = msg;
			if (maxtime == 5 * 60)
				alert('注意，还有5分钟!');
			--maxtime;
		} else {
			clearInterval(timer);
			alert("时间到，结束!");
			examform.submit();
		}
	}
	timer = setInterval("CountDown()", 1000);
</SCRIPT>
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
						&nbsp;&nbsp;您的位置：<a href="index/index.action">首页</a>&nbsp;&gt;&nbsp;在线测试
					</div>

					<div
						style="font-size: 36px; line-height: 50px; color: #000000; text-align: center; width: 90%; padding-top: 25px; padding-bottom: 25px; font-weight: bold; font-family: 微软雅黑;">
						<div id="timer" style="color: red; font-size: large;"></div>
					</div>
					<div
						style="margin-top: 20px; font-size: 14px; color: #333333; background-color: #F5F5F5; height: 30px; width: 100%; margin-bottom: 20px; line-height: 30px; text-align: center;">
						&nbsp;</div>
					<form action="index/test.action" method="post" name="examform">
						<table width="99%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
							<tr>
								<td bgcolor="#ffffff" colspan="5">&nbsp;单选题</td>
							</tr>
							<c:forEach items="${singleList }" varStatus="st" var="x">
								<tr>
									<td bgcolor="#ffffff" colspan="5">${st.index + 1}、${x.question }</td>
								</tr>
								<tr>
									<td bgcolor="#ffffff">A <input type="radio" name="single${x.singleid}" value="A" checked="checked" id="single" />${x.answera }</td>
									<td bgcolor="#ffffff">B <input type="radio" name="single${x.singleid}" value="B" id="single" />${x.answerb }</td>
									<td bgcolor="#ffffff">C <input type="radio" name="single${x.singleid}" value="C" id="single" />${x.answerc }</td>
									<td bgcolor="#ffffff" colspan="2">D <input type="radio" name="single${x.singleid}" value="D" id="single" />${x.answerd }</td>
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
									<td bgcolor="#ffffff">A<input type="checkbox" name="mulit${x.mulitid}" checked="checked" value="A" id="mulit" />${x.answera }</td>
									<td bgcolor="#ffffff">B<input type="checkbox" name="mulit${x.mulitid}" value="B" id="mulit" /> ${x.answerb }
									</td>
									<td bgcolor="#ffffff">C<input type="checkbox" name="mulit${x.mulitid}" value="C" id="mulit" /> ${x.answerc }
									</td>
									<td bgcolor="#ffffff">D<input type="checkbox" name="mulit${x.mulitid}" value="D" id="mulit" /> ${x.answerd }
									</td>
									<td bgcolor="#ffffff">E<input type="checkbox" name="mulit${x.mulitid}" value="E" id="mulit" /> ${x.answere }
									</td>
								</tr>
							</c:forEach>
							<tr>
								<td bgcolor="#ffffff" colspan="5">&nbsp;填空题</td>
							</tr>
							<c:forEach items="${fillinList }" varStatus="st" var="x">
								<tr>
									<td bgcolor="#ffffff" colspan="5">${st.index + 1}、${x.question }</td>
								</tr>
								<tr>
									<td bgcolor="#ffffff" colspan="5"><input type="text" name="fillin${x.fillinid}" style="width: 260px" /></td>
								</tr>
							</c:forEach>
							<tr>
								<td bgcolor="#ffffff" colspan="5" align="center"><input type="hidden" name="singleid" value="${singleid}" /> <input
									type="hidden" name="mulitid" value="${mulitid }" /> <input type="hidden" name="fillinid" value="${fillinid }" /> <input
									type="submit" value="提交试卷" name="button" /></td>
							</tr>
						</table>
					</form>
					<div style="text-align: center; width: 90%; margin-top: 20px; margin-bottom: 20px;"></div>
				</td>
			</tr>
		</table>
		<div style="text-align: center; margin: auto; height: 60px; width: 90%;"></div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

