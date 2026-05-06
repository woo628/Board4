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
  table { width: 100%;}
  td { padding: 5px 10px; text-align: center;}
  td:nth-of-type(1) {background: black; color: white; border-bottom-color: white;}
  td:nth-of-type(3) {background: black; color: white; border-bottom-color: white;}
  tr:last-child> td {background: white; border: 1px solid black;}
</style>
</head>
<body>
 <main>
 	<%@include file = "/WEB-INF/include/menus.jsp" %>
 	<h2> 게시글 내용 보기</h2>
 	<table>
 	 <tr>
 	 	<td>번호</td>
 	 	<td>${board.idx}</td>
 	 	<td>조회수</td> 	
 	 	<td>${board.hit}</td> 	
 	 </tr>
 	 <tr>
 	 	<td>작성자</td>
 	 	<td>${board.writer}</td> 	 
 	 	<td>작성일</td>	
 	 	<td>${board.regdate}</td>	
 	 </tr>	 
	 <tr>
	   	<td>제목</td>
	   	<td colspan="3">${board.title}</td>
	 </tr>
	 <tr>
	   	<td>내용</td>
	   	<td colspan="3">${board.content}</td>
	 </tr>
	 <tr>
	    <td colspan="4">
	     <a href="/Board/WriteForm">새글쓰기</a>
	     <a href="/Board/UpdateForm?idx=${board.idx}">수정</a>
	     <a href="/Board/Delete?idx=${board.idx}">삭제</a>
	     <a href="/Board/List">목록</a>
	     <a href="/">돌아가기</a>
	    </td>
	 </tr>
 	</table>
 </main>
</body>
</html>