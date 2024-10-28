<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	String role = (String) session.getAttribute("role");
	if ("管理员".equals(role)) {
%>
<aside class="Hui-aside">
	<div class="menu_dropdown bk_2">

		<dl id="menu-admin">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>管理员信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="admin/createAdmin.action" data-title="新增管理员" href="javascript:void(0)">新增管理员信息</a></li>
					<li><a data-href="admin/getAllAdmin.action" data-title="管理员列表" href="javascript:void(0)">管理员信息列表</a></li>
					<li><a data-href="admin/queryAdminByCond.action" data-title="管理员查询" href="javascript:void(0)">管理员信息查询</a></li>
					<li><a data-href="admin/prePwd.action" data-title="修改密码" href="javascript:void(0)">修改密码</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>教师信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="teacher/createTeacher.action" data-title="新增教师" href="javascript:void(0)">新增教师信息</a></li>
					<li><a data-href="teacher/getAllTeacher.action" data-title="教师列表" href="javascript:void(0)">教师信息列表</a></li>
					<li><a data-href="teacher/queryTeacherByCond.action" data-title="教师查询" href="javascript:void(0)">教师信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>院系信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="dept/createDept.action" data-title="新增院系" href="javascript:void(0)">新增院系信息</a></li>
					<li><a data-href="dept/getAllDept.action" data-title="院系列表" href="javascript:void(0)">院系信息列表</a></li>
					<li><a data-href="dept/queryDeptByCond.action" data-title="院系查询" href="javascript:void(0)">院系信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>班级信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="clazz/createClazz.action" data-title="新增班级" href="javascript:void(0)">新增班级信息</a></li>
					<li><a data-href="clazz/getAllClazz.action" data-title="班级列表" href="javascript:void(0)">班级信息列表</a></li>
					<li><a data-href="clazz/queryClazzByCond.action" data-title="班级查询" href="javascript:void(0)">班级信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu-member">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>学生信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="users/getAllUsers.action" data-title="学生用户列表" href="javascript:void(0)">学生信息列表</a></li>
					<li><a data-href="users/queryUsersByCond.action" data-title="学生用户查询" href="javascript:void(0)">学生信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>网站栏目管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="banner/createBanner.action" data-title="新增网站栏目" href="javascript:void(0)">新增网站栏目</a></li>
					<li><a data-href="banner/getAllBanner.action" data-title="网站栏目列表" href="javascript:void(0)">网站栏目列表</a></li>
					<li><a data-href="banner/queryBannerByCond.action" data-title="网站栏目查询" href="javascript:void(0)">网站栏目查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>网站内容管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="article/createArticle.action" data-title="新增网站内容" href="javascript:void(0)">新增网站内容</a></li>
					<li><a data-href="article/getAllArticle.action" data-title="网站内容列表" href="javascript:void(0)">网站内容列表</a></li>
					<li><a data-href="article/queryArticleByCond.action" data-title="网站内容查询" href="javascript:void(0)">网站内容查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>课程信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="course/createCourse.action" data-title="新增课程" href="javascript:void(0)">新增课程信息</a></li>
					<li><a data-href="course/getAllCourse.action" data-title="课程列表" href="javascript:void(0)">课程信息列表</a></li>
					<li><a data-href="course/queryCourseByCond.action" data-title="课程查询" href="javascript:void(0)">课程信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>课程章节管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="sectionx/getAllSectionx.action" data-title="课程章节列表" href="javascript:void(0)">课程章节列表</a></li>
					<li><a data-href="sectionx/querySectionxByCond.action" data-title="课程章节查询" href="javascript:void(0)">课程章节查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>测试题信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="single/getAllSingle.action" data-title="单选题列表" href="javascript:void(0)">单选题信息列表</a></li>
					<li><a data-href="single/querySingleByCond.action" data-title="单选题查询" href="javascript:void(0)">单选题信息查询</a></li>
					<li><a data-href="mulit/getAllMulit.action" data-title="多选题列表" href="javascript:void(0)">多选题信息列表</a></li>
					<li><a data-href="mulit/queryMulitByCond.action" data-title="多选题查询" href="javascript:void(0)">多选题信息查询</a></li>
					<li><a data-href="fillin/getAllFillin.action" data-title="填空题列表" href="javascript:void(0)">填空题信息列表</a></li>
					<li><a data-href="fillin/queryFillinByCond.action" data-title="填空题查询" href="javascript:void(0)">填空题信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>学生成绩管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="score/getAllScore.action" data-title="学生成绩列表" href="javascript:void(0)">学生成绩列表</a></li>
					<li><a data-href="score/queryScoreByCond.action" data-title="学生成绩查询" href="javascript:void(0)">学生成绩查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>视频课件管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="vedio/getAllVedio.action" data-title="视频课件列表" href="javascript:void(0)">视频课件列表</a></li>
					<li><a data-href="vedio/queryVedioByCond.action" data-title="视频课件查询" href="javascript:void(0)">视频课件查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>视频留言管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="topic/getAllTopic.action" data-title="学生留言列表" href="javascript:void(0)">视频留言列表</a></li>
					<li><a data-href="topic/queryTopicByCond.action" data-title="学生留言查询" href="javascript:void(0)">视频留言查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>留言交流管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="bbs/getAllBbs.action" data-title="留言交流列表" href="javascript:void(0)">留言交流列表</a></li>
					<li><a data-href="bbs/queryBbsByCond.action" data-title="留言交流查询" href="javascript:void(0)">留言交流查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>留言回复管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="rebbs/getAllRebbs.action" data-title="留言回复列表" href="javascript:void(0)">留言回复列表</a></li>
					<li><a data-href="rebbs/queryRebbsByCond.action" data-title="留言回复查询" href="javascript:void(0)">留言回复查询</a></li>
				</ul>
			</dd>
		</dl>

	</div>
</aside>
<%
	} else {
%>
<aside class="Hui-aside">
	<div class="menu_dropdown bk_2">

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>个人信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="teacher/userinfo.action" data-title="个人信息" href="javascript:void(0)">个人信息</a></li>
					<li><a data-href="teacher/prePwd.action" data-title="修改密码" href="javascript:void(0)">修改密码</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>课程信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="course/getMyCourse.action" data-title="课程列表" href="javascript:void(0)">课程信息列表</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>课程章节管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="sectionx/createSectionx.action" data-title="新增课程章节" href="javascript:void(0)">新增课程章节</a></li>
					<li><a data-href="sectionx/getMySectionx.action" data-title="课程章节列表" href="javascript:void(0)">课程章节列表</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>测试题信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="single/createSingle.action" data-title="新增单选题" href="javascript:void(0)">新增单选题信息</a></li>
					<li><a data-href="single/getMySingle.action" data-title="单选题列表" href="javascript:void(0)">单选题信息列表</a></li>
					<li><a data-href="mulit/createMulit.action" data-title="新增多选题" href="javascript:void(0)">新增多选题信息</a></li>
					<li><a data-href="mulit/getMyMulit.action" data-title="多选题列表" href="javascript:void(0)">多选题信息列表</a></li>
					<li><a data-href="fillin/createFillin.action" data-title="新增填空题" href="javascript:void(0)">新增填空题信息</a></li>
					<li><a data-href="fillin/getMyFillin.action" data-title="填空题列表" href="javascript:void(0)">填空题信息列表</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>学生成绩管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="score/createScore.action" data-title="新增学生成绩" href="javascript:void(0)">新增学生成绩</a></li>
					<li><a data-href="score/getMyScore.action" data-title="学生成绩列表" href="javascript:void(0)">学生成绩列表</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>视频课件管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="vedio/createVedio.action" data-title="新增视频课件" href="javascript:void(0)">新增视频课件</a></li>
					<li><a data-href="vedio/getMyVedio.action" data-title="视频课件列表" href="javascript:void(0)">视频课件列表</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>视频留言管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="topic/getMyTopic.action" data-title="学生留言列表" href="javascript:void(0)">视频留言列表</a></li>
				</ul>
			</dd>
		</dl>


	</div>
</aside>
<%
	}
%>
