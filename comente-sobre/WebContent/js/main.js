function enviar(){
	
	var opcao = document.getElementById("opcao").value;
	
	var form = document.getElementById("form_opcao");
	form.action = replaceAll(opcao);
	
	if(opcao=='' || (opcao.match(/^\s+$/))){
		displayError();
		return false;
	}
	hideError();
	form.submit();
	
}

function replaceAll(texto){
    //pega valor do campo e converte para letras minúsculas
    texto = texto.toLowerCase();
    //faz as substituições dos acentos
    texto = texto.replace(/[á|ã|â|à]/gi, "a");
    texto = texto.replace(/[é|ê|è]/gi, "e");
    texto = texto.replace(/[í|ì|î]/gi, "i");
    texto = texto.replace(/[õ|ò|ó|ô]/gi, "o");
    texto = texto.replace(/[ú|ù|û]/gi, "u");
    texto = texto.replace(/[ç]/gi, "c");
    texto = texto.replace(/[ñ]/gi, "n");
    //faz a substituição dos espaços e outros caracteres por - (hífen)
    texto = texto.replace(/\W/gi, "-");
    // remove - (hífen) duplicados
    texto = texto.replace(/(\-)\1+/gi, "-");
    if(texto.charAt(0) == '-'){
    	texto = texto.substring(1,texto.length);
    }
    if(texto.charAt(texto.length-1) == '-'){
    	texto = texto.substring(0,texto.length-1);
    }
    return texto;
}

function goHome(){
	window.open('/comente-sobre','_self');
}

function displayError(){
	var erro = document.getElementById("erro");
	erro.innerHTML = "Campo Obrigat&oacute;rio!";
	erro.style.display = "block";
	
	
}
function hideError(){
	var erro = document.getElementById("erro");
	erro.innerHTML = "";
	erro.style.display = "none";
	
}