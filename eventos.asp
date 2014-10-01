<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="admin/conexao.asp" -->
<!--#include file="admin/_includes/global.asp" -->

<!DOCTYPE HTML>
<html lang="pt-br">
<head>
 	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/normalize.css">
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="author" content="Webbox">
	<meta name="description" content="Anualmente Feiras e Congressos nacionais e internacionais discutem os rumos da TV por Assinatura. Veja quais são os próximos eventos destacados pela ABTA." />
	<meta name="keywords" content="Eventos ABTA, eventos TV assinatura, eventos TV cabo, evento TV assinatura, evento TV cabo, feiras TV assinatura, feiras TV cabo, feira TV assinatura, feira TV cabo, eventos comunicação, evento comunicação" />

	<title>Eventos | Associação Brasileira de Televisão por Assinatura</title>

	<!-- Fav and touch icons -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="assets/ico/favicon.png">

</head>
<body>
	
		<!--#include file="_includes/header.asp" -->

		<section id="conteudo">
			<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<ol class="breadcrumb">
						<li><a href="#">SeAC/TV por Assinatura</a></li>
						<li class="active">Eventos</li>
					</ol>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<h1>Eventos</h1>        
        
			        <p>Todos os anos a TV por Assinatura é muito bem representada e discutida em várias partes do mundo, através de Feiras e Congressos que abordam os avanços, novidades e projeções para o futuro deste setor que nunca para. Veja quais são os próximos eventos:</p>

			        
				</div>
			</div>



<%
'abre a tavela dos eventos para comparar com as outras tabelas'
'Set rsEventosCompara = Server.CreateObject("ADODB.Recordset")
'rsEventosCompara.Open "select * from "&prefixoTabela&"eventos_descricao order by id asc", Conexao

dia = Day(Date())
mes = Month(Date())
ano = Year(Date())



hoje = DatePart("yyyy", Now) & "-" & DatePart("m", Now) & "-" & DatePart("d", Now)



'response.write(hoje)

Set rsEventoAno = Server.CreateObject("ADODB.Recordset")
rsEventoAno.Open "select * from "&prefixoTabela&"eventos_ano order by ano asc", Conexao

while not rsEventoAno.eof
%>

<div class="row">
	<div class="col-xs-12">
		<h4><%=rsEventoAno("ano")%></h4>
	</div>
</div>


	<%
	Set rsEventoMes = Server.CreateObject("ADODB.Recordset")
	rsEventoMes.Open "select * from "&prefixoTabela&"eventos_mes where idano="&rsEventoAno("id")&" and datalimite>='"&hoje&"' order by mes asc", Conexao

	while not rsEventoMes.eof
	%>
	<div class="bg-cinza">
		<div class="row">
			<div class="col-xs-12">
				<p class="negrito"><%=rsEventoMes("mesnome")%></p>
			</div>
		</div>

			<%
			Set rsEventosDesc = Server.CreateObject("ADODB.Recordset")
			rsEventosDesc.Open "select * from "&prefixoTabela&"eventos_descricao where idano="&rsEventoAno("id")&" and idmes="&rsEventoMes("id")&" and datalimite>='"&hoje&"' order by id asc", Conexao

			while not rsEventosDesc.eof
			%>
			<div class="row" style="margin-bottom:15px;">
				<div class="col-xs-12 col-sm-4 col-md-3"><a href="<%=rsEventosDesc("link")%>" target="_blank"><img src="images/eventos/<%=rsEventosDesc("foto")%>" width="188" height="97" alt="" /></a></div>
				<div class="col-xs-12 col-sm-8 col-md-9">
					<p><span class="negrito"><%=rsEventosDesc("data")%></span></p>
					<p><strong><%=rsEventosDesc("descricao")%></strong></p>
				</div>
			</div>
			<%
			rsEventosDesc.MoveNext()
			wend
			%>


	</div>
	<%
	rsEventoMes.MoveNext()
	wend
	%>


<%
rsEventoAno.MoveNext()
wend
%>



















			<!--
			<div class="bg-cinza">
				<div class="row">
					<div class="col-xs-12">
						<p class="negrito">AGOSTO</p>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12 col-sm-4 col-md-3"><a href="http://www.abta2014.com.br" target="_blank"><img src="images/eventos/6.jpg" width="188" height="97" alt="" /></a></div>
					<div class="col-xs-12 col-sm-8 col-md-9">
						<p><span class="negrito">05 à 07</span>:<strong> ABTA 2014 </strong></p>
					</div>
				</div>
			</div>
			/-->


			<div style="height:40px"></div>				

				
			</div>
			
		</section> <!-- conteudo /-->

		<!--#include file="_includes/footer.asp" -->
	

	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>

	<!-- Fonts /-->
	<script type="text/javascript">
	WebFontConfig = {
	google: { families: [ 'Exo:400,700:latin' ] }
	};
	(function() {
	var wf = document.createElement('script');
	wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
	'://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
	wf.type = 'text/javascript';
	wf.async = 'true';
	var s = document.getElementsByTagName('script')[0];
	s.parentNode.insertBefore(wf, s);
	})(); </script>

	<!-- busca /-->
	<script>
	  (function() {
	    var cx = '003686586408860510253:yecgopcebjc';
	    var gcse = document.createElement('script'); gcse.type = 'text/javascript'; gcse.async = true;
	    gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
	        '//www.google.com/cse/cse.js?cx=' + cx;
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(gcse, s);
	  })();
	</script>

	

</body>
</html>