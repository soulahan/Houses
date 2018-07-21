<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" type="text/css" href="css/easyui.css" /> 
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>发布房屋信息</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" enctype="multipart/form-data"  action="<%=request.getContextPath()%>/AddServlet">
      
      
      
      <div class="form-group">
        <div class="label">
          <label>标题：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50"  name="title" data-validate="required:请输入标题" />
          <div class="tips"></div>
        </div>
      </div>
      
      
      
      
        <div class="form-group">
          <div class="label">
            <label>户型：</label>
          </div>
          <div class="field">
            <select name="house_type" class="input w50">
              <option value="">选择类型</option>
              <option value="asd">一室一厅</option>
              <option value="一室两厅">一室两厅</option>
              <option value="两室一厅">两室一厅</option>
              <option value="两室两厅">两室两厅</option>
            </select>
            <div class="tips"></div>
          </div>
        </div>

      <div class="form-group">
        <div class="label">
          <label>面积：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="s_area"  />
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>卧室数量：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="bed_number"/>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>浴室数量：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="bath_number"/>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>是否有车库：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="car_barn"/>
        </div>
      </div>

      <div class="form-group">
        <div class="label">
          <label>价格：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="s_price" />
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>房屋图片：</label>
        </div>
    
        <div class="field">
          <input type="file" id="url1" name="img" class="input tips" style="width:25%; float:left;"  data-toggle="hover" data-place="right" data-image="" />
          <input type="button" class="button bg-blue margin-left" id="image1" value="+ 浏览上传"  style="float:left;">
          <div class="tipss">图片尺寸：500*500</div>
        </div>
      </div>          
      <div class="clear"></div>
      


      <div class="form-group">
        <div class="label">
          <label>房产证日期：</label>
        </div>
        <div class="field">
          <div  class="tipss" style="font-size:25px;" id="s_desc" name="s_desc"  ></div>
        </div>
        </div>

      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
        <div id="calendar" class="easyui-calendar"></div>
        </div>
      </div>   
<script type="text/javascript">
	$('#calendar').calendar({
	onSelect: function(date){
		var calvalue = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate();  
		$("#s_desc").text(calvalue);
		
		 calvalue = document.getElementById("s_desc").value
	}
});
	$.ajax({
		type:'post',
		url:'',
		
	});
</script> 

      <div class="form-group">
        <div class="label">
          <label>位置：</label>
        </div>
        <div class="field input w50">
            <select name="location0" class="input w50">
              市:<option value="新余市">新余市</option>
       <option value="南昌市">南昌市</option>
       <option value="上饶市">上饶市</option>
            </select>
            <select name="location1" class="input w50">
              区:<option value="渝水区">渝水区</option>
       <option value="湖水区">湖水区</option>
       <option value="玉海区">玉海区</option>
            </select>
            <select name="location2" class="input w50">
              街:<option value="后街">后街</option>
       <option value="前街">前街</option>
       <option value="西街">西街</option>
            </select>
            
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>联系方式：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="contact"  data-validate="number:排序必须为数字" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>发布时间：</label>
        </div>
        <div class="field"> 
          <script src="js/laydate/laydate.js"></script>
          <input type="text" class="laydate-icon input w50" name="datetime" onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})"  data-validate="required:日期不能为空" style="padding:10px!important; height:auto!important;border:1px solid #ddd!important;" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>用户名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="authour" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>详细消息：</label>
        </div>
        <div class="field">
          <textarea name="content" class="input" style="height:100px; border:1px solid #ddd;"></textarea>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>  
      </form>   
  </div>
</div>

</body></html>