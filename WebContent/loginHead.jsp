<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,com.ffxxbb.entity.Blog"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

 <link href="style/navbar.css" rel="stylesheet">
 <link href="style/bootstrap.css" rel="stylesheet">
 
<script src="jquery/jquery-1.9.0.min.js"></script>
<script src="jquery/bootstrap.min.js"></script>
<script src="jquery/jquery-ui-1.10.0.custom.min.js"></script>

 <script src="js/login.js"></script>

 </head>
<body>
    <div class="container">

      <!-- Static navbar -->
      <div class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">首页(看到关注的所有博客)</a></li>
            <li><a href="#">${sessionScope.user}</a></li>
            <li><a href="#">账户(修改信息)</a></li>
            <li><a href="addBlog.jsp" target="mainFrame">文字</a></li>
            
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a id="logout" href="#" >退出</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>

 
  

    </div> <!-- /container -->


</body>
</html>