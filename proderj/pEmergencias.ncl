<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl xsi:schemaLocation="http://www.ncl.org.br/NCL3.0/EDTVProfile http://www.ncl.org.br/NCL3.0/profiles/NCL30EDTV.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile" id="pEmergenciaFile">
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
	<port interface="pUpaON" component="ctEmergencias" id="pEntry1"/>
	<port interface="pTitulo" component="ctEmergencias" id="pEntry2"/>
	<context id="ctEmergencias">
		<port component="SamuON" id="pSamuON"/>
		<port component="UpaON" id="pUpaON"/>
		<port component="titulo" id="pTitulo"/>

		<media descriptor="dColuna1_Botao1" src="UPA/ctEmergencias/SamuON.png" id="SamuON"/>
		<media descriptor="dColuna1_Botao1" src="UPA/ctEmergencias/SamuOFF.png" id="SamuOFF"/>
		<media descriptor="dColuna1_Botao2" src="UPA/ctEmergencias/UpaON.png" id="UpaON"/>
		<media descriptor="dColuna1_Botao2" src="UPA/ctEmergencias/UpaOFF.png" id="UpaOFF"/>

		<media descriptor="dTitulo" src="UPA/ctEmergencias/Titulo.png" id="titulo"/>

		<media descriptor="dTexto" src="UPA/ctEmergencias/SamuTEXT.png" id="tSamu"/>
		<media descriptor="dIcone" src="UPA/ctEmergencias/SamuIMAGE.png" id="iSamu"/>
		<media descriptor="dTexto" src="UPA/ctEmergencias/UpaTEXT.png" id="tUpa"/>
		<media descriptor="dIcone" src="UPA/ctEmergencias/UpaIMAGE.png" id="iUpa"/>
		
		<link xconnector="connBase#onBeginStopNStartN">
			<bind role="onBegin" component="SamuON"/>
			<bind role="stop" component="SamuOFF"/>
			<bind role="start" component="UpaOFF"/>
			<bind role="start" component="tSamu"/>
			<bind role="start" component="iSamu"/>
		</link>
		<link xconnector="connBase#onBeginStopNStartN">
			<bind role="onBegin" component="UpaON"/>
			<bind role="stop" component="UpaOFF"/>
			<bind role="start" component="SamuOFF"/>
			<bind role="start" component="tUpa"/>
			<bind role="start" component="iUpa"/>
		</link>

		<!-- stop em textos e icones -->
		<link xconnector="connBase#onEndStopN">
			<bind role="onEnd" component="SamuON"/>
			<bind role="stop" component="tSamu"/>
			<bind role="stop" component="iSamu"/>
		</link>
		<link xconnector="connBase#onEndStopN">
			<bind role="onEnd" component="UpaON"/>
			<bind role="stop" component="tUpa"/>
			<bind role="stop" component="iUpa"/>
		</link>

		<!--  CURSOR_UP -->
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="SamuON">
		            <bindParam name="keyCode" value="CURSOR_UP"/>
		      </bind>
		      <bind role="stop" component="SamuON"/>
		      <bind role="start" component="UpaON"/>
		</link>
		
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="UpaON">
		            <bindParam name="keyCode" value="CURSOR_UP"/>
		      </bind>
		      <bind role="stop" component="UpaON"/>
		      <bind role="start" component="SamuON"/>
		</link>
		
		<!--  CURSOR_DOWN -->
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="SamuON">
		            <bindParam name="keyCode" value="CURSOR_DOWN"/>
		      </bind>
		      <bind role="stop" component="SamuON"/>
		      <bind role="start" component="UpaON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="UpaON">
		            <bindParam name="keyCode" value="CURSOR_DOWN"/>
		      </bind>
		      <bind role="stop" component="UpaON"/>
		      <bind role="start" component="SamuON"/>
		</link>
	</context>
</body>
</ncl>
