

<div class="mdl-grid">
	<div class="mdl-cell mdl-cell--12-col">
		<h3 class="negrito">Aparelhos</h3>
	</div>

	<div class="mdl-cell mdl-cell--4-col">
		<div class="demo-card-square mdl-card mdl-shadow--2dp">
			<div class="mdl-card__title mdl-card--expand azul">
				<h2 class="mdl-card__title-text">Balan�a</h2>
			</div>
			<div class="mdl-card__supporting-text">
				<div class="mdl-grid">

					<canvas id="chartBalanca" width="400" height="400"></canvas>
				</div>
			</div>
			<div class="mdl-card__actions mdl-card--border">
				<a
					class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
					Visualizar Hist�rico </a>
			</div>
		</div>
	</div>
	<div class="mdl-cell mdl-cell--4-col">
		<div class="demo-card-square mdl-card mdl-shadow--2dp">
			<div class="mdl-card__title mdl-card--expand azul">
				<h2 class="mdl-card__title-text">Oximetro</h2>
			</div>
			<div class="mdl-card__supporting-text">
				<div class="mdl-grid">
					<canvas id="chartOximetro" width="400" height="400"></canvas>
				</div>
			</div>
			<div class="mdl-card__actions mdl-card--border">
				<a
					class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
					Visualizar Hist�rico </a>
			</div>
		</div>
	</div>
	<div class="mdl-cell mdl-cell--4-col">
		<div class="demo-card-square mdl-card mdl-shadow--2dp">
			<div class="mdl-card__title mdl-card--expand azul">
				<h2 class="mdl-card__title-text">Press�o</h2>
			</div>
			<div class="mdl-card__supporting-text">
				<div class="mdl-grid">
					<canvas id="chartPressao" width="400" height="400"></canvas>
				</div>
			</div>
			<div class="mdl-card__actions mdl-card--border">
				<a
					class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
					Visualizar Hist�rico </a>
			</div>
		</div>
	</div>

</div>

<script src="../js/flat-ui-reis/flat-ui-reis.js"></script>

<script language="javascript"> 
	carregaVariaveisBalanca('${ultimoHistorico.data}', '${ultimoHistorico.balanca.massa}', '${ultimoHistorico.balanca.altura}', '${ultimoHistorico.balanca.uMassa}');
	carregaVariaveisOximetro('${ultimoHistorico.data}', '${ultimoHistorico.oximetro.spo2}', '${ultimoHistorico.oximetro.taxaPulso}', '${ultimoHistorico.oximetro.spo2}');
	carregaVariaveisPressao('${ultimoHistorico.data}', '${ultimoHistorico.pressao.pressaoDiastolica}', '${ultimoHistorico.pressao.pressaoDistolica}', '${ultimoHistorico.pressao.pressaoMedia}','${ultimoHistorico.pressao.pressaoSistolica}')

 </script>
