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
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<link href="themes/style.css" rel="stylesheet" type="text/css" />
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
						&nbsp;&nbsp;您的位置：<a href="index/index.action">首页</a>&nbsp;&gt;&nbsp;互动交流
					</div>
					<table cellspacing="0" cellpadding="0" width="100%" id="ajaxtable">
						<tbody style="table-layout: fixed;">
							<tr class="tr2">
								<td style="width: 62%" class="tac">文章</td>
								<td style="width: 10%" class="y-style">发布日期</td>
								<td style="width: 6%" class="y-style">点击数</td>
								<td style="width: 17%" class="y-style">回复数</td>
							</tr>
							<c:forEach items="${bbsList}" var="bbs">
								<tr align="center" class="tr3 t_one">
									<td style="text-align: left; padding-left: 8px" id="">
										<h3>
											<a href="index/readbbs.action?id=${bbs.bbsid }" title="标题：${bbs.title }"><font
												class="p14"> ${bbs.title }</font> </a>
										</h3>
									</td>
									<td class="tal y-style">
										<div class="f10">${bbs.addtime }</div> ${bbs.username }
									</td>
									<td class="tal f10 y-style">${bbs.hits }</td>
									<td class="tal y-style">${bbs.repnum }</td>
								</tr>
							</c:forEach>
							<tr>
								<td style="height: 8px"></td>
							</tr>
						</tbody>
					</table> <c:if test="${sessionScope.userid != null }">
						<form method="post" action="index/addbbs.action">
							<div class="t">
								<table cellpadding="0" cellspacing="0" align="center">
									<tbody>
										<tr>
											<td class="h" colspan="3"><b>发表帖子</b></td>
										</tr>
									</tbody>
									<tbody>
										<tr class="tr3 f_one">
											<th width="20%" class="t_one"><b>标题</b></th>
											<th><input class="input" name="title" id='title' size="60" value="" tabindex="1"
												style="font: 14px Tahoma; padding-left: 2px" /></th>
										</tr>
									</tbody>

									<tbody>
										<tr class="tr3 f_two">
											<th width="20%" class="t_one"><b>内容</b></th>
											<th colspan="2">
												<div class="wysiwyg" style="padding: 0x; border: 1px solid #DDDDDD; margin-bottom: 5px;">
													<textarea cols="80" id="contents" name="contents" rows="10">在此添加内容</textarea>
													<script type="text/javascript">
														CKEDITOR
																.replace(
																		'contents',
																		{
																			language : 'zh-cn'
																		});
													</script>
												</div>
											</th>
										</tr>
									</tbody>
								</table>
							</div>
							<div style="margin: 15px 0 15px 0; text-align: center;">
								<input class="btn" type="submit" value="提 交" name="Submit" tabindex="3" />
							</div>
						</form>
					</c:if>
				</td>
			</tr>
		</table>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

