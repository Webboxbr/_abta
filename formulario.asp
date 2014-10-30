<!DOCTYPE HTML>
<html lang="pt-br">
<head>
 	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/normalize.css">
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="author" content="Webbox">
	<meta name="description" content="">
	<meta name="keywords" content="" />

 	<title>ABTA - Filiação | Associe-se à ABTA</title>

	<!-- Fav and touch icons -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="assets/ico/favicon.png">


<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<!--formularios http://uniformjs.com -->
<script src="jquery/jquery.uniform.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" charset="utf-8">
  $(function(){
	$("select").uniform();
	$(":radio,:checkbox").uniform();
  });
</script>
<!--<link rel="stylesheet" href="css/uniform.default.css" type="text/css" media="screen">-->
<!--formularios http://uniformjs.com -->



</head>
<body>
	
		<!--#include file="_includes/header.asp" -->

		<section id="conteudo">
			<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<ol class="breadcrumb">
						<li><a href="#">ABTA</a></li>
						<li><a href="filiacao.asp">Filiação</a></li>
						<li class="active">Formulário</li>
					</ol>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<h1>Formulário de Filiação</h1>

					<form id="FrmFormulario" name="form2" method="post" action="enviaFormulario.asp">
					
					<div class="form-group">						
						<label for="txtRazaoSocial">Razão social (*)</label>
				    	<input type="text" name="txtRazaoSocial" id="txtRazaoSocial" class="form-control" />						
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-4">
								<label for="txtCNPJ">CNPJ (*)</label>
					    		<input type="text" name="txtCNPJ" id="txtCNPJ" class="form-control" />
							</div>

							<div class="col-xs-12 col-sm-12 col-md-8">
								<label for="txtEndereco">Endereço (*)</label>
					    		<input type="text" name="txtEndereco" id="txtEndereco" class="form-control" />
							</div>
						</div>						
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-4">
								<label for="txtCEP">CEP (*)</label>
					    		<input type="text" name="txtCEP" id="txtCEP" class="form-control" />
							</div>

							<div class="col-xs-12 col-sm-12 col-md-4">
								<label for="txtCidade">Cidade (*)</label>
					    		<input type="text" name="txtCidade" id="txtCidade" class="form-control" />
							</div>

							<div class="col-xs-12 col-sm-12 col-md-4">
								<label for="txtEstado">Estado (*)</label>
					    		<input type="text" name="txtEstado" id="txtEstado" class="form-control" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-4">
								<label for="txtTelefone">Telefone (*)</label>
					    		<input type="text" name="txtTelefone" id="txtTelefone" class="form-control" />
							</div>

							<!-- <div class="col-xs-12 col-sm-12 col-md-4">
								<label for="txtFax">Fax (*)</label>
					    		<input type="text" name="txtFax" id="txtFax" class="form-control" />
							</div> -->

							<div class="col-xs-12 col-sm-12 col-md-4">
								<label for="txtWebsite">Website (*)</label>
					    		<input type="text" name="txtWebsite" id="txtWebsite" class="form-control" />
							</div>

							<div class="col-xs-12 col-sm-12 col-md-4">
								&nbsp;
							</div>
						</div>
					</div>

					<!-- <div class="form-group">
						<div class="row">
							 <div class="col-xs-12 col-sm-12 col-md-6">
								<label for="txtEmail">E-mail (*)</label>
					    		<input type="text" name="txtEmail" id="txtEmail" class="form-control" />
							</div> 

							<div class="col-xs-12 col-sm-12 col-md-6">
								<label for="txtWebsite">Website (*)</label>
					    		<input type="text" name="txtWebsite" id="txtWebsite" class="form-control" />
							</div>
						</div>
					</div> -->					    
					
					<h2 class="t14 laranja negrito arial">REPRESENTANTE OFICIAL</h2>

					<div class="form-group">
						<label for="txtNome">Nome (*)</label>
					  	<input type="text" name="txtNome" id="txtNome" class="form-control" />
					</div>

					<div class="form-group">
						<label for="txtEmail2">E-Mail (*)</label>
					  	<input type="text" name="txtEmail2" id="txtEmail2" class="form-control" />
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-4">
								<label for="txtTelefone2">Telefone (*)</label>
					    		<input type="text" name="txtTelefone2" id="txtTelefone2" class="form-control" />
							</div>

							<div class="col-xs-12 col-sm-12 col-md-4">
								<label for="txtFax2">Fax (*)</label>
					    		<input type="text" name="txtFax2" id="txtFax2" class="form-control" />
							</div>

							<div class="col-xs-12 col-sm-12 col-md-4">
								&nbsp;
							</div>
						</div>
					</div>
					 
					<h2 class="t14 laranja negrito arial">CATEGORIAS ASSOCIATIVAS</h2>					

					<label class="radio-inline t14 verde">
						<input name="opCA" type="radio" value="1" id="opt1" onclick="javascript:void(0);"  />OPERADORAS
					</label>
					<label class="radio-inline t14 verde">
						<input name="opCA" type="radio" value="2" onclick="javascript:void(0);" id="opt2" />PROGRAMADORAS
					</label>
					<label class="radio-inline t14 verde">
						<input name="opCA" type="radio" value="3" onclick="javascript:void(0);" id="opt3" />PRESTADORES DE SERVIÇO
					</label>
					<label class="radio-inline t14 verde">
						<input name="opCA" type="radio" value="4" onclick="javascript:void(0);" id="opt4" />FORNECEDORES DE EQUIPAMENTOS
					</label>
					<label class="radio-inline t14 verde">
						<input name="opCA" type="radio" value="5" onclick="javascript:void(0);" id="opt5" />INSTITUCIONAIS
					</label>
					
					<div id="op1off">
					<p class="t12 cinza-claro sem-esp">&nbsp;</p>
					<img src="images/camposFormulario/cOff.jpg" width="404" height="22" alt="" style="display:none;" /></div>

						<div id="op1">
							<p class="t12 cinza-claro sem-esp">Selecione a opção adequada (por numero de assinantes)</p>
							<select name="selectOperadoras" id="selectOperadoras" class="form-control">
							<option value="Até 15.000 - R$ 687,00">Até 15.000 - R$ 687,00</option>
							<option value="De 15.001 a 60.000 - R$ 1.840,00">De 15.001 a 60.000 - R$ 1.840,00</option>
							<option value="De 60.001 a 200.000 - R$ 4.590,00">De 60.001 a 200.000 - R$ 4.590,00</option>
							<option value="De 200.001 a 500.000 - R$ 11.516,00">De 200.001 a 500.000 - R$ 11.516,00</option>
							<option value="De 500.001 a 1.000.000 - R$ 16.157,00">De 500.001 a 1.000.000 - R$ 16.157,00</option>
							<option value="De 1.000.001 a 1.500.000 - R$ 23.015,00">De 1.000.001 a 1.500.000 - R$ 23.015,00</option>
							<option value="De 1.500.001 a 2.500.000 - R$ 24.853,00">De 1.500.001 a 2.500.000 - R$ 24.853,00</option>
							<option value="De 2.500.001 a 3.500.000 - R$ 27.500,00">De 2.500.001 a 3.500.000 - R$ 27.500,00</option>
							<option value="A partir de 3.500.001 - R$ 29.443,00">A partir de 3.500.001 - R$ 29.443,00</option>
							</select>
						</div>

						<div id="op2">
							<p class="t12 cinza-claro sem-esp">Selecione a opção adequada (por numero de assinantes)</p>
							<select name="selectProgramadoras" id="selectProgramadoras" class="form-control">
							<option value="Até 400.000 - R$ 687,00">Até 400.000 - R$ 687,00</option>
							<option value="400.001 a 1000.000 - R$ 1.840,00">400.001 a 1000.000 - R$ 1.840,00</option>
							<option value="1000.001 a 2.000.000 - R$ 2.991,00">1000.001 a 2.000.000 - R$ 2.991,00</option>
							<option value="2.000.001 a 3.000.000 - R$ 4.589,00">2.000.001 a 3.000.000 - R$ 4.589,00</option>
							<option value="3.000.001 a 15.000.000 - R$ 6.909,00">3.000.001 a 15.000.000 - R$ 6.909,00</option>
							<option value="A partir de 15.000.001 - R$ 10.313,00">A partir de 15.000.001 - R$ 10.313,00</option>
							</select>
						</div>

						<div id="op3">
							<p class="t12 cinza-claro sem-esp">Contribuição Mensal</p>
							<select name="selectPrestServ" id="selectPrestServ" class="form-control">
							<option value="R$ 1.031,00 (até 30 funcionários)">R$ 1.031,00 (até 30 funcionários)</option>
							<option value="R$ 1.718,00 (acima de 30 funcionários)">R$ 1.718,00 (acima de 30 funcionários)</option>
							</select>
						</div>

						<div id="op4">
							<p class="t12 cinza-claro sem-esp">&nbsp;</p>
							<select name="selectFornEquip" id="selectFornEquip" class="form-control">
							<option value="Contribuição Mensal - R$ 1.718,00">Contribuição Mensal - R$ 1.718,00</option>
							</select>
						</div>

						<div id="op5">
							<p class="t12 cinza-claro sem-esp">&nbsp;</p>
							<select name="selectInstitucionais" id="selectInstitucionais" class="form-control">
							<option value="R$ 515,00">R$ 515,00</option>
							</select>
						</div>

					


					<div style="height:30px"></div>
					<p class="t12 cinza-claro italico">* campo obrigatório</p>
					<div style="height:20px"></div>


					<input type="image" src="images/botoes/botEnviar.jpg" name="button2" id="button2" value="Submit" />
					</form>

			        
				</div>
			</div>

			<div style="height:40px"></div>				

				
			</div>
			
		</section> <!-- conteudo /-->

		<!--#include file="_includes/footer.asp" -->
	

	
	<script src="assets/js/bootstrap.js"></script>





