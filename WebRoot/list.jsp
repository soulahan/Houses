<%@ page language="java"  import="java.util.*,entity.HouseNews" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>

<div  id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="add.jsp"> 发布房屋信息</a> </li>
        <li>搜索:</li>
        <li>首页
          <select name="s_ishome" class="input" onchange="changesearch()" style="width:60px; line-height:17px; display:inline-block">
            <option value="">选择</option>
            <option value="1">是</option>
            <option value="0">否</option>
          </select>
          &nbsp;&nbsp;
          推荐
          <select name="s_isvouch" class="input" onchange="changesearch()"  style="width:60px; line-height:17px;display:inline-block">
            <option value="">选择</option>
            <option value="1">是</option>
            <option value="0">否</option>
          </select>
          &nbsp;&nbsp;
          置顶
          <select name="s_istop" class="input" onchange="changesearch()"  style="width:60px; line-height:17px;display:inline-block">
            <option value="">选择</option>
            <option value="1">是</option>
            <option value="0">否</option>
          </select>
        </li>
        <if condition="$iscid eq 1">
          <li>
            <select name="cid" class="input" style="width:200px; line-height:17px;" onchange="changesearch()">
              <option value="">请选择分类</option>
              <option value="">产品分类</option>
              <option value="">产品分类</option>
              <option value="">产品分类</option>
              <option value="">产品分类</option>
            </select>
          </li>
        </if>
        <li>
        <form  method="post" action="<%=request.getContextPath() %>/SouServlet" >
          <input type="text"   placeholder="请输入标题关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <input name="adwhed" type="submit" class="button border-main icon-search " value="搜索">
      </form>
         </li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">房屋ID</th>
        <th width="10%">排序</th>
        <th>图片</th>
        <th>标题</th>
        <th>属性</th>
        <th>联系方式</th>
        <th width="10%">房产证日期</th>
        <th width="310">操作</th>
      </tr>
      <volist name="list" id="vo">  
<!--   循环房屋信息   -->  
      <c:forEach items="${requestScope.page.newsList}" var="news" varStatus="j">
       <tr>
          <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" id="allSelect" vv=${news.houseId} value=${news.houseId}>${news.houseId}</td>
          <td><input type="text" name="sort[${j.count}]" value=${j.count} style="width:50px; text-align:center; border:1px solid #ddd; padding:7px 0;" /></td>
          <td width="10%"><img src="upload/${news.housePictures}" alt="" width="70" height="50" /></td>
          <td>${news.houseTitle }</td>
          <td><font color="#00CC99">${news.location}</font></td>
          <td>${news.contact }</td>
          <td>${news.dateOfHouseCard }</td>
          <td><div class="button-group"> <a class="button border-main" href="UpDateList.jsp?uid=${news.houseId }"><span class="icon-edit"></span> 修改</a> 
          <a class="button border-red" href="<%=request.getContextPath()%>/DeletListServlet?aa=${news.houseId }">
          <span class="icon-trash-o"></span> 删除</a> </div></td>
        </tr>
       </c:forEach>
 <!--   循环房屋信息   -->      
        <td style="text-align:left; padding:19px 0;padding-left:20px;"><input type="checkbox" id="checkall"/>
          全选 </td>
        <td colspan="7" style="text-align:left;padding-left:20px;"><a href="#" class="button border-red icon-trash-o" style="padding:5px 15px;" onclick="DelSelect()"> 删除</a>
         <a href="javascript:void(0)" style="padding:5px 15px; margin:0 10px;" class="button border-blue icon-edit" onclick="sorts()"> 排序</a> 操作：
          <select name="ishome" style="padding:5px 15px; border:1px solid #ddd;" onchange="changeishome(this)">
            <option value="">首页</option>
            <option value="1">是</option>
            <option value="0">否</option>
          </select>
          <select name="isvouch" style="padding:5px 15px; border:1px solid #ddd;" onchange="changeisvouch(this)">
            <option value="">推荐</option>
            <option value="1">是</option>
            <option value="0">否</option>
          </select>
          <select name="istop" style="padding:5px 15px; border:1px solid #ddd;" onchange="changeistop(this)">
            <option value="">置顶</option>
            <option value="1">是</option>
            <option value="0">否</option>
          </select>
          &nbsp;&nbsp;&nbsp;
          
          移动到：
          <select name="movecid" style="padding:5px 15px; border:1px solid #ddd;" onchange="changecate(this)">
            <option value="">请选择分类</option>
            <option value="">产品分类</option>
            <option value="">产品分类</option>
            <option value="">产品分类</option>
            <option value="">产品分类</option>
          </select>
          <select name="copynum" style="padding:5px 15px; border:1px solid #ddd;" onchange="changecopy(this)">
            <option value="">请选择复制</option>
            <option value="5">复制5条</option>
            <option value="10">复制10条</option>
            <option value="15">复制15条</option>
            <option value="20">复制20条</option>
          </select></td>
      </tr>
      <tr>
        <td colspan="8"><div class="pagelist"> <a href="${pageContext.request.contextPath}/ListServlet?Page=${page.currPageNo-1 }">上一页</a>
         <!-- <span class="current"></span> --><a href="${pageContext.request.contextPath}/ListServlet?Page=1" >首页</a><a href="${pageContext.request.contextPath}/ListServlet?Page=2">2</a><a href="${pageContext.request.contextPath}/ListServlet?Page=3">3</a>
         <a href="${pageContext.request.contextPath}/ListServlet?Page=${page.currPageNo+1 }">下一页</a><a href="${pageContext.request.contextPath}/ListServlet?Page=${requestScope.page.totalPageCount}">尾页</a> </div></td>
      </tr>
    </table>
  </div>
