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

<body style=background-color:gray>
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
<h1>Rock and Roll</h1>
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
<div id="box_absolute2">关于摇滚：兴起于20世纪50年代中期，主要受到节奏布鲁斯、乡村音乐和叮砰巷音乐的影响发展而来。早期摇滚乐很多都是黑人节奏布鲁斯的翻唱版，因而节奏布鲁斯是其主要根基。摇滚乐分支众多，形态复杂，主要风格有：民谣摇滚、艺术摇滚、迷幻摇滚、乡村摇滚、重金属、朋克等，代表人物有：埃尔维斯·普莱斯利（猫王）、鲍勃·迪伦、披头士乐队、滚石乐队等，是20世纪美国大众音乐走向成熟的重要标志。中国摇滚乐兴起于80年代初，1986年崔健以一首《一无所有》喊出了中国摇滚第一声。90年代中期为中国摇滚的高峰期。</div>
  <div id="box_absolute6">
    <h2>MV精选</h2>
    <div id="box_absolute3">《Rolling in the Deep》—《Rolling in the Deep》歌曲的歌词和简谱由阿黛尔和保罗·艾普沃斯进行编写并进行音乐制作，阿黛尔将这首歌称作是一首“阴暗的布鲁斯福音迪斯科”。[5]  歌曲的创作灵感是阿黛尔在录音室中得到的。阿黛尔称她突然想到一段旋律，一直在脑海里重复。于是她就唱出了歌曲第一句歌词。</div>
    <div id="box_absolute4">《离开地球表面》—在人们的印象中，摇滚就是叛逆，就是对世界的不满。面对五月天的音乐，很多人发出了“伪摇”的不 满呼声。对此，主唱阿信说：“如果，摇滚是对这个世界的制度的颠覆。那么，五月天就是对这个颠覆 的再颠覆。”</div>
  </div>
<div id="box_absolute1"><img src="images/6608733_150007097000_2.jpg" width="250" height="230"></div>
<div id="box_absolute5">
    <h2>MV精选</h2>
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
<a href="http://v.yinyuetai.com/video/782597"target="_blank">
<div id="box_absolute8">
<img src="images/20160404211445.png" width="246" height="171">
</div>
</a>
<a href="http://www.le.com/ptv/vplay/2183397.html"target="_blank">
<div id="box_absolute9">
<img src="images/20160404212811.png"width="246" height="171">
</div>
</a>
</div>
</body>
</html>
