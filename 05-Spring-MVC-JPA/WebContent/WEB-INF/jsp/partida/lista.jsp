<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<tags:template titulo="Lista de Partidas">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<h1>Partidas Registradas</h1>
	
	
	<table class="table table-striped">
		<tr>
			<th>Data</th>	
			<th>Jogo</th>
			<th>Realizado</th>
		</tr>
		<c:forEach items="${partidas }" var="p">
			<tr>
				<td>
					<fmt:formatDate value="${p.data.time }"
							pattern="dd/MM/yyyy"/>
				</td>
				<td>${p.timeA} <b>${p.golsTimeA }
					X
				${p.golsTimeB } </b>${p.timeB}</td>
				<td>${P.realizado? "sim":"não"}</td>
			</tr>
		</c:forEach>
	</table>
	
</tags:template>		