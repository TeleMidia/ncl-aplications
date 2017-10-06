<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl xsi:schemaLocation="http://www.ncl.org.br/NCL3.0/EDTVProfile http://www.ncl.org.br/NCL3.0/profiles/NCL30EDTV.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile" id="pUpa">
<head>
	<regionBase>
		<region id="rgTV">
			<region id="rgFullScreen"/>
			
			<!-- Para resolucao 1920 X 1280 = Barra 1628 X 65 -->
			<region id="rgBarraTitulo" right="16%" width="83.5%" bottom="22%" height="5%">
				<region id="rgMenu1" left="0%" width="20%" zIndex="2"/>
				<region id="rgMenu2" left="20%" width="20%" zIndex="2"/>
				<region id="rgMenu3" left="40%" width="20%" zIndex="2"/>
				<region id="rgSair" right="0%" width="15%" zIndex="2"/>
			</region>
			<region id="rgColuna1" left="0.5%" top="78%" width="18%" height="20%">
				<!-- Para resolucao 1920 X 1280 = 360 X 58 -->
				<region id="rgColuna1_Botao1" top="0%" height="25%" zIndex="2"/>
				<region id="rgColuna1_Botao2" top="25%" height="25%" zIndex="2"/>
				<region id="rgColuna1_Botao3" top="50%" height="25%" zIndex="2"/>
				<region id="rgColuna1_Botao4" top="75%" height="25%" zIndex="2"/>
				<region id="rgColuna1_BotaoC" top="37.5%" height="25%" zIndex="2"/>
			</region>
			<!-- Para resolucao 1920 X 1280 = Texto 1279 X 193 -->
			<region id="rgTexto" left="19%" top="76.4%" width="65%" height="21.8%" zIndex="2"/>
			<!-- Para resolucao 1920 X 1280 = 1257 X 192 -->
			<region id="rgIcone" left="84.7%" top="73%" width="14.5%" height="25%" zIndex="2"/>
			
			<region id="rgCaixa" left="0.5%" top="72.3%" width="83.5%" height="26%" zIndex="5"/>
		</region>
	</regionBase>
	
	<descriptorBase>
		<descriptor id="dColuna1_Botao1" region="rgColuna1_Botao1">
			<descriptorParam name="chromakey" value="black"/>
			<descriptorParam name="transparency" value="0.15"/>
		</descriptor>
		<descriptor id="dColuna1_Botao2" region="rgColuna1_Botao2">
			<descriptorParam name="chromakey" value="black"/>
			<descriptorParam name="transparency" value="0.15"/>
		</descriptor>
		<descriptor id="dColuna1_Botao3" region="rgColuna1_Botao3">
			<descriptorParam name="chromakey" value="black"/>
			<descriptorParam name="transparency" value="0.15"/>
		</descriptor>
		<descriptor id="dColuna1_Botao4" region="rgColuna1_Botao4">
			<descriptorParam name="chromakey" value="black"/>
			<descriptorParam name="transparency" value="0.15"/>
		</descriptor>
		<descriptor id="dColuna1_BotaoC" region="rgColuna1_BotaoC">
			<descriptorParam name="chromakey" value="black"/>
			<descriptorParam name="transparency" value="0.15"/>
		</descriptor>
		<descriptor id="dTexto" region="rgTexto">
			<descriptorParam name="chromakey" value="black"/>
			<descriptorParam name="transparency" value="0.15"/>
		</descriptor>
		<descriptor id="dIcone" region="rgIcone">
			<descriptorParam name="chromakey" value="black"/>
			<descriptorParam name="transparency" value="0.15"/>
		</descriptor>
		<descriptor id="dIconeShow" region="rgIcone" explicitDur="2s">
			<descriptorParam name="chromakey" value="black"/>
			<descriptorParam name="transparency" value="0.15"/>
		</descriptor>
		
		<descriptor id="dMenu1" region="rgMenu1"/>
		<descriptor id="dMenu2" region="rgMenu2"/>
		<descriptor id="dMenu3" region="rgMenu3"/>
		<descriptor id="dSair" region="rgSair"/>
		<descriptor id="dTitulo" region="rgBarraTitulo">
			<descriptorParam name="chromakey" value="black"/>
			<descriptorParam name="transparency" value="0.15"/>
		</descriptor>
	</descriptorBase>

	<connectorBase>
		<importBase documentURI="composerConnectorBase.ncl" alias="connBase"/>
	</connectorBase>
