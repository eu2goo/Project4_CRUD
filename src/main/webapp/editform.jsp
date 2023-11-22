<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.crud.dao.BoardDAO, com.crud.bean.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<link rel="stylesheet" href="mycss.css" />
<body>

<%
	BoardDAO boardDAO = new BoardDAO();
	String id=request.getParameter("id");	
	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<div id="header">
	<p onclick="location.href=`index.jsp`">22200296</p>
</div>
<div id="cardViewBackground">
	<form id="cardView" action="editpost.jsp" method="post" >
		<input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
		<div id="cardViewTop">
			제목:
			<input
					id="noticeTitle"
					type="text"
					name="title"
					value="<%= u.getTitle()%>" />
		</div>
		<div id="cardViewBottom">
            <textarea id="cardViewContext" name="content">
<%= u.getContent()%>
             </textarea>
			<br/>

			작성자:
			<input type="text" name="writer" value="<%=u.getWriter()%>">
			<div id="cardButton">
				<div id="editBtn">
					<input type="submit" id="cardButtonLeft" value="Submit">
					<input type="button" id="cardButtonRight" value="Cancel" onclick="history.back()"/>
				</div>
				<p>9ms</p>
			</div>
		</div>
	</form>
</div>


</body>
</html>
