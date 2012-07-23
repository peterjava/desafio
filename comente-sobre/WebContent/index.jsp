<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<LINK href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/main.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>.: DESAFIO 1 :.</title>
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
						Informe sobre o que gostaria de comentar
					</div>
					<div id="conteudo_meio">
						<br/>
						<form id="form_opcao" onsubmit="return enviar();" method="post">
							<input id="opcao" name="opcao" type="text" size="65" maxlength="43"/>
							<input type="submit" value="OK">
						</form>
						<div id="erro"></div>
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
	
</body>
</html>