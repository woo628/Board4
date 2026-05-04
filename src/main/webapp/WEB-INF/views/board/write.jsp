<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  textarea {width: 70%; height: 400px;}
  
</style>
</head>
<body>
 <main>
   <form action="">
   	<h2>글쓰기</h2>
   	<p>제목</p>
   	<input type="text" name="title" placeholder="제목을 입력하세요"><br>
   	<p>내용</p> 
   	<textarea name="content" placeholder="내용을 입력하세요"></textarea><br>  
   	<input type="submit" value="등록">
   	<input type="button" value="돌아가기" onclick="location.href='/'">
   </form>
 </main>
</body>
</html>