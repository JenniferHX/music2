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

<body style=background-image:url(images/tietu57.jpg)>
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
<h1>Folk Music</h1>
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
<div id="box_absolute2">关于民谣：民间流行的、赋予民族色彩的歌曲，称为民谣或民歌。民谣的历史悠远，故其作者多不知名。民谣的内容丰富，有宗教的、爱情的、战争的、工作的，也有饮酒、舞蹈作乐、祭典等等。民谣表现一个民族的感情与习尚，因此各有其独特的音阶与情调风格。如法国民谣的蓬勃、意大利民谣的热情、英国民谣的淳朴、日本民谣的悲愤、西班牙民谣的狂放不羁、中国民谣的缠绵悱恻，都表现了强烈的民族气质与色彩。校园民谣朝气蓬勃，极富有校园味道，毫无矫饰，完全是率真性情的流露，听起来十分感人，它形象地反映出青年学子的生活，表现出年轻人的蓬勃朝气、青春活力以及他们那富有诗意的浪漫气息，其曲风总体来说朴实明快、积极向上，充满活力，深受人们的喜爱和传唱。校园民谣，属于音乐领域的一种特别现象。它的产生，与大陆原创音乐的流行及外来音乐的影响均有联系。在外来音乐的影响中，台湾校园歌曲的影响力最为直接与深远；在大陆原创音乐中，又以摇滚乐(崔健为代表)对校园歌曲的产生较有推动。此外，欧美流行音乐及中国民族音乐，均对校园民谣的产生有一定的影响。</div>
  <div id="box_absolute6">
    <h2>MV精选</h2>
    <div id="box_absolute3">《南山南》——谈到《南山南》这首歌的创作灵感时，马頔表示这首歌前后大概写了三年时间，所有这三年写过的东西，把它积累起来的时候，发现潜移默化的变成了一个故事，所以这首歌的歌词就是这三年之间经历的歌词所有事情的概括。而这首歌的曲子则来源于马頔日常练琴时随便哼的一个旋律，马頔将自己原来所写的契合这首曲子的词填上去之后，便成了我们现在所听到的《南山南》。</div>
    <div id="box_absolute4">《董小姐》——歌里的故事，其实何尝不是身边人的故事，或是自己身上的故事。</div>
  </div>
<div id="box_absolute1"><img src="images/timg.jpg" width="250" height="230"></div>
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
<a href="http://www.iqiyi.com/v_19rrnk8vp8.html"target="_blank">
<div id="box_absolute8">
<img src="images/20140625173956_779.jpg" width="246" height="171">
</div>
</a>
<a href="http://www.iqiyi.com/v_19rrh61gss.html"target="_blank">
<div id="box_absolute9">
<img src="images/20160324172808.png"width="246" height="171">
</div>
</a>
</div>
</body>
</html>