<script>
$('#opt1').click(function() {
	$('#op1off').fadeOut('fast', function() {
		$('#op2').fadeOut('fast', function() {});
		$('#op3').fadeOut('fast', function() {});
		$('#op4').fadeOut('fast', function() {});
		$('#op5').fadeOut('fast', function() {});

	$('#op1').fadeIn('slow', function() {
	});
	});
	
});

$('#opt2').click(function() {
	$('#op1off').fadeOut('fast', function() {
		$('#op1').fadeOut('fast', function() {});
		$('#op3').fadeOut('fast', function() {});
		$('#op4').fadeOut('fast', function() {});
		$('#op5').fadeOut('fast', function() {});

	$('#op2').fadeIn('slow', function() {
	});
	});
});

$('#opt3').click(function() {
	$('#op1off').fadeOut('fast', function() {
		$('#op1').fadeOut('fast', function() {});
		$('#op2').fadeOut('fast', function() {});
		$('#op4').fadeOut('fast', function() {});
		$('#op5').fadeOut('fast', function() {});
	
	$('#op3').fadeIn('slow', function() {
	});
	});
});

$('#opt4').click(function() {
	$('#op1off').fadeOut('fast', function() {
		$('#op1').fadeOut('fast', function() {});
		$('#op2').fadeOut('fast', function() {});
		$('#op3').fadeOut('fast', function() {});
		$('#op5').fadeOut('fast', function() {});
		
	$('#op4').fadeIn('slow', function() {
	});
	});
});

$('#opt5').click(function() {
	$('#op1off').fadeOut('fast', function() {
		$('#op1').fadeOut('fast', function() {});
		$('#op2').fadeOut('fast', function() {});
		$('#op3').fadeOut('fast', function() {});
		$('#op4').fadeOut('fast', function() {});
		
	$('#op5').fadeIn('slow', function() {
	});
	});
});
</script>


	<!-- Fonts /-->
	<script type="text/javascript">
	WebFontConfig = {
	google: { families: [ 'Exo:400,700:latin' ] }
	};
	(function() {
	var wf = document.createElement('script');
	wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
	'://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
	wf.type = 'text/javascript';
	wf.async = 'true';
	var s = document.getElementsByTagName('script')[0];
	s.parentNode.insertBefore(wf, s);
	})(); </script>

	<!-- busca /-->
	<script>
	  (function() {
	    var cx = '003686586408860510253:yecgopcebjc';
	    var gcse = document.createElement('script'); gcse.type = 'text/javascript'; gcse.async = true;
	    gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
	        '//www.google.com/cse/cse.js?cx=' + cx;
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(gcse, s);
	  })();
	</script>

	

</body>
</html>