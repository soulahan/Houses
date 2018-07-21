$(document).ready(function(){
    $(".btn_zhuce").click(function(){
        var u=document.getElementByName("name");
        if(u.validity.valueMissing==true){
            u.setCustomValidity("用户名不能为空");
        }
        else if(u.validity.patternMismatch==true){
            u.setCustomValidity("用户名必须是3~6位的英文和数字");
        }
        else{
            u.setCustomValidity("");
        }

        var pwd=document.getElementByName("pass");
        if(pwd.validity.valueMissing==true){
            pwd.setCustomValidity("密码不能为空");
        }
        else if(pwd.validity.patternMismatch==true){
            pwd.setCustomValidity("密码必须是4~6位的英文和数字");
        }
        else{
            pwd.setCustomValidity("");
        }

        var email=document.getElementByName("email");
        if(email.validity.valueMissing==true){
            email.setCustomValidity("邮箱不能为空");
        }
        else if(email.validity.typeMismatch==true){
            email.setCustomValidity("邮箱格式不正确");
        }
        else{
            email.setCustomValidity("");
        }

    });
});

