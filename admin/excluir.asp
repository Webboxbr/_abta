<!--#include file="conexao.asp" -->
<!--#include file="valida.asp" -->
<!--#include file="_includes/global.asp" -->

<%
tipo 	= request.QueryString("tipo")
id 		= request("id")

set DeleteRs=Server.CreateObject("ADODB.recordset")


if tipo="1" then
'**********************************************
'  excluir noticia
'**********************************************
	sqlDelete = "DELETE FROM "&prefixoTabela&"novidades WHERE id="&id
	DeleteRs.open sqlDelete, Conexao
	response.Redirect("lista.asp?tipo=1")
%>

<%
elseif tipo="2" then
'**********************************************
'  altera a foto destaque da notícia
'**********************************************

%>

<%
elseif tipo="3" then
'**********************************************
'  
'**********************************************
%>

<%
end if
%>