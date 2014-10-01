<!--#include file="conexao.asp" -->
<!--#include file="valida.asp" -->
<!--#include file="_includes/global.asp" -->

<%
id		= request("id")
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Iso-8859-1" />
<title><%=tituloHome%></title>
<link href="css/style_adm.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" type="text/javascript" src="js/secao.js"></script>
</head>

<body>
<div id="geral_Pop">
<div class="">

<h1>Altera foto para a listagem das not&iacute;cias</h1>

<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="update.asp?tipo=2&id=<%=id%>">
  	
    <label for="txtArquivo">Foto destaque* <small>(essa &eacute; a foto que aparece na listagem das notícias)</small><br />
    <input name="txtArquivo" type="file" id="txtArquivo" /></label>
  	
    
    <input type="image" src="images/botSalvar.jpg" name="button" id="button" value="Submit"  />
    
</form>

</div>
<div style="clear:both"></div>
</div>
</body>
</html>
