<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<tags:template titulo="Cadastro de Jogador">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<h1>Cadastro de Jogador</h1>
	
	<c:if test="${not empty msg }">
		<div class="alert alert-success">
		${msg }
		</div>
	</c:if>
	<form action="cadastrar" method="post">
		<div class="form-group">
		<label for="id-Nome">Nome: </label>
		<input type="text" name="nome" class="form-control" id="id-titulo">
		</div>
		<div class="form-group">
			<input type="checkbox" name="ativo" id="id-ativo"> 
			<label for="id-ativo">Ativo</label>
		</div>
		<div class="form-group">
		<label for=id-data>Data de Nascimento: </label>
		<input type="text" name="dataNascimento" class="form-control" id="id-data">	
		</div>
		<input type="submit" value="Cadastrar" class="btn btn-primary">
	</form>	
	</tags:template>