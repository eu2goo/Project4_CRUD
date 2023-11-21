<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="mycss.css" />
<body>
<h1>Add New Post</h1>
<div id="cardViewBackground">
<form action="addpost.jsp" method="post" id="cardView">
    <div id="cardViewTop">
Title: <input type="text" name="title" id="noticeTitle"/>
    </div>
    <div id="cardViewBottom">
        <textarea id="cardViewContext" name="content"></textarea>
        <br/>
        <label for="author">
            작성자: </label>
        <input type="text" id="author" name="writer" >
        <div id="cardButton">
            <div id="editBtn">
                <input type="submit" id="cardButtonLeft" value="Add Post">
                <button type="button" id="cardButtonRight" onclick="location.href=`index.jsp`">Cancel</button>
            </div>
        </div>
    </div>
</form>
</div>
</body>
</html>
