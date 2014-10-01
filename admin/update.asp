<!--#include file="conexao.asp" -->
<!--#include file="valida.asp" -->
<!--#include file="_includes/global.asp" -->

<%
tipo 	= request.QueryString("tipo")
id 		= request("id")


if tipo="1" then
'**********************************************
'  altera dados da notícia
'**********************************************
	titulo		= request.form("txtTitulo")
	mes			= request.form("txtMes")
	ano			= request.form("txtAno")
	resumo		= request.Form("txtResumo")
	noticia		= request.form("txtNovidade")
	textoHome	= request.Form("txtHome")
	
Set rsTempMes = Server.CreateObject("ADODB.Recordset")
rsTempMes.Open "select * from "&prefixoTabela&"meses WHERE mes='"&mes&"'", Conexao

mes_or = rsTempMes("mes_or")	

set addRs=Server.CreateObject("ADODB.recordset")
	editSQL = "UPDATE "&prefixoTabela&"novidades SET titulo='"&titulo&"', mes='"&mes&"', ano='"&ano&"', resumo='"&resumo&"', noticia='"&noticia&"', mes_or='"&mes_or&"', textoHome='"&textoHome&"' WHERE id="& id
addRs.open editSQL, Conexao

response.Redirect("lista.asp?tipo=1")
%>

<%
elseif tipo="2" then
'**********************************************
'  altera a foto destaque da notícia
'**********************************************
	Set Upload = Server.CreateObject("Persits.Upload.1")
		Upload.OverwriteFiles = False
	On Error Resume Next
	
		nomeImg = File.FileName
		Upload.SetMaxSize 10048576	' Limit files to 1MB
	
		if tipoDeConexao="noAr" then
			'no ar Fica assim *************************************
			Count = Upload.Save("d:\inetpub\vhosts\abta.com.br\httpdocs\admin\uploads\thumbs")
			'******************************************************
		elseif tipoDeConexao="local" then
			'Local Fica assim *************************************
			Count = Upload.Save(upFoto)
			'******************************************************
		else
			response.Write("Verifique o arquivo Global e veja as configurações em 'tipoDeConexao'")
		end if
	
	Set File = Upload.Files(1)
	
		nomeImg = File.FileName

set addRs=Server.CreateObject("ADODB.recordset")
editSQL = "UPDATE "&prefixoTabela&"novidades SET imagem='"& nomeImg &"' WHERE id="& id
addRs.open editSQL, Conexao	

response.Write("<a href='javascript:window.close();'>Fechar Janela</a>")
'response.Redirect("editar.asp?tipo="&tipo&"id="&id)
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