<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/img/favicon1.png" type="image/x-icon">
<link href="/css/common.css" rel="stylesheet"/>
<style>
  table {width: 100%; text-align: center;}
  textarea {width: 100%; height: 400px;}
  form {width: 100%;}
</style>
</head>
<body>
 <main>
 	<%@include file = "/WEB-INF/include/menus.jsp" %>
   <form action="/Board/Update" method="post">
	<h2>${menu_name.menu_name} 수정</h2>
    <input type="hidden" name="menu_id" value="${menu_id}">
   	<p>제목</p>
   	<input type="text" name="title" value="${board.title}">
   	<p>작성자</p>
   	<input type="text" name="writer" value="${board.writer}">
   	<p>내용</p> 
   	<textarea name="content"></textarea><br>  
   	<input type="submit" value="수정">
   	<a href="/Board/List?menu_id=${menu_id}"><input type="button" value="돌아가기"></a>
   </form>
 </main>
</body>
</html>