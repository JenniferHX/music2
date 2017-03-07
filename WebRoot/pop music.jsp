<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>

<base href="<%=basePath%>">
<title>pop music</title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link type="text/css"rel="stylesheet"href="css/style1.css">

<body>
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
<h1>Pop Music</h1>
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
</header><br>

<div id="box_absolute2">关于流行乐：流行音乐，是音乐类型的一种，指以盈利为主要目的而创作的音乐。它是商业性的音乐消遣娱乐以及与此相关的一切“工业”现象。它的市场性是主要的，艺术性是次要的。流行音乐19世纪末20世纪初起源于美国，从音乐体系看，流行音乐是在叮砰巷音乐、布鲁斯、爵士乐、摇滚乐、索尔音乐等美国大众音乐架构基础上发展起来的音乐。其风格多样，形态丰富，可泛指Jazz、Rock、Soul、Blues、Reggae、Rap、Hip-Hop、Disco、New Age等20世纪后诞生的都市化大众音乐。中国流行音乐的风格与形态主要受欧美影响，在此基础上逐渐形成本土风格。在流行音乐方面做出独一无二巨大成就的名人是迈克尔杰克逊</div>
  <div id="box_absolute6">
    <h2>MV精选</h2>
    <div id="box_absolute3">《弹唱》——利用“人头录音”技术的特性，林俊杰将《弹唱》的录音地点设置在家中，并采用动态的录音方式。歌曲一开始，起床刷牙洗脸，林俊杰就在身后拿着吉他弹唱，就连经过他身旁时，声音的远近和大小变化都真实得惊人，接着，穿过厅堂，准备早餐，林俊杰依然在耳边轻声地唱着，让人感觉随时有人陪伴在左右，带给人暖暖的幸福感。</div>
    <div id="box_absolute4">《最佳损友》——这是陈奕迅于2006年发行的专辑《Life continues》中的一首歌曲，出自词人黄伟文之手的讲述人生、友情、际遇、变化种种的理性歌曲。这首歌所描述的，其实每个人都有所体会。黄伟文在写此首歌曲时选择了众多歌曲中较为冷门的友情作为歌曲主线，但若听过此歌，就绝不会仅仅只将它当成一首讲述友情的歌曲。</div>
  </div>
<div id="box_absolute1"><img src="images/0b46f21fbe096b631c6037e60c338744ebf8ac0f.jpg" width="250" height="250"></div>
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
<a href="http://v.yinyuetai.com/video/2474600"target="_blank">
<div id="box_absolute8">
<img src="images/20160404155503.png" width="246" height="171">
</div>
</a>
<a href="http://v.yinyuetai.com/video/142480"target="_blank">
<div id="box_absolute9">
<img src="images/20160404155806.png"width="246" height="171">
</div>
</a>
</div>

</body>
</html>
