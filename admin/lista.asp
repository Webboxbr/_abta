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


<h1>Listagem das Not&iacute;cias</h1>


<%
' pega o nome da página
pagina = Request.ServerVariables("SCRIPT_NAME") 

'numero de registros por página
pageSize = 10

IF (len(Request.QueryString("pagina")) = 0) then
	paginaAtual = 1
Else
	paginaAtual = Cint(request.QueryString("pagina"))
End if

'contar o numero de registros que temos no banco de dados
sql = "SELECT COUNT(*) AS total FROM "&prefixoTabela&"novidades"
set rs = Conexao.Execute(sql)

'total de registros do banco de dados
recordCount = Cint(rs("total"))

'calculamos o numero de páginas
If pageCount < 1 then
	pageCount = 1
End if

pagecount = recordCount / pageSize

If (pageCount > Clng(pageCount)) then
	pagecount = Clng(pageCount) + 1
End if

pagecount = clng(pageCount)

rs.Close

sql = "SELECT * FROM "&prefixoTabela&"novidades order by ano desc, mes_or desc, id desc LIMIT " & (paginaAtual - 1) * pageSize & " , " & pageSize
set rs = Conexao.execute(sql)
%>

<div class="paginaBloco">
<h3>Você está na página <%=paginaAtual%> de <%=pageCount%></h3>

<%

IF Cint(paginaAtual) > 1 then
		response.write("<a href='"& pagina &"?pagina="& paginaAtual -1 &"'><< Anterior</a>")
End if

If pageCount <> 1 then
	
	for i=1 to pageCount 
		response.write(" <a href='"&pagina&"?pagina="&i&"'>"&i&"</a>")
	next
	
End if

IF (Cint(paginaAtual) < pageCount) then
		response.write("<a href='"& pagina &"?pagina="& paginaAtual +1 &"'>Próximo >></a>")
End if
%>

</div>	<!--fecha paginaBloco -->

<%
while not rs.eof

' aqui entra o que voce quer exibir
%>
		
        <div style="height:20px"></div>
        <div class="listaProdutos">
        	<div class="latEsq"><img src="<%=enderecoFoto%><%=rs("imagem")%>" alt="" width="225" /></div>
            <div class="meio">
				<ul>
                	<li><strong>Titulo:</strong> <%=rs("titulo")%></li>
                </ul>
  			</div>
            <div class="latDir"><a href="editar.asp?tipo=1&id=<%=rs("id")%>">Editar</a> - <a href="excluir.asp?tipo=1&id=<%=rs("id")%>">Excluir</a></div>
            
        <div style="clear:both"></div>
        </div>
<%
' final do que voce quer exibir

rs.MoveNext()
wend

rs.Close()
set rs = nothing
Conexao.Close()
set cn = nothing
%>
<div class="paginaBloco">
<h3>Você está na página <%=paginaAtual%> de <%=pageCount%></h3>

<%

IF Cint(paginaAtual) > 1 then
		response.write("<a href='"& pagina &"?pagina="& paginaAtual -1 &"'><< Anterior</a>")
End if

If pageCount <> 1 then

	for i=1 to pageCount
		response.write(" <a href='"&pagina&"?pagina="&i&"'>"&i&"</a>")
	next

End if

IF (Cint(paginaAtual) < pageCount) then
		response.write("<a href='"& pagina &"?pagina="& paginaAtual +1 &"'>Próximo >></a>")
End if
	
%>
</div>	<!--fecha paginaBloco -->


</div>

<div style="clear:both"></div>

<div class="rodape">
<!--#include file="rodape.asp" -->
</div>


</div>
 
 
 
</body>
</html>
