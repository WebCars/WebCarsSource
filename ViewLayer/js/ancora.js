

/* ----------------------------------------------------

v1.3
lucasmaia.com (c)

------------------------------------------------------- */



/* %%%%%%%%%%%%%%%%%%%%%% */
/* %%% PARTE 1 - CORE %%% */
/* %%%%%%%%%%%%%%%%%%%%%% */



/* ---------------------------------------------------------------- */
/* --- Valores absolutos da Barra de Rolagem e Viewport de Tela --- */
/* ---------------------------------------------------------------- */
//Capturar valores absolutos da scrollbar e da tela do usuário. Nos casos de valores do viewport, a largura e altura da barra de rolagem devem ser desconsideradas.

var f_topBar = 10; //Valor default (caso exista uma barra fixa)

function f_clientWidth() {
	return $(window).width();
}
function f_clientHeight() {
	return $(window).height();
}
function f_scrollLeft() {
	return $(window).scrollLeft();
}
function f_scrollTop() {
	return $(window).scrollTop();
}



/* ---------------------------------- */
/* --- Verificar barra de rolagem --- */
/* ---------------------------------- */
//$(".suaDiv").hasVerticalScrollBar(); //True e false
//$(".suaDiv").hasHorizontalScrollBar(); //True e false

(function($) {
    $.fn.hasVerticalScrollBar = function() {
        return this.get(0).scrollHeight > this.innerHeight();
    }
	
	 $.fn.hasHorizontalScrollBar = function() {
        return this.get(0).scrollWidth > this.innerWidth();
    }
})(jQuery);



/* ----------------------- */
/* --- Remover acentos --- */
/* ----------------------- */
function removeAccents(text) {
	/*
	var chrEspeciais = new Array("á", "à", "â", "ã", "ä", "é", "è", "ê", "ë", 
					 "í", "ì", "î", "ï", "ó", "ò", "ô", "õ", "ö", 
					 "ú", "ù", "û", "ü", "ç", 
					 "Á", "À", "Â", "Ã", "Ä", "É", "È", "Ê", "Ë", 
					 "Í", "Ì", "Î", "Ï", "Ó", "Ò", "Ô", "Õ", "Ö", 
					 "Ú", "Ù", "Û", "Ü", "Ç");
	var chrNormais = new Array("a", "a", "a", "a", "a", "e", "e", "e", "e", 
				   "i", "i", "i", "i", "o", "o", "o", "o", "o",
				   "u", "u", "u", "u", "c", 
				   "A", "A", "A", "A", "A", "E", "E", "E", "E",
				   "I", "I", "I", "I", "O", "O", "O", "O", "O",
				   "U", "U", "U", "U", "C");
	for (index in chrEspeciais) {
		text = text.replace(chrEspeciais[index], chrNormais[index]);
	}
	return text;
	*/

	var text = text.split('');
	var textOut = new Array();
	var textLen = text.length;
	var accents = 'ÀÁÂÃÄÅàáâãäåÒÓÔÕÕÖØòóôõöøÈÉÊËèéêëðÇçÐÌÍÎÏìíîïÙÚÛÜùúûüÑñŠšŸÿýŽž';
	var accentsOut = "AAAAAAaaaaaaOOOOOOOooooooEEEEeeeeeCcDIIIIiiiiUUUUuuuuNnSsYyyZz";
	for (var y = 0; y < textLen; y++) {
		if (accents.indexOf(text[y]) != -1) {
			textOut[y] = accentsOut.substr(accents.indexOf(text[y]), 1);
		} else {
			textOut[y] = text[y];
		}
	}
	textOut = textOut.join('');
	return textOut;
}



/* -------------------------- */
/* --- Substituir espacos --- */
/* -------------------------- */

//Substituir espaços simples
function replaceAllSpaces(text,substitute) {
	if(substitute==undefined){
		substitute = "";
	}
	return text.replace(/\s+/g, substitute); //replace(/ /g, substitute);
}

//Substituir multiplos espaços
function replaceAllMultipleSpaces(text,substitute) {
	if(substitute==undefined){
		substitute = " ";
	}
	return text.replace(/\s+/g, substitute); //text = text.replace(/\s{2,}/g, substitute);
}


/* ----------------------------- */
/* --- Substituir breaklines --- */
/* ----------------------------- */
function replaceAllBreaklines(text,substitute) {
	if(substitute==undefined){
		substitute = "";
	}
	return text.replace(/(\r\n|\n|\r)/gm, substitute);
}


