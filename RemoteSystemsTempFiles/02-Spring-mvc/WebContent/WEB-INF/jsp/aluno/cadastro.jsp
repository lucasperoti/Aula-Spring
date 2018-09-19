<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix= "tags" tagdir="/WEB-INF/tags"%>

<tags:template titulo="Cadastro de aluno">

	<jsp:attribute name="scripts">
		qualquer script js para ficar abaixo do jQuery
		</jsp:attribute>
		<jsp:body>
	<c:if test="${not empty a }">
	${msg}
	${a.nome}
	${a.aprovado?"Aprovado":"Tente novamente"}
	${a.sexo}
	${a.unidade}
	</c:if>

	<div class="mt-5 container border">
	<h1>Cadastro de aluno</h1>
		<form action="cadastrar" method="post">
			<div class="form-group row">

				<label class="col-1" for="id-nome">Nome: </label> 
				<input type="text" name="nome"
					id="id-nome" class="form-control col-3">
			</div>
			<div class="form-group">
				<input type="checkbox" id="id-aprovado" name="aprovado"> 
				<label	for="id-aprovado">Aprovado</label>
			</div>
			<div class="form-group">
				<input type="radio" name="sexo" id="id-fem" value="Feminino">
				<label for="id-fem">Feminino</label> 
				<input type="radio" name="sexo"id="id-masc" value="Masculino"> 
				<label for="id-masc">Masculino</label>
			</div>
			<div class="form-group">
				<label for="id-unidade" class="col-2">Unidade:</label> 
				<select name="unidade" id="id-unidade" class="form-control col-3">
					<option>Paulista</option>
					<option>Aclicamação</option>
					<option>Vila Olimpia</option>
					<option>Alphaville</option>
				</select>
			</div>
			<div>
			<input type="submit" value="Salvar" class="btn btn-primary">
			</div>	
		</form>
			</div>
	
	

	
</jsp:body>
</tags:template>
