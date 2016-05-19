<%@ include file="/WEB-INF/views/includeTags.jsp"%>

<div class="mdl-grid mdl-layout__content">	
	<div class="mdl-grid mdl-cell mdl-cell--12-col">
	
		<!-- Infromacoes do Paciente -->	
		<div class="mdl-grid mdl-cell mdl-cell--4-col mdl-card mdl-shadow--4dp">  
			<div class="mdl-card__title">
				<h2 class="mdl-card__title-text">${usuario}</h2>
			</div>		
        	<div class="mdl-card__supporting-text no-left-padding">
                <p>Idade: --</p>
                <p>Sexo: ${paciente.sexo}</p>
                <p>Data de Nascimento: --</p>
                <p>Endere�o: ${paciente.endereco} </p>
                <p>Cidade: ${paciente.cidade} </p>
                <p>Telefone: ${paciente.telefoneCasa}</p>                	
            </div>
		</div>
		
		<!-- Medicoes do Paciente -->
		<div class="mdl-grid mdl-cell mdl-cell--8-col  mdl-card mdl-shadow--4dp">			
			<div class="mdl-grid mdl-cell mdl-cell--4-col mdl-card__supporting-text no-left-padding">
				<div class="mdl-card__supporting-text no-left-padding">
					<h2 class="mdl-card__title-text">Peso</h2>
                	<h3>${balanca.peso} ${balanca.uPeso} </h3>
                </div>
	               
	        </div>
	             
			<div class="mdl-grid mdl-cell mdl-cell--4-col mdl-card__supporting-text no-left-padding">
				<div class="mdl-card__supporting-text no-left-padding">
					<h2 class="mdl-card__title-text">Altura</h2>
               		<h3>${balanca.altura} ${balanca.uAltura} </h3>
               	</div>
	               
	        </div>
	           
			<div class="mdl-grid mdl-cell mdl-cell--4-col mdl-card__supporting-text no-left-padding">
				<div class="mdl-card__supporting-text no-left-padding">
					<h2 class="mdl-card__title-text">IMC</h2>
               		<h3>${balanca.massa} ${balanca.uMassa} </h3>
               	</div>
	        </div>
	        
	        <div class="mdl-grid mdl-cell mdl-cell--12-col mdl-card__supporting-text no-left-padding">
				<div class="mdl-card__supporting-text no-left-padding">
					<h2 class="mdl-card__title-text">Press�o Sangu�nea</h2>
               		<h3>${pressao.pressaoMedia} ${pressao.uPressaoMedia} </h3>
               	</div>
	        </div>
        	
        	<div class="mdl-grid mdl-cell mdl-cell--6-col mdl-card__supporting-text no-left-padding">
				<div class="mdl-card__supporting-text no-left-padding">
					<h2 class="mdl-card__title-text">sp02</h2>
               		<h3>${oximetro.spo2} ${oximetro.uSPO2} </h3>
               	</div>
	        </div>
	        
	        <div class="mdl-grid mdl-cell mdl-cell--6-col mdl-card__supporting-text no-left-padding">
				<div class="mdl-card__supporting-text no-left-padding">
					<h2 class="mdl-card__title-text">Taxa de Paulso</h2>
               		<h3>${oximetro.taxaPulso} ${oximetro.uTaxaDePulso} </h3>
               	</div>
	        </div>
        	
        </div>
        
       	
	</div>
	
</div>
			
 
 <!-- 
<div class="mdl-grid">
	<div class="mdl-cell mdl-cell--4-col">
		<div class="demo-card-square mdl-card mdl-shadow--2dp">
			<div class="mdl-card__title mdl-card--expand azul">
				<h2 class="mdl-card__title-text">${usuario}</h2>
			</div>
			<div class="mdl-card__supporting-text">
				<div class="mdl-grid">
					<div class="mdl-card__supporting-text">Idade:</div>
					<div class="mdl-card__supporting-text">Sexo:</div>
					<div class="mdl-card__supporting-text">Data Nasc.:</div>
					<div class="mdl-card__supporting-text">Endere�o:</div>
				</div>
			</div>
			
		</div>
	</div>
	<div class="mdl-cell mdl-cell--2-col">
		
	</div>
	<div class="mdl-cell mdl-cell--4-col">
		<div class="demo-card-square mdl-card mdl-shadow--2dp">
			<div class="mdl-card__title mdl-card--expand azul">
				<h2 class="mdl-card__title-text">Luana Janaina de Sousa</h2>
			</div>
			<div class="mdl-card__supporting-text">
				<div class="mdl-grid">
					<div class="mdl-card__supporting-text">Idade:</div>
					<div class="mdl-card__supporting-text">Sexo:</div>
					<div class="mdl-card__supporting-text">Data Nasc.:</div>
					<div class="mdl-card__supporting-text">Endere�o:</div>
				</div>
			</div>
			
		</div>
	</div>
	
<div class="demo-card-wide mdl-card mdl-shadow--2dp">
  <div class="mdl-card__title">
    <h2 class="mdl-card__title-text">Luana Janaina</h2>
  </div>
  <div class="mdl-card__supporting-text">
    Idade:
  </div>
  <div class="mdl-card__supporting-text">
    Sexo:
  </div>
  <div class="mdl-card__supporting-text">
    Data Nasc.:
  </div>
  <div class="mdl-card__supporting-text">
    Endere�o:
  </div>
</div>
     
</div>-->

<!-- 
<div class="centro">
	<c:if test="${status == 0}">
		<div class="alert alert-success" role="alert" >
				<span class="close" data-dismiss="alert" aria-label="close">&times;</span>
			<span class="fa fa-exclamation-circle" aria-hidden="true"></span> <span
				class="sr-only">Sucesso:</span> ${mensagem}
		</div>
	</c:if>
	<img class='img-responsive' width="550px" height="550px"
		src='../images/reis.png' style="margin: auto;" />
	<div class='row'>
		<div class='col-lg-12 text-center'>
			<p>Registro Eletr�nico para Interoperabilidade em Sa�de</p>
		</div>
	</div>
</div>
 -->