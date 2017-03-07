<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>主页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/FirstPage.css" >
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body style=background-color:lightgrey>
  <div id="box1">
<ul>
<li>
<a href="song/song_showSongByGenre?song.genre.genreid=1">pop music</a>
</li>
</ul>

<ul>
<li>
<a href="song/song_showSongByGenre?song.genre.genreid=2">country music</a> 
</li>
</ul>

<ul>
<li>
<a href="song/song_showSongByGenre?song.genre.genreid=3">folk music</a>
</li>
</ul>

<ul>
<li>
<a href="song/song_showSongByGenre?song.genre.genreid=4">R&B </a>
</li>
</ul>

<ul>
<li>
<a href="song/song_showSongByGenre?song.genre.genreid=5">Rock and Roll</a>
</li>
</ul>
</div>
  <div>
  <c:choose>
		       <c:when test="${user.username ==null}">
		         <a href="login.jsp">登录</a>
		         <a href="reg.jsp">注册</a>
		       </c:when>
		       <c:otherwise>
		         <c:out value="${user.username}"></c:out>欢迎您!
		       </c:otherwise>
		    </c:choose>
   <a href="song/song_showSong">显示所有歌曲</a>
  </div>
  </body>
</html>
