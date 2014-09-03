<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,com.ffxxbb.entity.Blog"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here<%=session.getAttribute("user")   %></title>

<link href="style/bootstrap.css" rel="stylesheet">
<link href="style/jquery-ui-1.10.0.custom.css" rel="stylesheet">

<script src="jquery/jquery-1.9.0.min.js"></script>
<script src="jquery/bootstrap.min.js"></script>
<script src="jquery/jquery-ui-1.10.0.custom.min.js"></script>
<script src="js/login.js"></script>
</head>

<frameset rows="69,*" cols="*" frameborder="no" border="0" framespacing="0">
         <frame src="loginHead.jsp" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" title="topFrame" />
         <frame src="userBlog.jsp"  name="mainFrame" scrolling="yes" noresize="noresize" id="mainFrame" title="mainFrame"  ></frame>
</frameset>
<body>
  
      
      
      
    
</body>
</html>