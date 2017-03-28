<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/tagUri/tagUri.jsp"%>
<fmt:requestEncoding value="utf-8"/>

<section id="main-content">
	<section class="wrapper">
	
	<table border="1">
		<tr>
			<td>TOPIC</td>
			<td>SEQ</td>
			<td>INFO</td>
		</tr>
	
		<c:forEach items="${list }" var="i">
			<tr>
				<td>${i.TOPIC }</td>
				<td>${i.SEQ }</td>
				<td>${i.INFO }</td>
			</tr>
		</c:forEach>
		
		
	</table>
	
	</section>
</section>