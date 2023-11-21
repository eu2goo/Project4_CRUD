<%@ page import="com.crud.dao.BoardDAO" %>
<%@ page import="com.crud.bean.BoardVO" %><%--
  Created by IntelliJ IDEA.
  User: eu2goo
  Date: 2023/11/21
  Time: 10:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>view</title>
</head>
<link rel="stylesheet" href="mycss.css" />
<script>
  function delete_ok(id){
    var a = confirm("정말로 삭제하겠습니까?");
    if(a) location.href='deletepost.jsp?id=' + id;
  }
</script>
<body>
<%
  BoardDAO boardDAO = new BoardDAO();
  String id=request.getParameter("id");
  BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>
<div>
  <div id="header">
    <p onclick="location.href=`index.jsp`">22200296</p>
  </div>
  <div id="cardViewBackground">
    <div id="cardView">
      <div id="cardViewTop">
        <%=id%>
        <%=u.getSeq() %>
        <br />
        <p id="noticeTitle">
          <%=u.getTitle() %>
        </p>
      </div>
      <div id="cardViewBottom">
        <p id="cardViewContext">
          <%=u.getContent() %>
        </p>
        <div id="cardButton">
          <p><%=u.getWriter() %></p>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>
