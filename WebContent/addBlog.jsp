<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="style/bootstrap.css" rel="stylesheet">
<link href="style/jquery-ui-1.10.0.custom.css" rel="stylesheet"> 
<link href="style/navbar.css" rel="stylesheet"> 
<link href="style/register.css" rel="stylesheet"> 


 <script src="kindeditor/kindeditor-min.js"></script>
 <script charset="utf-8" src="kindeditor/lang/zh_CN.js"></script>
  <script src="jquery/jquery-1.9.0.min.js"></script>
  
  <script>
        KindEditor.ready(function(K) {
        	 window.editor = K.create('#editor_id',
             		{
             	     items:['fontsize','fontname',
             	            'formatblock','forecolor','|','bold','underline','strikethrough',
             	            'justifyleft','justifycenter','justifyright','|',,'image','emoticons','link','unlink','source','code','fullscreen'],
        	          uploadJson : 'kindeditor/jsp/upload_json.jsp',
                      fileManagerJson : 'kindeditor/jsp/file_manager_json.jsp',
                      allowFileManager : true
             		})
        });
</script>
<title>Insert title here</title>
</head>
<body>

<div class="container">

<div class="jumbotron">
    <form>
       <h2>发表文字</h2>
       
       <h3>标题</h3>  
          <div class="col-xs-5">
         <input class="form-control" type="text"/> 
         </div> <br>
         
       <h3>内容</h3>
         <textarea id="editor_id" name="content" style="width:700px;height:300px;">
         </textarea>
         
          <div class="form-group">
             <div class="col-xs-2"></div>
             <div class="col-xs-10">
              </div>
         </div>
         
         <div class="form-group" align="left">
             <div class="col-xs-0"></div>
             <div class="col-xs-0">
              <button class="btn btn-primary" type="submit">发布</button>
         </div>
        </div>
    </form>

</div>
</div>
</body>
</html>