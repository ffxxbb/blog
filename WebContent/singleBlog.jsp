<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,com.ffxxbb.entity.Blog"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="style/bootstrap.css" rel="stylesheet">
<link href="style/jquery-ui-1.10.0.custom.css" rel="stylesheet"> 
<link href="style/navbar.css" rel="stylesheet"> 

</head>
<body>
<div class="container">
 <div class="jumbotron">
        <h1><%= ((Blog)request.getAttribute("blogbyId")).getTitle() %></h1>
        <p> <%= ((Blog)request.getAttribute("blogbyId")).getContent() %></p>
        <!-- <p>
          <a class="btn btn-lg btn-primary" href="http://v3.bootcss.com/components/#navbar" role="button">View navbar docs »</a>
        </p> -->
      </div>
  </div>
</body>
</html>