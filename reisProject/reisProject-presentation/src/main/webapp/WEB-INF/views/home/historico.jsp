<%@ include file="/WEB-INF/views/includeTags.jsp"%>

<div class="mdl-grid">
	
	<div class="mdl-cell mdl-cell--12-col">
		<table class="mdl-data-table mdl-js-data-table">
			<thead>
				<tr style="background-color:#37BC9B; color:#fff">
					<th class="mdl-data-table__cell--non-numeric" style=" color:#fff">Balan�a</th>
					<th style=" color:#fff">Peso</th>
					<th style=" color:#fff">Altura</th>
					<th style=" color:#fff">Data e Hora</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="balanca" varStatus="status" items="${historicoBalanca}">
					<tr>
						<td class="mdl-data-table__cell--non-numeric"></td>
						<td>${balanca.peso}</td>
						<td>${balanca.altura}</td>
						<td>${balanca.dataHora}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<div class="mdl-cell mdl-cell--12-col">
		<table class="mdl-data-table mdl-js-data-table">
			<thead>
				<tr style="background-color:#DA4453; color:#fff">
					<th class="mdl-data-table__cell--non-numeric" style=" color:#fff">Medidor de Press�o</th>
					<th style=" color:#fff">Press�o Sist�lica</th>
					<th style=" color:#fff">Press�o Diast�lica</th>
					<th style=" color:#fff">Press�o M�dia</th>
					<th style=" color:#fff">Data e Hora</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="pressao" varStatus="status" items="${historicoPressao}">
					<tr>
						<td class="mdl-data-table__cell--non-numeric"></td>
						<td>${pressao.pressaoSistolica}</td>
						<td>${pressao.pressaoDiastolica}</td>
						<td>${pressao.pressaoMedia}</td>
						<td>${pressao.dataHora}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<div class="mdl-cell mdl-cell--12-col">
		<table class="mdl-data-table mdl-js-data-table">
			<thead>
				<tr style="background-color:#F6BB42; color:#fff">
					<th class="mdl-data-table__cell--non-numeric" style=" color:#fff">Oximetro de Pulso</th>
					<th style=" color:#fff">SPO2</th>
					<th style=" color:#fff">Taxa Pulso</th>
					<th style=" color:#fff">Data e Hora</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="oximetro" varStatus="status" items="${historicoOximetro}">
					<tr>
						<td class="mdl-data-table__cell--non-numeric"></td>
						<td>${oximetro.spo2}</td>
						<td>${oximetro.taxaPulso}</td>
						<td>${oximetro.dataHora}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</div>

<script src="../js/flat-ui-reis/flat-ui-reis.js"></script>
