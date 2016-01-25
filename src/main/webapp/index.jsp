<%@page import="org.springframework.http.HttpRequest"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page import="mybatis.BoardManager"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.List" %>
<%@page import="com.hta.board.repository.BoardDto" %>
<%@page import = "java.io.PrintWriter" %>

<%@include file="/header.jsp"%>

<h1>공지사항</h1>
<c:if test="${!list.isEmpty()}">
<table border="1">
<tr>
	<tr><td>번호</td><td>제목</td><td>아이디</td>
	<td>날짜</td><td>조회수</td>
</tr>
<c:forEach var="dto" items="${list}" begin="0" end="4" step="1"><!-- 0부터 4까지 즉 5번 반복한다. 1씩 증가로... -->
	<tr>
		<td>${dto.b_num}</td>
		<td><a href="read.board1?b_seq=${dto.b_num}">${dto.b_title}</a></td>
		<td>${dto.b_writer}</td>
		<td>${dto.b_date}</td>
		<td>${dto.b_count}</td>
	</tr>
</c:forEach>
</table>
</c:if>
<c:if test="${list.isEmpty()}">
	<h2 style="color: red;">현재 등록된 공지사항이 없습니다.</h2>
</c:if>
<%@include file="/footer.jsp" %>


<script>
	(function(){
		if("${bool}"==true||"${bool}"==""){
		//alert("한번 실행해봅시다!");
		
		location.href = "list.board1?bool="+true;
		}
	})();
</script>



  























