<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="style/bootstrap.css" rel="stylesheet">
<link href="style/jquery-ui-1.10.0.custom.css" rel="stylesheet"> 
<link href="style/signin.css" rel="stylesheet"> 
<link href="style/register.css" rel="stylesheet"> 

</head>
<body>


  <div class="single-panel-inner">
  
  <div class="single-panel-header">
      <h2 class="form-signin-heading">注册账号</h2>
  </div>
  <div >
   <div class="single-panel-section" ng-show="show_signup">
     
      <form class="form-signin form-horizontal" role="form" action="register.action" method="post" >
      <!--   <h2 class="form-signin-heading">注册账号</h2> -->
        
        <!--  <label class="control-label" for="username">账户名：</label>
                <input class="input-xlarge"  required="" autofocus="" id="username" type="text"><br>
                <label class="control-label" for="password">密码：</label>
                 <input class="input-xlargel" placeholder="Password"  id="password" required="" type="password">
        -->
        <div class="form-group">
                            <label class="col-xs-2 control-label">账户名：</label>

                            <div class="col-xs-10">
                                <input class="form-control" type="text" placeholder="输入账户名"
                                       name="username" ng-model="signup_team_nam" required
                                       ng-maxlength="20"/>
                            </div>
         </div>
         
         
         <div class="form-group">
                            <label class="col-xs-2 control-label">密码：</label>

                            <div class="col-xs-10">
                                <input class="form-control" type="password" placeholder="输入密码"
                                       name="password" ng-model="signup_team_nam" required
                                       ng-maxlength="20"/>
                            </div>
         </div>
         
         
         
         <div class="form-group">
                            <label class="col-xs-2 control-label">重复密码：</label>

                            <div class="col-xs-10">
                                <input class="form-control" type="password" placeholder="再输入一次"
                                       name="repassword" ng-model="signup_team_nam" required
                                       ng-maxlength="20"/>
                            </div>
         </div>
         
        <div class="form-group">
             <div class="col-xs-2"></div>
             <div class="col-xs-10">
              <button class="btn btn-primary" data-loading-text="注册中..." type="submit">注册新用户</button>
             </div>
        </div>
      </form>

    </div> <!-- /container -->
    
    </div>
    </div>
</body>
</html>