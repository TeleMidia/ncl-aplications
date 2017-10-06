<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl xsi:schemaLocation="http://www.ncl.org.br/NCL3.0/EDTVProfile http://www.ncl.org.br/NCL3.0/profiles/NCL30EDTV.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile" id="pPrincipal">

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
	<port interface="pDengueON" component="ctPrincipal" id="port_proderj_ctPrincipal_EmergenciaON"/>
	<port interface="pTitulo" component="ctPrincipal" id="port_proderj_ctPrincipal_titulo"/>
	<context id="ctPrincipal">
		<port component="DengueON" id="pDengueON"/>
		<port component="EmergenciaON" id="pEmergenciaON"/>
		<port component="SangueON" id="pSangueON"/>
		
		<port component="DengueOFF" id="pDengueOFF"/>
		<port component="EmergenciaOFF" id="pEmergenciaOFF"/>
		<port component="SangueOFF" id="pSangueOFF"/>
		<port component="titulo" id="pTitulo"/>

		<media descriptor="dColuna1_Botao1" src="UPA/ctPrincipal/DengueON.png" id="DengueON"/>
		<media descriptor="dColuna1_Botao1" src="UPA/ctPrincipal/DengueOFF.png" id="DengueOFF"/>
		<media descriptor="dColuna1_Botao2" src="UPA/ctPrincipal/EmergenciaON.png" id="EmergenciaON"/>
		<media descriptor="dColuna1_Botao2" src="UPA/ctPrincipal/EmergenciaOFF.png" id="EmergenciaOFF"/>
		<media descriptor="dColuna1_Botao3" src="UPA/ctPrincipal/SangueON.png" id="SangueON"/>
		<media descriptor="dColuna1_Botao3" src="UPA/ctPrincipal/SangueOFF.png" id="SangueOFF"/>

		<media descriptor="dTitulo" src="UPA/ctPrincipal/Titulo.png" id="titulo"/>

		<media descriptor="dTexto" src="UPA/ctPrincipal/DengueTEXT.png" id="tDengue"/>
		<media descriptor="dIcone" src="UPA/ctPrincipal/DengueIMAGE.png" id="iDengue"/>
		<media descriptor="dTexto" src="UPA/ctPrincipal/EmergenciaTEXT.png" id="tEmergencia"/>
		<media descriptor="dIcone" src="UPA/ctPrincipal/EmergenciaIMAGE.png" id="iEmergencia"/>
		<media descriptor="dTexto" src="UPA/ctPrincipal/SangueTEXT.png" id="tSangue"/>
		<media descriptor="dIcone" src="UPA/ctPrincipal/SangueIMAGE.png" id="iSangue"/>
		
<!--
		<media descriptor="dCaixa" src="UPA/borda.png" id="borda"/>
		<link xconnector="connBase#onBeginStart">
		      <bind role="onBegin" component="titulo"/>
		      <bind role="start" component="borda"/>
        </link>
-->
		
		<!-- ao exibir o botao com foco, exibe o texto e icones relacionados-->
		<link xconnector="connBase#onBeginStopNStartN" id="lDengueON">
			<bind role="onBegin" component="DengueON"/>
			<bind role="stop" component="DengueOFF"/>
			<bind role="start" component="EmergenciaOFF"/>
			<bind role="start" component="SangueOFF"/>
			<bind role="start" component="tDengue"/>
			<bind role="start" component="iDengue"/>
		</link>
		<link xconnector="connBase#onBeginStopNStartN" id="lEmergenciaON">
			<bind role="onBegin" component="EmergenciaON"/>
			<bind role="stop" component="EmergenciaOFF"/>
			<bind role="start" component="DengueOFF"/>
			<bind role="start" component="SangueOFF"/>
			<bind role="start" component="tEmergencia"/>
			<bind role="start" component="iEmergencia"/>
		</link>
		<link xconnector="connBase#onBeginStopNStartN" id="lSangueON">
			<bind role="onBegin" component="SangueON"/>
			<bind role="stop" component="SangueOFF"/>
			<bind role="start" component="DengueOFF"/>
			<bind role="start" component="EmergenciaOFF"/>
			<bind role="start" component="tSangue"/>
			<bind role="start" component="iSangue"/>
		</link>
		
		<!-- stop nos textos e icones -->
		<link xconnector="connBase#onEndStopN">
			<bind role="onEnd" component="DengueON"/>
			<bind role="stop" component="tDengue"/>
			<bind role="stop" component="iDengue"/>
		</link>
		<link xconnector="connBase#onEndStopN">
			<bind role="onEnd" component="EmergenciaON"/>
			<bind role="stop" component="tEmergencia"/>
			<bind role="stop" component="iEmergencia"/>
		</link>
		<link xconnector="connBase#onEndStopN">
			<bind role="onEnd" component="SangueON"/>
			<bind role="stop" component="tSangue"/>
			<bind role="stop" component="iSangue"/>
		</link>
		
			<!--  CURSOR_UP -->
	
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="DengueON">
		            <bindParam name="keyCode" value="CURSOR_UP"/>
		      </bind>
		      <bind role="stop" component="DengueON"/>
		      <bind role="start" component="SangueON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="EmergenciaON">
		            <bindParam name="keyCode" value="CURSOR_UP"/>
		      </bind>
		      <bind role="stop" component="EmergenciaON"/>
		      <bind role="start" component="DengueON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="SangueON">
		            <bindParam name="keyCode" value="CURSOR_UP"/>
		      </bind>
		      <bind role="stop" component="SangueON"/>
		      <bind role="start" component="EmergenciaON"/>
		</link>

		<!--  CURSOR_DOWN -->
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="DengueON">
		            <bindParam name="keyCode" value="CURSOR_DOWN"/>
		      </bind>
		      <bind role="stop" component="DengueON"/>
		      <bind role="start" component="EmergenciaON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="EmergenciaON">
		            <bindParam name="keyCode" value="CURSOR_DOWN"/>
		      </bind>
		      <bind role="stop" component="EmergenciaON"/>
		      <bind role="start" component="SangueON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="SangueON">
		            <bindParam name="keyCode" value="CURSOR_DOWN"/>
		      </bind>
		      <bind role="stop" component="SangueON"/>
		      <bind role="start" component="DengueON"/>
		</link>
	</context>
</body>

</ncl>