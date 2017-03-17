<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/tagUri/tagUri.jsp"%>
<fmt:requestEncoding value="utf-8"/>

<section id="main-content">
	<section class="wrapper">
	
	<table border="1">
		<tr>
			<td>지역 아이디</td>
			<td>지역 이름</td>
			<td>구역 아이디</td>
		</tr>
	
		<c:forEach items="${list }" var="i">
			<tr>
				<td>${i.COUNTRY_ID }</td>
				<td>${i.COUNTRY_NAME }</td>
				<td>${i.REGION_ID }</td>
			</tr>
		</c:forEach>
		
		
	</table>
	
	</section>
</section>