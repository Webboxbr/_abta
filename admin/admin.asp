<!--#include file="conexao.asp" -->
<!--#include file="valida.asp" -->
<!--#include file="_includes/global.asp" -->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Iso-8859-1" />
<title><%=tituloHome%></title>
<link href="css/style_adm.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" type="text/javascript" src="js/secao.js"></script>
</head>

<body onLoad="javascript:reiniciarContadorSessao();">


<div id="geral">

<div class="cabecalho">
<div class="logoMenor" onclick="location.href='admin.asp'"></div>

<div class="logoff"><!--#include file="topo.asp" --></div>

<div style="clear:both"></div>

</div>

<div class="menu">

<!--#include file="menu.asp" -->


</div>

<div class="corpo">


<h1>Resumo</h1>
<%
'*************************************
'   CONTADORES
'*************************************
Set ContaNovidades = Conexao.execute("SELECT COUNT(*) FROM "&prefixoTabela&"novidades")
'Set ContaInscricoesAprovadas = Conexao.execute("SELECT COUNT(*) FROM "&prefixoTabela&"participacao WHERE finalizado='s' AND aprovado='s'")
'Set ContaInscricoesReprovadas = Conexao.execute("SELECT COUNT(*) FROM "&prefixoTabela&"participacao WHERE finalizado='s' AND aprovado='n'")
'*************************************
'   CONTADORES
'*************************************
%>

<div class="tabelaEstatisticas"> 
<table width="750" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="55" class="bordaBotton">&nbsp;</td>
<td width="292" class="bordaBotton"><% response.Write("Novidades Cadastradas no site") %></td>
<td width="403" class="bordaBotton"><% response.write(" ("& ContaNovidades.fields(0) &")") %></td>
</tr>
</table>
</div>



</div>

<div style="clear:both"></div>

<div class="rodape">
<!--#include file="rodape.asp" -->
</div>


</div>
 
 
 
</body>
</html>
