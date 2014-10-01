<!--#include file="conexao.asp" -->
<!--#include file="valida.asp" -->
<!--#include file="_includes/global.asp" -->

<%
tipo 	= request.QueryString("tipo")
id 		= request.QueryString("id")
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
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
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
'  EDITA DADOS DA NOTÍCIA
'**********************************************
Set rsEditaNoticia = Server.CreateObject("ADODB.Recordset")
rsEditaNoticia.Open "select * from "&prefixoTabela&"novidades WHERE id="&id, Conexao

%>
<h1>Editar not&iacute;cias</h1>
<form id="formCadastro" name="formCadastro" method="POST" action="update.asp?tipo=1">
<div class="desloca-esq" style="width:450px">
	<div style="height:80px"></div>
    <label for="txtTitulo">T&iacute;tulo*<br />
    <input type="text" name="txtTitulo" id="txtTitulo" class="cx-form1" value="<%=rsEditaNoticia("titulo")%>" /></label>
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
    <td width="29%">
<%
Set rsMes = Server.CreateObject("ADODB.Recordset")
rsMes.Open "select * from "&prefixoTabela&"meses WHERE mes<>'"&rsEditaNoticia("mes")&"' order by id asc", Conexao
%>    
        <label for="txtMes">M&ecirc;s*<br />
        <select name="txtMes" id="txtMes" class="cx-form3">
        <option value="<%=rsEditaNoticia("mes")%>" selected="selected"><%=rsEditaNoticia("mes")%></option>
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
        <input type="text" name="txtAno" id="txtAno" class="cx-form3" value="<%=rsEditaNoticia("ano")%>" /></label>    
    </td>
    </tr>
    </table>
</div>
<div class="fotoProduto desloca-dir"><img src="<%=enderecoFoto%><%=rsEditaNoticia("imagem")%>" width="225" alt="" />

</div>
<div class="clear"></div>
<div class="desloca-dir" style="width:225px">
<p style="text-align:center"><a href="" onclick="MM_openBrWindow('trocaImg.asp?id=<%=rsEditaNoticia("id")%>','','width=500,height=200')">Trocar a imagem</a></p>
</div>
<div class="clear"></div>

	<label for="txtHome">Texto para Home <span>(Aqui, o texto deve ser escrito e não colado e ser&aacute; exibido apenas 80 caracteres.)</span><br />
    <textarea name="txtHome" id="txtHome" class="cx-form4"><%=rsEditaNoticia("textoHome")%></textarea></label>
	
    <label for="txtResumo">Resumo <span>(Aqui, o texto deve ser escrito e não colado)</span><br />
    <textarea name="txtResumo" id="txtResumo" class="cx-form4"><%=rsEditaNoticia("resumo")%></textarea></label>
    
	<label for="txtNovidade">Not&iacute;cia</label>
    <textarea name="txtNovidade" id="txtNovidade" class="cx-form4"><%=rsEditaNoticia("noticia")%></textarea>
    <script type="text/javascript">
    CKEDITOR.replace( 'txtNovidade' );
    </script>
    
    <input name="id" id="id" type="hidden" value="<%=id%>" />
    
    <p class="t11">(*)Todos os campos s&atilde;o obrigat&oacute;rios.</p>
    <input type="image" src="images/botSalvar.jpg" name="button" id="button" value="Submit" />
</form>
<%
elseif tipo="2" then
'**********************************************
'  
'**********************************************
%>


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
