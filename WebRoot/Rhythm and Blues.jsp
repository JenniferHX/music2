<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>R&B</title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link href="css/style1.css"rel="stylesheet"type="text/css">
</head>

<body style=background-color:rgba(61,168,220,1.00)>
<div id="box_absolute7">
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
  </div>
<header>
<h1>Rhythm and Blues</h1>
<nav>
<ul>
<li><a href="index.jsp">首页</a></li>
<li><a href="song/song_showSongByGenre?song.genre.genreid=1">流行乐</a></li>
<li><a href="song/song_showSongByGenre?song.genre.genreid=2">乡村乐</a></li>
<li><a href="song/song_showSongByGenre?song.genre.genreid=3">民谣乐</a></li>
<li><a href="song/song_showSongByGenre?song.genre.genreid=4">蓝调乐</a></li>
<li><a href="song/song_showSongByGenre?song.genre.genreid=5">摇滚乐</a></li>
</ul>
</nav>
</header>
<div id="box_absolute2">关于R&B:又称节奏怨曲。布鲁斯无疑是R&B的一个重要组成部分，但爵士乐元素也同等重要。首先由非裔美国人艺术家所演奏，融合了爵士乐、福音音乐和电子布鲁斯音乐的音乐类型。 这个音乐术语是由美国告示牌杂志（Billboard）于1940年代末所提出。相关唱片有 合辑《布鲁斯名家”第五辑：“跳跃布鲁斯”经典》、路易斯·乔丹(Louis Jordan)《路易斯·乔丹精选》等。contemporary R&B则是在普通R&B的基础上添加了电子音乐和SOUL。</div>
  <div id="box_absolute6">
    <h2>MV精选</h2>
    <div id="box_absolute3">《Can You Feel My World》——《Can You Feel My World》被称为是王力宏的内心世界大独白，歌曲基调悲伤而无奈，表达了力宏在音乐旅程上闯荡8年的感想。</div>
    <div id="box_absolute4">《Maybe》——歌里的字字句句，唱出了多少在你我身上似曾相识的画面。</div>
  </div>
<div id="box_absolute1"><img src="images/s2136124.jpg" width="250" height="230"></div>
<div id="box_absolute5">
  <h3>Music</h3>
<s:form>
    <table>
    <tr>
    <th>序号</th>
    <th>歌曲</th>
    <th>歌手</th>
    </tr>
    <c:forEach var="song" items="${songList}" varStatus="status">
    <tr>
    <td><c:out value="${status.index+1}"></c:out></td>
    <td><a href="song/song_showDetail?song.songid=${song.songid}"><c:out value="${song.name}"></c:out></a></td>
    <td><c:out value="${song.singer.singername}"></c:out></td>
    <td><a href="song/song_showEdit?song.songid=${song.songid}">编辑</a></td>
    <td><a href="song/song_deleteSong?song.songid=${song.songid}">删除</a></td>
    </tr>
    </c:forEach>
    <tr><a href="add.jsp">添加音乐</a></tr>
    </table>
 </s:form>
</div>
<a href="http://baidu.kuwo.cn/watch/4682166722049958789.html"target="_blank">
<div id="box_absolute8">
<img src="images/20160405202413.png" width="246" height="171">
</div>
</a>
<a href="http://baidu.ku6.com/watch/02823271330035706903.html"target="_blank">
<div id="box_absolute9">
<img src="images/20160405203002.png"width="246" height="171">
</div>
</a>
</div>
</body>
</html>