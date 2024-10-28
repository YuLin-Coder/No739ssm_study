<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎使用在线学习系统</title>
<link rel="stylesheet" type="text/css" href="h-ui/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="h-ui/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="h-ui/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="h-ui/h-ui.admin/css/style.css" />
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="h-ui/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="h-ui/h-ui.admin/js/H-ui.admin.js"></script>
<script type="text/javascript" src="js/single.js" charset="utf-8"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>单选题管理 <span class="c-gray en">&gt;</span> 编辑单选题<a
			class="btn btn-success radius r" style="line-height: 1.6em; margin-top: 3px" href="single/getSingleById.action?id=${single.singleid }"
			title="刷新"> <i class="Hui-iconfont">&#xe68f;</i></a> &nbsp;&nbsp; &nbsp;<a class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px" href="single/getAllSingle.action" title="返回"> <i class="Hui-iconfont">&#xe66b;</i></a>
	</nav>
	<article class="page-container">
		<form class="form form-horizontal" id="form-article-add" action="single/updateSingle.action" name="myform" method="post">
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">问题</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="question" class="input-text" id="question" value="${single.question}" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">答案A</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="answera" class="input-text" id="answera" value="${single.answera}" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">答案B</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="answerb" class="input-text" id="answerb" value="${single.answerb}" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">答案C</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="answerc" class="input-text" id="answerc" value="${single.answerc}" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">答案D</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="answerd" class="input-text" id="answerd" value="${single.answerd}" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">正确答案</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="radio" name="correct" id="correct" value="A" ${single.correct == "A"?"checked":""} />A&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="correct" id="correct" value="B" ${single.correct == "B"?"checked":""}/>B&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="correct" id="correct" value="C" ${single.correct == "C"?"checked":""}/>C&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="correct" id="correct" value="D" ${single.correct == "D"?"checked":""}/>D
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">课程</label>
				<div class="formControls col-xs-8 col-sm-9">
					<span class="select-box"><select name="courseid" class="select" id="courseid"><c:forEach items="${courseList}"
								var="course">
								<option value="${course.courseid}" ${course.courseid == single.courseid?"selected":"" }>${course.coursename }</option>
							</c:forEach></select></span>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">章节</label>
				<div class="formControls col-xs-8 col-sm-9">
					<span class="select-box"><select name="sectionxid" class="select" id="sectionxid"><c:forEach items="${sectionxList}"
								var="sectionx">
								<option value="${sectionx.sectionxid}" ${sectionx.sectionxid == single.sectionxid?"selected":"" }>${sectionx.sectionxname }</option>
							</c:forEach></select></span>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">题目解析</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="parsing" class="input-text" id="parsing" value="${single.parsing}" />
				</div>
			</div>
			<div class="row cl">
				<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
					<input type="hidden" name="singleid" id="singleid" value="${single.singleid}" /><input type="hidden" name="addtime" id="addtime"
						value="${single.addtime}" /> <input type="hidden" id="basepath" value="<%=basePath%>" />
					<button id="sub" class="btn btn-secondary radius" type="submit">
						<i class="Hui-iconfont">&#xe632;</i>提交保存
					</button>
					<button id="res" class="btn btn-default radius" type="reset">
						<i class="Hui-iconfont">&#xe68f;</i>取消重置
					</button>
				</div>
			</div>
		</form>
	</article>
</body>
</html>


