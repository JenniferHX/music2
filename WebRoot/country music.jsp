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
<title>country music</title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link href="css/style1.css"rel="stylesheet"type="text/css">
</head>

<body style=background-color:rgba(88,215,56,1.00)>
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
<h1>Country Music</h1>
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
<div id="box_absolute2">关于乡村乐:一种具有美国民族特色的流行音乐，于20世纪20年代兴起于美国南部，其根源来自英国民谣，是美国白人民族音乐代表。乡村音乐的特点是曲调简单，节奏平稳，带有叙事性，具有较浓的乡土气息，亲切热情而不失流行元素。多为歌谣体、二部曲式或三部曲式。</div>
  <div id="box_absolute6">
    <h2>MV精选</h2>
    <div id="box_absolute3">《Seasons In The Sun》——歌曲的内容大致描述一个罹患癌症、不久于人世的男子，在面临死亡的时候，对父亲、妻子以及挚友的依依难舍。Brel谱写这首歌曲，可说是有感而发，因为他当时发觉自己罹患了癌症。在跟病魔搏斗十多年之后，他于1978年十月九日病逝，享年四十九岁。</div>
    <div id="box_absolute4">《Take Me Home, Country Road》——由约翰·丹佛(John Denver)于1971年创作并演唱的著名乡村歌曲。歌曲旋律轻快，给人描绘了一幅美丽的美国东部西弗吉尼亚风光。</div>
  </div>
<div id="box_absolute1"><img src="images/1548908_0.jpg" width="250" height="230"></div>
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
<a href="http://www.iqiyi.com/yinyue/20130402/6336dcb3bd814b7d.html"target="_blank">
<div id="box_absolute8">
<img src="images/20160405205111.png"width="246" height="171">
</div>
</a>
<a href="http://v.yinyuetai.com/video/334766"target="_blank">
<div id="box_absolute9">
<img src="images/20160405205536.png"width="246" height="171">
</div>
</a></div>
</body>
</html>
