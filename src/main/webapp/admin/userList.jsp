<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userList</title>
</head>
<body>
	
	<h1>userList.jsp</h1>
	
	<table border="1">
		<tr>
			<th>No.</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>가입일</th>
			<th>점주유무</th>
		</tr>
		
		<c:forEach var="dto" items="${requestScope.userList }" varStatus="no">
		<tr>
			<td>${no.count}</td>
			<td>${dto.user_id}</td>
			<td>${dto.pw}</td>
			<td>${dto.name}</td>
			<td>${dto.email}</td>
			<td>${dto.phone}</td>
			<td>${dto.regdate}</td>
			<td>${dto.owner_id}</td>
		</tr>
		</c:forEach>
	</table>
	
		<%
		int count = (int)request.getAttribute("count");
		int pageSize = (int)request.getAttribute("pageSize");
		int currentPage = (int)request.getAttribute("currentPage");
		String pno = (String)request.getAttribute("pno");
		
		if(count != 0) {
			int pageCount = (count / pageSize) + (count % pageSize == 0 ? 0 : 1);
			int pageBlock = 5;
			int startPage = ((currentPage - 1) / pageBlock) * pageBlock + 1;
			int endPage = startPage + pageBlock - 1;
			
			if(endPage > pageCount) {
				endPage = pageCount;
			}
			
			if(startPage > pageBlock) {
	%>
				<a href="./UserInfoList.ad?pno=<%=startPage - pageBlock%>">[이전]</a>
	<%
			}
			for(int i = startPage; i <= endPage; i++) {
	%>
				<a href="./UserInfoList.ad?pno=<%=i%>">[<%=i%>]</a>
	<%
			}
			if(endPage < pageCount) {
	%>
				<a href="./UserInfoList.ad?pno=<%=startPage + pageBlock%>">[다음]</a>
	<%
			}
		}
	%>
	
</body>
</html>