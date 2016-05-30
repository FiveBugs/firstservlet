<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="index.css" />
<title>practice how to use jsp</title>
</head>
<body>
<div id="body">
	<%@page import="java.util.Date" %>
	<%! int a =3; %>
	<%! Date date = new Date(); %>
	<p>
		<% String mm = "hello.world"; %>
		mm
		<%=mm %>
		<%= date %>
		<%= a %>
	</p>
	<form action="FirstServlet">
		用户名：<input type="text" name="username" method="post"/>
		<br/> <br />
		密 码：<input type="password" name="password" />
		<input type="submit" value="登陆" />
		<input type="file" value="上传" />
	</form>
	<%@include file="end.jsp" %>
	<br/>
	<p>
		
		<h4>设置pageContext属性</h4>
		<% request.setAttribute("张三","011"); %>
		<%=request.getProtocol() %>
		<br/>
		
		<%
			synchronized(application){
				Integer hitCount = (Integer)application.getAttribute("hitCount");
				if(hitCount == null||hitCount == 0){
					out.println("欢迎，这是第一次访问！");
					hitCount = 1;
				}else{
					hitCount++;
					out.println("访问次数："+hitCount);
				}
				application.setAttribute("hitCount", hitCount);
			}
		%>
	
	</p>
<div>
</body>
</html>