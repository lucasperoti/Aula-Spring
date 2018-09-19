<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<tags:template titulo="Lisda de Jogadores">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	<h1>Lista de jogadores</h1>

	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg }</div>
	</c:if>

	<table class="table">
		<tr>
			<th>Código</th>
			<th>Nome</th>
			<th>Ativo</th>
			<th>Data Nascimento</th>
			<th></th>

		</tr>
		<c:forEach items="${jogadores }" var="j">
			<tr>
				<td>${j.codigo }</td>
				<td>${j.nome }</td>
				<td>${j.ativo }</td>
				<td><fmt:formatDate value="${j.dataNascimento.time }"
						pattern="dd/MM/yyyy" /></td>
				<td><a href="<c:url value="/jogador/editar/${j.codigo}"/>"
					class="btn btn-warning">Editar</a></td>
				<td>
					<!-- Button trigger modal -->
					<button type="button" class="btn btn-danger" data-toggle="modal"
						data-target="#exampleModal">Excluir</button> <!-- Modal -->
					<div class="modal fade" id="exampleModal" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">Deseja
										Excluir?</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">...</div>
								<div class="modal-footer">
									<form action="<c:url value="/jogador/excluir"/>" method="post">
										<input type="hidden" name="codigo" id="codigoJogador">
									</form>
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Fechar</button>
									<button type="button" class="btn btn-primary">Confirmar</button>
								</div>
							</div>
						</div>
					</div>
				</td>
			</tr>
		</c:forEach>
	</table>
</tags:template>