<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<tags:template titulo="Cadastro de Jogador">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


	<h1>Editar Jogador</h1>
	
	
	
	<c:url value="/jogador/editar" var="acao"/>
	<form:form action="${acao }" method="post" commandName="jogador">
	<form:hidden path="codigo"/>
	
		<div class="form-group">
			<form:label path="nome">Nome</form:label>
			<form:input path="nome" cssClass="form-control"/>
		</div>
		
		<div class="form-group">
		<form:checkbox path="ativo"/>
		<form:label path="nome">ativo</form:label>
		</div>
		
		<div class="form-group">
			<form:label path="dataNascimento">Data Nascimento</form:label>
			<form:input path="dataNascimento" cssClass="form-control"/>
		</div>
		
		<input type="submit" value="salvar" class="btn btn-primary">
		</form:form>
</tags:template>	