</head>
<body>
	<port interface="pUnidadesON" component="ctUpa" id="p_ctUpa_UnidadesON"/>
	<port interface="pTitulo" component="ctUpa" id="p_ctUpa_Titulo"/>
	<context id="ctUpa">
		<port component="OqueON" id="pOqueON"/>
		<port component="FuncionaON" id="pFuncionaON"/>
		<port component="EspecialidadesON" id="pEspecialidadesON"/>
		<port component="UnidadesON" id="pUnidadesON"/>
		<port component="titulo" id="pTitulo"/>

		<media descriptor="dColuna1_Botao1" src="UPA/ctUpa/OqueON.png" id="OqueON"/>
		<media descriptor="dColuna1_Botao1" src="UPA/ctUpa/OqueOFF.png" id="OqueOFF"/>
		<media descriptor="dColuna1_Botao2" src="UPA/ctUpa/FuncionaON.png" id="FuncionaON"/>
		<media descriptor="dColuna1_Botao2" src="UPA/ctUpa/FuncionaOFF.png" id="FuncionaOFF"/>
		<media descriptor="dColuna1_Botao3" src="UPA/ctUpa/EspecialidadesON.png" id="EspecialidadesON"/>
		<media descriptor="dColuna1_Botao3" src="UPA/ctUpa/EspecialidadesOFF.png" id="EspecialidadesOFF"/>
		<media descriptor="dColuna1_Botao4" src="UPA/ctUpa/UnidadesON.png" id="UnidadesON"/>
		<media descriptor="dColuna1_Botao4" src="UPA/ctUpa/UnidadesOFF.png" id="UnidadesOFF"/>

		<media descriptor="dTitulo" src="UPA/ctUpa/Titulo.png" id="titulo"/>
		
		<media descriptor="dTexto" src="UPA/ctUpa/OqueTEXT.png" id="tOque"/>
		<media descriptor="dIconeShow" src="UPA/ctUpa/OqueIMAGE.png" id="iOque"/>
		<media descriptor="dIconeShow" src="UPA/ctUpa/OqueIMAGE2.png" id="iOque2"/>
		<media descriptor="dIconeShow" src="UPA/ctUpa/OqueIMAGE3.png" id="iOque3"/>

		<media descriptor="dTexto" src="UPA/ctUpa/FuncionaTEXT.png" id="tFunciona"/>
		<media descriptor="dIconeShow" src="UPA/ctUpa/FuncionaIMAGE.png" id="iFunciona"/>
		<media descriptor="dIconeShow" src="UPA/ctUpa/FuncionaIMAGE2.png" id="iFunciona2"/>
		<media descriptor="dIconeShow" src="UPA/ctUpa/FuncionaIMAGE3.png" id="iFunciona3"/>
		<media descriptor="dIconeShow" src="UPA/ctUpa/FuncionaIMAGE4.png" id="iFunciona4"/>
		<media descriptor="dIconeShow" src="UPA/ctUpa/FuncionaIMAGE5.png" id="iFunciona5"/>

		<media descriptor="dTexto" src="UPA/ctUpa/EspecialidadesTEXT.png" id="tEspecialidades"/>
		<media descriptor="dIconeShow" src="UPA/ctUpa/EspecialidadesIMAGE.png" id="iEspecialidades"/>
		<media descriptor="dIconeShow" src="UPA/ctUpa/EspecialidadesIMAGE2.png" id="iEspecialidades2"/>
		<media descriptor="dIconeShow" src="UPA/ctUpa/EspecialidadesIMAGE3.png" id="iEspecialidades3"/>
		<media descriptor="dIconeShow" src="UPA/ctUpa/EspecialidadesIMAGE4.png" id="iEspecialidades4"/>
		<media descriptor="dIconeShow" src="UPA/ctUpa/EspecialidadesIMAGE5.png" id="iEspecialidades5"/>
		
		<media descriptor="dTexto" src="UPA/ctUpa/UnidadesTEXT.png" id="tUnidades"/>
		<media descriptor="dIconeShow" src="UPA/ctUpa/UnidadesIMAGE.png" id="iUnidades"/>
		<media descriptor="dIconeShow" src="UPA/ctUpa/UnidadesIMAGE2.png" id="iUnidades2"/>
		<media descriptor="dIconeShow" src="UPA/ctUpa/UnidadesIMAGE3.png" id="iUnidades3"/>
		<media descriptor="dIconeShow" src="UPA/ctUpa/UnidadesIMAGE4.png" id="iUnidades4"/>
		<media descriptor="dIconeShow" src="UPA/ctUpa/UnidadesIMAGE5.png" id="iUnidades5"/>

		<!-- botoes em foco -->
		<link xconnector="connBase#onBeginStartN" id="lOqueON">
			<bind role="onBegin" component="OqueON"/>
			<bind role="start" component="FuncionaOFF"/>
			<bind role="start" component="EspecialidadesOFF"/>
			<bind role="start" component="UnidadesOFF"/>
			<bind role="start" component="tOque"/>
			<bind role="start" component="iOque"/>
		</link>
		<link xconnector="connBase#onBeginStartN" id="lFuncionaON">
			<bind role="onBegin" component="FuncionaON"/>
			<bind role="start" component="EspecialidadesOFF"/>
			<bind role="start" component="UnidadesOFF"/>
			<bind role="start" component="OqueOFF"/>
			<bind role="start" component="tFunciona"/>
			<bind role="start" component="iFunciona"/>
		</link>
		<link xconnector="connBase#onBeginStartN" id="lEspecialidadesON">
			<bind role="onBegin" component="EspecialidadesON"/>
			<bind role="start" component="FuncionaOFF"/>
			<bind role="start" component="UnidadesOFF"/>
			<bind role="start" component="OqueOFF"/>
			<bind role="start" component="tEspecialidades"/>
			<bind role="start" component="iEspecialidades"/>
		</link>
		<link xconnector="connBase#onBeginStartN" id="lUnidadesON">
			<bind role="onBegin" component="UnidadesON"/>
			<bind role="start" component="FuncionaOFF"/>
			<bind role="start" component="EspecialidadesOFF"/>
			<bind role="start" component="OqueOFF"/>
			<bind role="start" component="tUnidades"/>
			<bind role="start" component="iUnidades"/>
		</link>
		
		<!-- stop nos textos e icones -->
		<link xconnector="connBase#onEndAbortNStopN">
			<bind role="onEnd" component="OqueON"/>
			<bind role="stop" component="tOque"/>
			<bind role="abort" component="iOque"/>
			<bind role="abort" component="iOque2"/>
			<bind role="abort" component="iOque3"/>
		</link>
		<link xconnector="connBase#onEndAbortNStopN">
			<bind role="onEnd" component="FuncionaON"/>
			<bind role="stop" component="tFunciona"/>
			<bind role="abort" component="iFunciona"/>
			<bind role="abort" component="iFunciona2"/>
			<bind role="abort" component="iFunciona3"/>
			<bind role="abort" component="iFunciona4"/>
			<bind role="abort" component="iFunciona5"/>
		</link>
		<link xconnector="connBase#onEndAbortNStopN">
			<bind role="onEnd" component="EspecialidadesON"/>
			<bind role="stop" component="tEspecialidades"/>
			<bind role="abort" component="iEspecialidades"/>
			<bind role="abort" component="iEspecialidades2"/>
			<bind role="abort" component="iEspecialidades3"/>
			<bind role="abort" component="iEspecialidades4"/>
			<bind role="abort" component="iEspecialidades5"/>
		</link>
		<link xconnector="connBase#onEndAbortNStopN">
			<bind role="onEnd" component="UnidadesON"/>
			<bind role="stop" component="tUnidades"/>
			<bind role="abort" component="iUnidades"/>
			<bind role="abort" component="iUnidades2"/>
			<bind role="abort" component="iUnidades3"/>
			<bind role="abort" component="iUnidades4"/>
			<bind role="abort" component="iUnidades5"/>
		</link>

		<!--  CURSOR_UP -->
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="OqueON">
		            <bindParam name="keyCode" value="CURSOR_UP"/>
		      </bind>
		      <bind role="stop" component="OqueON"/>
		      <bind role="start" component="UnidadesON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="FuncionaON">
		            <bindParam name="keyCode" value="CURSOR_UP"/>
		      </bind>
		      <bind role="stop" component="FuncionaON"/>
		      <bind role="start" component="OqueON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="EspecialidadesON">
		            <bindParam name="keyCode" value="CURSOR_UP"/>
		      </bind>
		      <bind role="stop" component="EspecialidadesON"/>
		      <bind role="start" component="FuncionaON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="UnidadesON">
		            <bindParam name="keyCode" value="CURSOR_UP"/>
		      </bind>
		      <bind role="stop" component="UnidadesON"/>
		      <bind role="start" component="EspecialidadesON"/>
		</link>

		<!--  CURSOR_DOWN -->
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="OqueON">
		            <bindParam name="keyCode" value="CURSOR_DOWN"/>
		      </bind>
		      <bind role="stop" component="OqueON"/>
		      <bind role="start" component="FuncionaON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="FuncionaON">
		            <bindParam name="keyCode" value="CURSOR_DOWN"/>
		      </bind>
		      <bind role="stop" component="FuncionaON"/>
		      <bind role="start" component="EspecialidadesON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="EspecialidadesON">
		            <bindParam name="keyCode" value="CURSOR_DOWN"/>
		      </bind>
		      <bind role="stop" component="EspecialidadesON"/>
		      <bind role="start" component="UnidadesON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="UnidadesON">
		            <bindParam name="keyCode" value="CURSOR_DOWN"/>
		      </bind>
		      <bind role="stop" component="UnidadesON"/>
		      <bind role="start" component="OqueON"/>
		</link>
		
		<!-- slideshow OqueE -->
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iOque"/>
			<bind role="start" component="iOque2"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iOque2"/>
			<bind role="start" component="iOque3"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iOque3"/>
			<bind role="start" component="iOque"/>
		</link>
		
		<!-- slideshow Funciona -->
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iFunciona"/>
			<bind role="start" component="iFunciona2"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iFunciona2"/>
			<bind role="start" component="iFunciona3"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iFunciona3"/>
			<bind role="start" component="iFunciona4"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iFunciona4"/>
			<bind role="start" component="iFunciona5"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iFunciona5"/>
			<bind role="start" component="iFunciona"/>
		</link>

		<!--slideshow Especialidades -->
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iEspecialidades"/>
			<bind role="start" component="iEspecialidades2"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iEspecialidades2"/>
			<bind role="start" component="iEspecialidades3"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iEspecialidades3"/>
			<bind role="start" component="iEspecialidades4"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iEspecialidades4"/>
			<bind role="start" component="iEspecialidades5"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iEspecialidades5"/>
			<bind role="start" component="iEspecialidades"/>
		</link>

		<!-- slideshow Unidades -->
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iUnidades"/>
			<bind role="start" component="iUnidades2"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iUnidades2"/>
			<bind role="start" component="iUnidades3"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iUnidades3"/>
			<bind role="start" component="iUnidades4"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iUnidades4"/>
			<bind role="start" component="iUnidades5"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iUnidades5"/>
			<bind role="start" component="iUnidades"/>
		</link>
	</context>
</body>
</ncl>