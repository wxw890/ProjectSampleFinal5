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
<table border="1">
<tr>
	<tr><td>번호</td><td>제목</td><td>아이디</td>
	<td>날짜</td><td>조회수</td>
</tr>
<c:forEach var="dto" items="${list}">
	<tr>
		<td>${dto.b_num}</td>
		<td><a href="read.board1?b_seq=${dto.b_num}">${dto.b_title}</a></td>
		<td>${dto.b_writer}</td>
		<td>${dto.b_date}</td>
		<td>${dto.b_count}</td>
	</tr>
</c:forEach>
</table>
<%@include file="/footer.jsp" %>


<script>
	(function(){
		if("${bool}"==true||"${bool}"==""){
		//alert("한번 실행해봅시다!");
		
		location.href = "list.board1?bool="+true;
		}
	})();
</script>



  























