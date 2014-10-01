<%
nome		=	session("user")

Dim diaAtual, mesAtual, anoAtual, horaAtual, minutoAtual
diaAtual = Day(Date())
mesAtual = MonthName(Month(Date()))
anoAtual = Year(Date())
horaAtual = Hour(Time())
minutoAtual = Minute(Time())
%>

<div id="logoutSistema">Ol&aacute; <strong><%=nome%></strong>, voc&ecirc; est&aacute; logado | 
<input name="" type="button" value="Logoff" style="color:#CC0000; font-size:11px; font-weight:bold; font-family:Arial, Helvetica, sans-serif" onclick="location.href='logoff.asp'" /><br />
Iniciada em: <%=diaAtual%> de <%=mesAtual%> de <%=anoAtual%> &agrave;s <%=horaAtual%>:<%=minutoAtual%></div>
<p><span id="contadorSessao"></span></p>
