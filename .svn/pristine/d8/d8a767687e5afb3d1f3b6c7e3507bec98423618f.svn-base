<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
<html>

	<head>
		<meta charset="utf-8">
		<title>安全中心</title>
		<link rel="stylesheet" href="css/passStyle.css" type="text/css">
		<script type="text/javascript">
			document.createElement("section");
			document.createElement("article");
			document.createElement("footer");
			document.createElement("header");
			document.createElement("hgroup");
			document.createElement("nav");
			document.createElement("menu");
		</script>
	</head>

	<body>
		<header>
			<div class="w12 header">
				<div class="fr logofr">
					<a href="login.jsp" class="blk">返回首页</a> |
					
			</div>
		</header>
		<div class="head_border"></div>
		<section class="w12 login">
			<em class="fr">已经是会员，请&nbsp;&nbsp;<a class="db logbtn fr">前往登录</a> </em>
		</section>
		<section class="main w12">
			
			<div class="fr tit2"><span class="arr"></span></div>
			
			<div class="inputsec">
				<form action="<%=request.getContextPath()%>/UserUpDatePassServlet" method="post">
				<ul>
					<li><label class="fl mr2">手机号码：</label>
						<input type="text" name="tel" id="tel" class="txt-m fl " value="请输入11位手机号码" onClick="if(value==defaultValue){value='';this.style.color='#333'}">
						<div style="display:none" class="msg-error">请输入11位手机号码</div>
					</li>
					<li><label class="fl mr2">用户名：</label>
						<input type="text" name="name" id="name" class="txt-m fl " value="请输入用户名" onClick="if(value==defaultValue){value='';this.style.color='#333'}">
						<div style="display:none" class="msg-error">请输入用户名</div>
					</li>
					<li>
						<label class="fl mr2">新密码：</label>
						<input type="text" name="pass" id="pass"  class="txt-m fl " value="请输入新密码" onClick="if(value==defaultValue){value='';this.style.color='#333'}">
						<div style="display:none" class="msg-error">新密码</div>
					</li>
					
					<li class="clr"><label class="db fl">&nbsp;</label>
						<input type="submit" name="ok" id="ok" value="提交" />
					</li>
				</ul>
				</form>
			</div>
		</section>
	</body>

</html>