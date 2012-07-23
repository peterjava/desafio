<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<LINK href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.limit-1.0.source.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>.: DESAFIO 1 :.</title>
<script type="text/javascript">
	$(document).ready(function(){
		$("#area_mensagem").limit(9999,"#contador");
	}); 
</script>
</head>
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
			<div id="conteudo_geral">
				
				<div id="conteudo_topo">
					<div id="conteudo_title">
						${param.opcao}
					</div>
					<div id="conteudo_meio">
						<br/>
						<form action="comentario/enviar" method="post">
							Nome: <input name="comentario.usuario.nome" type="text" maxlength="43" size="65"/>
							<br/><br/>
							E-mail: <input name="comentario.usuario.email" type="text" maxlength="43" size="65"/>
							<br/><br/>
							Comentário: 
							<br/>
							<input type="hidden" name="comentario.titulo" value="${param.opcao}" />
							<textarea id="area_mensagem" name="comentario.mensagem" rows="10" cols="55"></textarea>
							<br/>
							<div id="contador_geral" align="right">
								<span id="contador"></span> caracter(es) restante(s)
							</div>
							<div id="div_submit" align="center">
								<input type="submit" value="Enviar" />
							</div>
						</form>
					</div>
					<br/>
					<div id="conteudo_bottom">
					
					</div>
				</div>
				
			</div>
		
		</div>
		<div align="center" id="bottom">
			<br/>
			by Peterson Gonçalves Roberto / E-mail: pg.roberto@yahoo.com.br
		</div>
	</div>
	<script type="text/javascript">
		title = document.getElementById("conteudo_title");
		title.innerHTML = title.innerHTML.replace(/(\-)/gi, " ");
	</script>
	
</body>
</html>