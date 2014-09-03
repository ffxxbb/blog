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

 <script src="jquery/jquery-1.9.0.min.js"></script>
<script src="jquery/bootstrap.min.js"></script>
<script src="jquery/jquery-ui-1.10.0.custom.min.js"></script>

<%
if(request.getAttribute("T_flag")==null)
{
	response.sendRedirect("find.action");
}
 %>
</head>
<body>
<div class="container">

<%
   if(request.getAttribute("T_flag")!=null){
   List<Blog> list=(List<Blog>)request.getAttribute("blogs");
   for(int i=0;i<list.size();i++){
%>
<div class="media">
  <a class="pull-left" href="#">
    <img class="media-object" src="" alt="<%=list.get(i).getUsername()%>">
  </a>
  <div class="media-body">
   <a href="singleBlog.action?id=<%= list.get(i).getId() %>" title="详细blog"> 
     <h3 class="media-heading"><%=list.get(i).getTitle()%></h3>
   </a>
     <%= list.get(i).getContent() %>
  </div>
</div>

  <%} 
  }%>   


</div>
</body>
</html>