</div>
<script type="text/javascript">
//搜索
function changesearch(){	
		
}

//单个删除    ${pageContext.request.contextPath}
function del(hre){
	if(confirm("您确定要删除吗?")){
		
		return true;
	}
}

//全选
$("#checkall").click(function(){ 
  $("input[name='id[]']").each(function(){
	  if (this.checked) {
		  this.checked = false;
	  }
	  else {
		  this.checked = true;
	  }
  });
})

//批量删除
/* function DelSelect(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		var t=confirm("您确认要删除选中的内容吗？");
		if (t==false) return false;		
		
		$("#listform").submit();		
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
} */



function DelSelect(){
    var msg = "您真的确定要删除吗？";   
    if (confirm(msg)==true){   
        var becheckbox = "";
         $("input[name='id[]']").each(function(){ //遍历table里的全部checkbox
        	 
            if(this.checked) //如果被选中
            	
                becheckbox += $(this).attr("vv") + ","; //获取被选中的值
         
        }); 
        if(becheckbox.length > 0){ //如果获取到
            becheckbox = becheckbox.substring(0, becheckbox.length - 1); //把最后一个逗号去掉
            alert(becheckbox);
            }
        alert("");
      $.ajax({
		  type: "post",
		  url:"<%=request.getContextPath()%>/PagDeleteServlet",
		  data : {
		  "becheckbox":becheckbox
		  },
		  dataType:"json",
		  success : function(map) {
			  
		  }

		});    
        		   
           
    }else{   
    return false;   
    } 
 	 
    
    
}











//批量排序
function sorts(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		return false;
	}
}


//批量首页显示
function changeishome(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}

//批量推荐
function changeisvouch(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");	
		
		return false;
	}
}

//批量置顶
function changeistop(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}


//批量移动
function changecate(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		
		return false;
	}
}

//批量复制
function changecopy(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		var i = 0;
	    $("input[name='id[]']").each(function(){
	  		if (this.checked==true) {
				i++;
			}		
	    });
		if(i>1){ 
	    	alert("只能选择一条信息!");
			$(o).find("option:first").prop("selected","selected");
		}else{
		
			$("#listform").submit();		
		}	
	}
	else{
		alert("请选择要复制的内容!");
		$(o).find("option:first").prop("selected","selected");
		return false;
	}
}

</script>
</body>
</html>