/* ------------------------------------------------ */
/* --- Substituir caracteres Nao-AlphaNumericos --- */
/* ------------------------------------------------ */
function replaceAllNonAlphaNumeric(text,substitute){
	if(substitute==undefined){
		substitute = "";
	}
	return text.replace(/\W/g, substitute);
}


/* ------------------------------------------- */
/* --- Substituir caracteres Nao-Numericos --- */
/* ------------------------------------------- */
function replaceAllNonNumeric(text,substitute){
	if(substitute==undefined){
		substitute = "";
	}
	//if(text.indexOf(".") > -1) {}
	return text.replace(/\D/g,substitute);
}


/* -------------------------------- */
/* --- Substituir aspas simples --- */
/* -------------------------------- */
function replaceAllSingleQuotes(text,substitute){
	if(substitute==undefined){
		substitute = "";
	}
	return text.replace(/'/g, substitute);
}


/* ------------------------------- */
/* --- Substituir aspas duplas --- */
/* ------------------------------- */
function replaceAllDoubleQuotes(text,substitute){
	if(substitute==undefined){
		substitute = "";
	}
	return text.replace(/"/g, substitute);
}


/* -------------------------------------------------------- */
/* --- Funcao para pegar o caminho da url e partes dela --- */
/* -------------------------------------------------------- */

var urlProtocol = window.location.protocol;
var urlAll = window.location.href; //document.location;
var urlAllSplit = String(urlAll).split('/');
var urlAmbiente = window.location.host; //urlAllSplit[2];
var urlSecao = "/"+urlAllSplit[3];
var urlPagina = urlAllSplit[urlAllSplit.length-1]; //urlAllSplit[4];
var urlCaminho = window.location.pathname;
if(urlSecao.replace("/","")==urlPagina){ //Se a ultima posicao (site) é igual a 3 posicao (secao), entao nao existe secao (comum quando o projeto está na raiz ou em subdominios)
	urlSecao="";
}
//alert("Ambiente: "+urlAmbiente+", secao: "+urlSecao+", pagina: "+urlPagina);
//Atencao: urlAll não é string. Para isso (no caso de teste), use .toString()



/* ------------------------------------------- */
/* --- Funcao para pegar parametros de url --- */
/* ------------------------------------------- */

//Fonte jQuery:
//http://jquery-howto.blogspot.com/2009/09/get-url-parameters-values-with-jquery.html

$.extend({
    getUrlVars: function () {
        var vars = [], hash;
        var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
        for (var i = 0; i < hashes.length; i++) {
            hash = hashes[i].split('=');
            vars.push(hash[0]);
            vars[hash[0]] = hash[1];
        }
        return vars;
    },
    getUrlVar: function (name) {
        return $.getUrlVars()[name];
    }
});


/* Como fazer:
var allVars = $.getUrlVars();
var byName = $.getUrlVar('meuParameter');
*/

/* PS:
Use toString() para testar se a url não tem parametros: if($.getUrlVars().toString()==urlAll.toString()){}
*/



/* -------------------------------------------- */
/* --- Retornar url sem parametro informado --- */
/* -------------------------------------------- */
//Funcao que retorna url sem o parametro informado

function urlSemParametro(param) {
	var retorno=urlAll.toString();
	if(urlAll.toString().indexOf(param+"=")!=-1) { //para verificar se existe param
		var paramReject = urlAll.toString().split(param+"=")[1] + "";
		retorno = urlAll.toString().replace("?"+param+"="+paramReject,"").replace("&"+param+"="+paramReject,"");
	}
	return retorno;
}



/* ----------------------------------- */
/* --- Verificar existencia de url --- */
/* ----------------------------------- */
function urlExists(url) {
	var http = new XMLHttpRequest();
	http.open('HEAD', url, false);
	http.send();
	return http.status!=404;
}
/*
Como fazer:
1) UrlExists(url) retornara true ou false, mas nao considera paginas customizadas para retornos de erro do servidor. Para isso, use myAjax.
*/



/* --------------------------------- */
/* --- Custom Ajax com callbacks --- */
/* --------------------------------- */
//Le e retorna o conteudo consultado ou que a url nao existe/invalida

function myAjax(url,crossvar) {
	$.get(url)
	.done(function(data) {
		if ($.isFunction(window.myAjaxDone)) {
			myAjaxDone(data,crossvar);
		}
	}).fail(function() { //Url com erro
		if ($.isFunction(window.myAjaxFail)) {
			myAjaxFail(crossvar);
		}
	})
}
/*
Como fazer:
1) Chame a funcao: myAjax(url*,crossvar), onde 'url' deve ser um endereco completo (http) e 'crossvar' é um parametro que sera retornado no callback (crossvar nao é obrigatorio)
2) Implemente duas funcoes: myAjaxDone(data,crossvar) e myAjaxFail(crossvar), onde 'data' é o conteúdo da pagina e 'crossvar' é o parametro que foi recebido e está sendo retornado (sem alteracoes). Nenhum parametro é obrigatorio.
   Recomenda-se criar essas funcoes-callback fora de arquivos globais (deixa-las em paginas especificas). Dessa forma, elas podem ser implementadas inumeras vezes e de acordo com o que se deseja
   A primeira funcao (myAjaxDone) sera chamada apenas se a url testada existir, enquato a segundo (myAjaxFail) sera chamada quando ela nao existir.

   ATENCAO: Mesmo existindo, uma pagina pode ser apenas um html renderizado/redirecionado pelo servidor para exibir uma mensagem de erro (ou seja, a pagina existe, mas apenas curstomiza paginas-default de erro)
   Por isso, considere testes adicionais dentro de myAjaxDone, do tipo:
   if(data.toLowerCase().indexOf("server error 404")==-1 || data.toLowerCase().indexOf("server error 500")==-1  || data.toLowerCase().indexOf("javax.servlet.servletexception")==-1 || data.toLowerCase().indexOf("an unexpected error happened")==-1) {
      alert("Página com erro!");
   }
*/


/* ----------------------------------------------------------- */
/* --- Procurar parametros de uma assinatura de uma funcao --- */
/* ----------------------------------------------------------- */
//Funcao para retirar acentos
function getParameterFunc(obj,ev,func,pos) {
	var retorno;
	var funcao = obj.attr(ev).toString();

	/*
	var assinaturaInit = funcao.indexOf(func+"("); //Posicao onde inicia a assinatura
	var assinaturaEnd = funcao.split(func+"(")[1].indexOf(")"); //Posicao onde termina a assinatura
	var assinatura = funcao.substr(assinaturaInit,assinaturaEnd);
	alert(assinaturaInit + " / " + Number(assinaturaInit+assinaturaEnd) + " / " + assinatura);
	*/

	var assinatura = "";
	var assinaturaInit = funcao.split(func+"("); //Onde inicia a assinatura
	var assinaturaEnd = assinaturaInit[1].split(")"); //Onde termina a assinatura
	assinaturaEnd = assinaturaEnd[assinaturaEnd.length-1]; //Pega a penultima parte. O resto é lixo
	assinatura = assinaturaInit[1].split(")"+assinaturaEnd)[0];
	
	if(pos=="all" || pos==undefined){

		retorno = assinatura;
	}else{
		if(assinatura.split(",")[pos-1]==undefined){
			retorno = "";

		}else{
			retorno = assinatura.split(",")[pos-1].toString();
		}
	}
	return retorno;
}


/* ---------------------------------------- */
/* --- Salvar dados localmente - Cookie --- */
//* ---------------------------------------- */

//Funcao para salvar cookie
function saveCookie(c_name,value){
	document.cookie = c_name+'='+value;
}

//Funcao para pegar cookie
function getCookie(c_name) {
	var i,x,y,ARRcookies=document.cookie.split(";");
	for (i=0;i<ARRcookies.length;i++) {
		x=ARRcookies[i].substr(0,ARRcookies[i].indexOf("="));
		y=ARRcookies[i].substr(ARRcookies[i].indexOf("=")+1);
		x=x.replace(/^\s+|\s+$/g,"");
		if (x==c_name) {
			return unescape(y);
		}
	}
}



/* -------------------------- */
/* --- Detectar navegador --- */
/* -------------------------- */

var browserName = navigator.appName;
//browserName: 'Microsoft Internet Explorer' or else
//Debug: alert(browserName);

var browserVersion = navigator.appVersion
//Debug: alert(browserVersion);

/*
Observações:
PS1: Info: http://www.javascriptkit.com/javatutors/navigator.shtml
PS2: Identificador nativo do jQuery: http://api.jquery.com/jQuery.browser/
*/



/* ------------------------------------ */
/* --- Detectar navegadores antigos --- */
/* ------------------------------------ */
//Bad Browser:
function badBrowser(){
	//Fonte
	//http://blog.team-noir.net/2009/06/fight-old-browsers-warning-with-jquery/
	//http://blog.team-noir.net/2010/05/jquery-badbrowser-update-version-1-4/
	//badBrowser Version 1.4

	var userAgent = navigator.userAgent.toLowerCase();
	
	// Check for Microsoft Internet Explorer 8.0
	if ($.browser.msie && parseInt($.browser.version, 10) <= 8) {
		return true;
	}
	// Check for Opera 9.5
	if ($.browser.opera && ($.browser.version *10) <= 95) {
		return true;
	}
	// Check for Mozilla Firefox 6.0
	if (/firefox[\/\s](\d+\.\d+)/.test(userAgent)) {
		var ffversion = Number(RegExp.$1);
		if (ffversion <= 6) {
			return true;
		}
	}
	// Check for Safari < Version 4.0
	if (/safari[\/\s](\d+\.\d+)/.test(userAgent) && !/chrome[\/\s](\d+\.\d+)/.test(userAgent)) {
		var safari = userAgent.indexOf('version');
		if (safari > -1) {
			var snip1 = safari+8;
			var version = userAgent.substring(snip1, (snip1+1));
			if (version <= 4) {
				return true;
			}
		}
	}
	// Check for Chrome < Version 1.0
	var chrome = userAgent.indexOf('chrome');
	if (chrome > -1) {
		var snip1 = chrome+7;
		var version = userAgent.substring(snip1, (snip1+1));
		if (version <= 1) {
			return true;
			}
	}
	
	return false;
}



/* ------------------------ */
/* --- Detectar mobile  --- */
/* ------------------------ */

function is_mobile() {
	if( navigator.userAgent.match(/Android/i)
		 || navigator.userAgent.match(/webOS/i)
		 || navigator.userAgent.match(/iPhone/i)
		 || navigator.userAgent.match(/iPad/i)
		 || navigator.userAgent.match(/iPod/i)
		 || navigator.userAgent.match(/BlackBerry/i)
		 || navigator.userAgent.match(/Windows Phone/i)
		 || navigator.userAgent.match(/ZuneWP7/i)
		 ) {
            return true;
    }else{
	    return false;
	}
}



/* ----------------------- */
/* --- Detectar flash  --- */
/* ----------------------- */
function thereis_flash(elem){
	if(elem.find("object").length>0 || elem.find(".alternativeSwfObject").length>0 || elem.find("script").length>0){ //PS: 'object' é o flash puro, '.alternativeSwfObject' é a div esperada do swfobject - framework suportado pela Google - e 'script' para jwplayer
		return true;
	}else{
		return false;
	}
}


/* ------------------------------ */
/* --- Verificar parents, pai --- */
/* ------------------------------ */
//$(item).hasAncestor('.meu_elemento').ANYTHING();

$.fn.hasAncestor = function(a) {
    return this.filter(function() {
        return !!$(this).closest(a).length;
    });
};



jQuery(window).load(function(){ //jQuery(document).ready(function(){
	/* ----------------------------- */
	/* --- Impressao Via Browser --- */
	/* ----------------------------- */	
	//Excecoes e particularidades da impressao via browser
	
	function warningPrintBefore() {
		//acao antes da impressao
	}
	
	function warningPrintAfter() {
		//window.location.reload();
	}
	
	window.onbeforeprint = warningPrintBefore;
	window.onafterprint = warningPrintAfter;


	/* ---------------------------------- */
	/* --- Função recursiva após ajax --- */
	/* ---------------------------------- */
	$('body').bind('paginaCarregada',function(){
		//perfilarImagens();
		//ready_resumo();
		//ready_breakline();
		//equalDivs();
		//ui_copyFunc();
	});
});



/* --------------------------------- */
/* --- Função Geral de ancoragem --- */
/* --------------------------------- */
function goToByScroll(elementAnchor){ //funcao para ancora-jquery
		//$('html,body').animate({ scrollTop: $(elementAnchor).offset().top - f_topBar},'slow');
	$('html,body').animate({
		scrollTop: $(elementAnchor).offset().top - f_topBar
	}, 'slow', function() {
		//callback
			});
}






/* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% */
/* %%% PARTE 2 - FUNCIONALIDADES %%% */
/* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% */



/* ------------------------------ */
/* --- Âncora animada em Html --- */
/* ------------------------------ */
//Links animados dentro da mesma página, versão Html

function ready_ancora() {
	$('a[href*=#]').click(function(){
		var point = $(this).attr("href").split("#")[1];
		if(point.split("?")[1]!=undefined){ //Se tiver parametros (ex: #tralha?param=value), retiramos da variavel
			point=point.split("?")[0];
		}
		if($("a[name="+point+"]").length != 0){ // Fazemos a ancoragem animada apenas se existir um <a name> correspondente. (Alguns links pondem conter Tralha, sem ser ancoras - como a funcao de abas do portal)
			goToByScroll("a[name="+point+"]");
			//return false;
		}
	});
	
	//Extensao
	extension_ancoraAuto();
}

$('a[href*=#]').ready(function() {
	ready_ancora()
});


/* ------------------------------------------------------ */
/* --- Ancora onload-by-param em paginas (Parametros) --- */
/* ------------------------------------------------------ */
// Ancora onload-by-param em paginas (Parametros)
// Se a url possuir parâmetros, a página será ancorada para .ui_anchorPoint (independente do parâmetro). Ex: para uma pesquisa pronta
	
function extension_ancoraAutoParam(){
	//if( $.getUrlVars()!="aba" && $.getUrlVars()!="aba,subaba" && $.getUrlVar("idAlb")==undefined && $.getUrlVar("idFot")==undefined && $.getUrlVar("idAudio")==undefined){ // Nao deve rolar: 1) Se tiver APENAS os paramentros aba ou aba e subaba; 2) Se ENCONTRAR os parametros de: album, foto e audio
		var urlAncorar = String(document.location).split('?'); //Quebrar em parametro

		if (urlAncorar[1] != undefined) { //Se tiver parametros, entao rodamos a rolagem de pagina
			$(".ui_anchorPoint:visible:first").trigger("click"); //Se for accordion simulamos o click
			window.setTimeout('goToByScroll(".ui_anchorPoint:visible:first");', 500);
		}
	//}
}

/* ---------------------------------------- */
/* --- Ancora onload-simples em paginas --- */
/* ---------------------------------------- */
// A tralha pode ancorar ancoras simples, class ou ids

function extension_ancoraAutoTralha(){
	var getTralha = decodeURIComponent(procurarTralha[1]);
	if(getTralha.split("?")[1]!=undefined){ //Se tiver parametro nessa tralha (ex: #tralha?param=value), retiramos ele da variavel
		getTralha=getTralha.split("?")[0];
	}
	var getTralhaSelector="";

	//primeiro, posicionamos no topo para depois poder rolar
	//window.scrollTo(0,0);
	//window.scrollBy(0,0);
	if($("a[name="+getTralha+"]").length > 0) { //Se existir a ancora-padrao citada na tralha da url
		getTralhaSelector = "a[name="+getTralha+"]"; //Original-anchor

	}else if($("."+getTralha).length > 0 || $("#"+getTralha).length > 0) { //Se nao existir, buscamos por class ou id (É possivel usar #tralha para ancorar seletores)
		if($("#"+getTralha).length > 0){
			getTralhaSelector = "#"+getTralha; //Id-anchor
		}else{
			getTralhaSelector = "."+getTralha; //Class-anchor
		}
	
	}else{ //Se nao tem ancora, nem class ou id, tentamos pela logica do ui_anchorPoint
		extension_ancoraAutoParam();
	}

	//Ancoragem animada:
	//window.setTimeout('goToByScroll("'+getTralhaSelector+'");', 600);
	
	window.setTimeout(function() {
		//Ancoragem animada:
		goToByScroll(getTralhaSelector);

		
	}, 600);
}


/* --- Gatilho --- */

var procurarTralha = String(document.location).split('#'); //Quebrar em tralha
function extension_ancoraAuto(){
	if(procurarTralha[1] == undefined){ //Se nao tiver tralha, temos que retroceder o valor da barra do topo
		$(".ui_anchorPoint:last-child").ready(function() {
			extension_ancoraAutoParam();
		});
	} else if(procurarTralha[1] != undefined){ //Apenas se tiver uma tralha
		jQuery(document).ready(function(){
			extension_ancoraAutoTralha();
		});
	}
}




































































