<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*,entity.Users" %>
    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>租房系统后台管理</title>
	<meta name="keywords" content="盒老师">
	<meta name="content" content="盒老师">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <link type="text/css" rel="stylesheet" href="css/login.css">
    <script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
</head>



<body class="login_bj" >
<div class="zhuce_body">
    <div class="zhuce_kong login_kuang">
    	<div class="zc">
        	<div class="bj_bai">
            <h3>登录&nbsp;&nbsp;&nbsp;<a href="administratorlogin.jsp">后台登录></a></h3>
       	  	  <form action="<%=request.getContextPath()%>/UserLoginServlet" method="post">
                <input name="name" type="text" class="kuang_txt" placeholder="用户名">
                <input name="passWord" type="password" class="kuang_txt" placeholder="密码">
                <div>
               		<a href="upDatePass.jsp">忘记密码？</a><input name="" type="checkbox" value="" checked><span>记住我</span> 
                </div>
                <input name="login" type="submit" class="btn_zhuce" value="登录">
                
                </form>
                
            </div>
        	<div class="bj_right">
            	<p>使用以下账号直接登录</p>
                <a href="#" class="zhuce_qq">QQ登录</a>
                <a href="#" class="zhuce_wb">微博登录</a>
                <a href="#" class="zhuce_wx">微信登录</a>
                <a href="resign.jsp" class="zhuce_ks">快速注册</a>
                <!--<p>已有账号？<a href="#">立即登录</a></p>--
                
            
            </div>
        </div>
        <!--<P>Diyhe.com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎您定制盒子模型</P>-->
    </div>

</div>
    
</body>
</html>