<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.BoardDAO, com.crud.bean.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deletepost.jsp?id=' + id;
	}
</script>
</head>
<link rel="stylesheet" href="mycss.css" />
<body>
<%
	BoardDAO boardDAO = new BoardDAO();
	List<BoardVO> list = boardDAO.getBoardList();
	request.setAttribute("list",list);
%>
<div id="header">
	<p onclick="location.href=`index.jsp`">22200296</p>
</div>
<div id="bodyContainer">
	<h1>Project 4 CRUD Final</h1>
	<p>
		공지사항 관리 페이지: 각각 다른 학부들의 공지사항을 입력 받는 페이지
	</p>
	<div style="height: 40px"></div>
	<div>
		<button class="btn_primary" onclick="location.href=`addpostform.jsp`">
			새로운 공지사항 추가
		</button>
	</div>
</div>
<div id="cardBackground">
<c:forEach items="${list}" var="u">

<%--		<div id="cardRow">--%>
			<div class="card">
				<div class="cardTop" onclick="event.stopPropagation(); location.href='view.jsp?id=${u.getSeq()}'">
						${u.getSeq()}
					<br />
						${u.getTitle()}
					<br />
					작성자: ${u.getWriter()}
				</div>
				<div class="cardBottom">
					<p class="cardViewContext">
						${u.getContent()}
					</p>
					<div id="cardButton">
						<div id="editBtn">
							<a
									id="cardButtonLeft"
									onclick="event.stopPropagation(); location.href='editform.jsp?id=${u.getSeq()}'">
								Edit
							</a>
							<a id="cardButtonRight" href="javascript:delete_ok('${u.getSeq()}')">Delete</a>
						</div>
					</div>
				</div>
			</div>

</c:forEach>
</div>
</body>
</html>
