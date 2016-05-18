<%@ include file="/WEB-INF/views/includeTags.jsp"%>

<c:if test="${statusExcluir == 0}">
				<div class="alert alert-success" role="alert" >
				<span class="close" data-dismiss="alert" aria-label="close">&times;</span>
					<span class="fa fa-exclamation-circle" aria-hidden="true"></span> <span
						class="sr-only">Sucesso:</span> ${mensagem}
				</div>
			</c:if>
<div class="mdl-grid">
	<div class="mdl-cell mdl-cell--4-col">
		<img class='img-responsive' width="450px" height="450px"
			src='../images/reis_logo.png' style="margin: auto;" />
		<div class='row'>
			<div class='col-lg-12 text-center'>

				<p>Registro Eletr�nico para Interoperabilidade em Sa�de</p>
			</div>
		</div>

	</div>
	<div class="mdl-cell mdl-cell--8-col">

		<div class='col-lg-8 col-lg-offset-2'>
			<br>
			<h3 class="negrito">O que � o REIS?</h3>

			<p>Registro Eletr�nico para Interoperabilidade em Sa�de - REIS -
				� um projeto desenvolvido por um grupo de estudantes da Universidade
				Estadual da Para�ba com o intuito de tornar o acompanhamento de
				dispositivos de sa�de de uso pessoal interoper�vel.</p>
		</div>
		<div class='col-lg-8 col-lg-offset-2'>
			<h3 class="negrito">Qual a nossa proposta?</h3>

			<p>Nossa proposta � armazenar em um perfil o acompanhamento a
				cada medi��o de alguns dispositivos de uso pessoal voltado para a
				sa�de.</p>
		</div>
		<div class='col-lg-8 col-lg-offset-2'>
			<h3 class="negrito">
				Quais s�o esses disposit�vos? <span class='fa fa-heartbeat'></span>
			</h3>

			<div class='col-md-4'>
				<p>
					<i class='fa fa-user-md' aria-hidden='true''></i> Balan�a
				</p>
			</div>
			<div class='col-md-4'>
				<p>
					<i class='fa fa-user-md' aria-hidden='true''></i> Oximetro de pulso
				</p>
			</div>
			<div class='col-md-4'>
				<p>
					<i class='fa fa-user-md' aria-hidden='true'></i> Medidor de press�o
				</p>
			</div>
		</div>
	</div>

</div>


