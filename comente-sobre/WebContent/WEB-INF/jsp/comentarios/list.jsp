<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<LINK href="../css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/main.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>.: DESAFIO 1 :.</title>
</head>
<body>
	
</body>

<body>
	<div id="wrapper">
		<div align="center" id="geral">
			<div id="topo" align="left">
				<div id="title_topo" align="center" onclick="goHome();" title="Voltar pra Home">
					<span class="title_topo1">#Desafio 1</span>
					<br/>
					<span class="title_topo2">Faça o seu comentário!</span>
				</div>
			</div>
			<br/><br/>
			<c:if test="${empty comentarioList}">
				<div id="conteudo_geral">
					<div id="conteudo_topo">
						<div id="conteudo_title">
							Ops! Página não encontrada
						</div>
						<div id="conteudo_meio">
							<br/>
							Por favor, verifique se digitou corretamente o endereço.
						</div>
						<br/>
						<div id="conteudo_bottom">
						</div>
					</div>
				</div>
			</c:if>
			<c:if test="${not empty comentarioList}">
				<c:forEach var="comentario" items="${comentarioList}">
					<div id="conteudo_geral">
						
						<div id="conteudo_topo">
							<div id="conteudo_title">
								${comentario.titulo}
							</div>
							<div id="lista">
								<div align="center" id=data>
									<div id="dia">
										<fmt:formatDate pattern="dd" value="${comentario.data}"/>
									</div>
									<div id="mes">
										<fmt:formatDate pattern="MM" value="${comentario.data}"/>
									</div>
									<div id="ano">
										<fmt:formatDate pattern="yy" value="${comentario.data}"/>
									</div>
								</div>
								<div id="mensagem">
									<div id="autor">
										Por: 
										<c:if test="${not empty comentario.usuario.nome }">
											${comentario.usuario.nome}
										</c:if>
										<c:if test="${empty comentario.usuario.nome }">
											anônimo
										</c:if>
										<c:if test="${not empty comentario.usuario.email }">
											- ${comentario.usuario.email}
										</c:if>
										  
									</div>
									<br/>
									${comentario.mensagem}
									<br/>
								</div>
								
							</div>
							<br/>
							<div id="conteudo_bottom">
							
							</div>
						</div>
							
					</div>
					<br/><br/>
				</c:forEach>
			</c:if>
		
		</div>
		<div align="center" id="bottom">
			<br/>
			by Peterson Gonçalves Roberto / E-mail: pg.roberto@yahoo.com.br
		</div>
	</div>
</html>