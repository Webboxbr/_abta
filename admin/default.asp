<!--#include file="conexao.asp" -->
<!--#include file="_includes/global.asp" -->

<%
erro	=	request("err")
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Iso-8859-1" />
<title><%=tituloHome%></title>
<link href="css/style_adm.css" rel="stylesheet" type="text/css" />
</head>

<body>


<div id="geral">

<div class="logo"></div>
<div style="text-align:center; font-family:Arial, Helvetica, sans-serif; color:#999; font-size:11px; text-decoration:none; margin-bottom:30px;">Gestão de conteúdo ABTA<a href="http://www.ecoplaca.com.br" style="text-align:center; font-family:Arial, Helvetica, sans-serif; color:#333; font-size:11px; text-decoration:none"></a></div>

<form id="FormLogin" name="FormLogin" method="post" action="verifica.asp">
    <fieldset>
    <label>Login:(e.mail)</label>
    <input name="Login" id="Login" type="text" class="cx-form" />
    <label>Senha:</label>
    <input name="Senha" id="Senha" type="password" class="cx-form2" />
    <input type="submit" name="button" id="button" value="OK" />
    </fieldset>
</form>

<%
if erro = "v" then
response.Write("<div style='color:#CC0000; text-align:center; font-family:Arial, Helvetica, sans-serif; font-size:12px'>Login ou senha inv&aacute;lidos. Favor tentar novamente.</div>")
end if
%>


</div>

</body>
</html>
