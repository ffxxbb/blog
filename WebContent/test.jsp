<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="style/bootstrap.css" rel="stylesheet">
<link href="style/jquery-ui-1.10.0.custom.css" rel="stylesheet"> 

 <script src="jquery/jquery-1.9.0.min.js"></script>
<script src="jquery/bootstrap.min.js"></script>
<script src="jquery/jquery-ui-1.10.0.custom.min.js"></script>
<script src="js/login.js"></script>
</head>
<body>
   
   <jsp:include page="head.jsp"></jsp:include>
   
    <div id="dialog_login" title="登陆">
        <form action="login.action" class="form-signin" role="form" method="post">
        <h2 class="form-signin-heading"></h2>
        <input class="form-control" placeholder="账户名/email" required="" autofocus="" name="username" type="text">
        <input class="form-control" placeholder="密码" required="" type="password" name="password">
        <label class="checkbox">
          <input value="remember-me" type="checkbox">记住密码
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
      </form>
     </div>
</body>
</html>