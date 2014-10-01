<!--#include file="conexao.asp" -->
<!--#include file="valida.asp" -->
<!--#include file="_includes/global.asp" -->

<%
tipo		= request.QueryString("tipo")

if tipo="1" then
	
	
	Set Upload = Server.CreateObject("Persits.Upload.1")
		Upload.OverwriteFiles = False
	'On Error Resume Next

	
	
		'nomeImg = File.FileName
		Upload.SetMaxSize 10048576	' Limit files to 1MB
	


		if tipoDeConexao="noAr" then
			'no ar Fica assim *************************************
			Count = Upload.Save("C:\Inetpub\vhosts\abta.org.br\httpdocs\admin\uploads\thumbs")
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
	
response.Redirect("novo.asp?tipo=2&img="&nomeImg)

elseif tipo="2" then

	titulo		= request.form("txtTitulo")
	mes			= request.form("txtMes")
	ano			= request.form("txtAno")
	resumo		= request.Form("txtResumo")
	noticia		= request.form("txtNovidade")
	diaAtual	= request.form("txtDiaAtual")
	mesAtual	= request.form("txtMesAtual")
	anoAtual	= request.form("txtAnoAtual")
	imagem		= request.Form("txtImagem")
	textoHome	= request.Form("txtHome")

Set rsTempMes = Server.CreateObject("ADODB.Recordset")
rsTempMes.Open "select * from "&prefixoTabela&"meses WHERE mes='"&mes&"'", Conexao

mes_or = rsTempMes("mes_or")
	
	set addRs=Server.CreateObject("ADODB.recordset")
addSQL = "INSERT INTO "&prefixoTabela&"novidades (titulo, mes, ano, resumo, noticia, diaAtual, mesAtual, anoAtual, imagem, mes_or, textoHome) values ('" & titulo & "','" & mes & "','" & ano & "','" & resumo & "','" & noticia & "','" & diaAtual & "','" & mesAtual & "','" & anoAtual & "','" & imagem & "','" & mes_or & "','" & textoHome & "')"
addRs.open addSQL, Conexao

response.Redirect("novo.asp?tipo=1&img="&nomeImg)
	
end if
%>
