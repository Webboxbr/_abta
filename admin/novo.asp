<!--#include file="conexao.asp" -->
<!--#include file="valida.asp" -->
<!--#include file="_includes/global.asp" -->

<%
tipo = request.QueryString("tipo")

dia = Day(Date())
mes = MonthName(Month(Date()))
ano = Year(Date())
hora = Hour(Time())
minuto = Minute(Time())
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Iso-8859-1" />
<title><%=tituloHome%></title>
<link href="css/style_adm.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" type="text/javascript" src="js/secao.js"></script>

<link href="ckeditor/_samples/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script src="ckeditor/_samples/sample.js" type="text/javascript"></script>

<script type="text/javascript" language="javascript">
	function createURL() {  
	var _form = document.getElementById("formCadastro");  
	_form.action = "add.asp?tipo="+_form.tipo.value+"&titulo="+_form.txtTitulo.value+"&mes="+_form.txtMes.value+"&ano="+_form.txtAno.value+"&noticia="+_form.txtNovidade+"&diaAtual="+_form.txtDiaAtual.value+"&mesAtual="+_form.txtMesAtual.value+"&anoAtual="+_form.txtAnoAtual.value;
	//alert(_form.action);  
	_form.submit();  
	} 
</script>
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

<%
if tipo="1" then
'**********************************************
'  INCLUI SOMENTE A THUMB DA NOTÍCIA
'**********************************************
%>
<h1>Adicionar foto para a listagem das not&iacute;cias</h1>

<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="add.asp?tipo=1">
  	
    <label for="txtArquivo">Foto destaque* <small>(essa &eacute; a foto que aparece na listagem das notícias)</small><br />
    <input name="txtArquivo" type="file" id="txtArquivo" /></label>
  
    <input type="image" src="images/botSalvar.jpg" name="button" id="button" value="Submit" />
</form>
<%
elseif tipo="2" then
'**********************************************
'  INCLUI DADOS DA NOTÍCIA
'**********************************************

imagem = request.QueryString("img")

%>
<h1>Adicionar not&iacute;cias</h1>

<form id="formCadastro" name="formCadastro" method="POST" action="add.asp?tipo=2">

<div class="desloca-esq" style="width:450px">
	<div style="height:80px"></div>
    <label for="txtTitulo">T&iacute;tulo*<br />
    <input type="text" name="txtTitulo" id="txtTitulo" class="cx-form1" /></label>
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
    <td width="29%">
<%
Set rsMes = Server.CreateObject("ADODB.Recordset")
rsMes.Open "select * from "&prefixoTabela&"meses order by id asc", Conexao
%>    
        <label for="txtMes">M&ecirc;s*<br />
        <select name="txtMes" id="txtMes" class="cx-form3">
<%
while not rsMes.eof
response.Write("<option value='"&rsMes("mes")&"'>"&rsMes("mes")&"</option>")
rsMes.MoveNext()
wend
%>        
        </select></label>
    </td>
    <td width="71%">
        <label for="txtAno">Ano*<br />
        <input type="text" name="txtAno" id="txtAno" class="cx-form3" /></label>    
    </td>
    </tr>
    </table>
</div>
<div class="fotoProduto desloca-dir"><img src="<%=enderecoFoto%><%=imagem%>" width="225" alt="" /></div>
<div class="clear"></div>

	<label for="txtHome">Texto para Home <span>(Aqui, o texto deve ser escrito e não colado e ser&aacute; exibido apenas 80 caracteres.)</span><br />
    <textarea name="txtHome" id="txtHome" class="cx-form4"></textarea></label>
	
    <label for="txtResumo">Resumo <span>(Aqui, o texto deve ser escrito e não colado)</span><br />
    <textarea name="txtResumo" id="txtResumo" class="cx-form4"></textarea></label>

	<label for="txtNovidade">Not&iacute;cia</label>
    <textarea name="txtNovidade" id="txtNovidade" class="cx-form4"></textarea>
    <script type="text/javascript">
    CKEDITOR.replace( 'txtNovidade' );
    </script>
    
    <input name="txtDiaAtual" id="txtDiaAtual" type="hidden" value="<%=dia%>" />
    <input name="txtMesAtual" id="txtMesAtual" type="hidden" value="<%=mes%>" />
    <input name="txtAnoAtual" id="txtAnoAtual" type="hidden" value="<%=ano%>" />
    <input name="txtImagem" id="txtImagem" type="hidden" value="<%=imagem%>" />
    
    <p class="t11">(*)Todos os campos s&atilde;o obrigat&oacute;rios.</p>
    <input type="image" src="images/botSalvar.jpg" name="button" id="button" value="Submit" />
</form>

<%
end if
%>

</div>

<div style="clear:both"></div>

<div class="rodape">
<!--#include file="rodape.asp" -->
</div>


</div>
 
 
 
</body>
</html>
