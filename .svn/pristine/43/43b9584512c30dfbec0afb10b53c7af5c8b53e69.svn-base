<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>租房系统</title>
	<meta name="keywords" content="盒老师">
	<meta name="content" content="盒老师">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <link type="text/css" rel="stylesheet" href="css/login.css">
    <script type="text/javascript" src="js/jquery.min.js"></script> 
    <script src="js/resign.js" type="text/javascript"></script>
<script type="text/javascript">
function changecode() {
	document.getElementById("code").src = "/checkSaveCode/saveCode.do?time=" + Math.random();
}
function check(){
	var code = document.getElementById("codeInput");
	var userCode = code.value;
	$.ajax({
        type: "POST",
        url: "/checkSaveCode/checkCode.do",
        data: {
        	code: userCode,
        },
        dataType: "json",
        error: function (XMLHttpRequest, textStatus, errorThrown) {
        },
        success: function (json) {
        	if(json.strMessage=="0"){
        		$("#Invite_code").text("验证码错误");
        	}else{
        		$("#Invite_code").text("验证码正确");
        	}
        }
    });
	
}
</script>
</head>
<body class="login_bj" >

<div class="zhuce_body">
	<!--<div class="logo"><a href="#"><img src="images/logo.gif" width="120" height="60" border="0"></a></div>-->
    <div class="zhuce_kong">
    	<div class="zc">
        	<div class="bj_bai">
            <h3>欢迎注册</h3>
       	  	    <form action="<%=request.getContextPath()%>/UserAddServlet" method="post">
                <input name="phone" type="text" class="kuang_txt phone" required placeholder="手机号" pattern="^1[34578][0-9]{9}$">
                <input name="name" type="text" class="kuang_txt phone" required placeholder="用户名(3~6位的英文和数字)" pattern="[a-zA-Z0-9]{3,6}">
                <input name="email" type="email" class="kuang_txt email" required placeholder="邮箱">
                <input name="pass" type="password" class="kuang_txt possword" required placeholder="密码(长度为4-6个字符)" pattern="[a-zA-Z0-9]{4,6}">
                <input name="codetext" type="text" onblur="check()" id="codeInput" class="kuang_txt yanzm" required placeholder="验证码"/>
                <div>
                	<div class="hui_kuang"><img id="code" src="/checkSaveCode/saveCode.do" onclick="changecode()"
				style="width:100px;height:30px;"></div>
				<div id="Invite_code"  style="color:red; class="kuang_txt"></div>
                	<div class="shuaxin"><a href="#" onclick="changecode()"><img src="images/zc_25.jpg" width="13" height="14"></a></div>
                </div>
                <input name="注册" type="submit" class="btn_zhuce" value="注册">
                
                </form>
            </div>
        	<div class="bj_right">
            	<p>使用以下账号直接登录</p>
                <a href="#" class="zhuce_qq">QQ注册</a>
                <a href="#" class="zhuce_wb">微博注册</a>
                <a href="#" class="zhuce_wx">微信注册</a>
                <p>已有账号？<a href="login.jsp">立即登录</a></p>
            
            </div>
        </div>
    </div>
</div>
</body>
</html>
