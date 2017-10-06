<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl xsi:schemaLocation="http://www.ncl.org.br/NCL3.0/EDTVProfile http://www.ncl.org.br/NCL3.0/profiles/NCL30EDTV.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile" id="pUnidades">

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
	<port id="entryPort" component="ctUnidades" interface="pBanguON"/>
	<port interface="pTitulo" component="ctUnidades" id="port_proderj_ctEspecialidades_titulo"/>

	<context id="ctUnidades">
		<port component="BanguON" id="pBanguON"/>
		<port component="BanguOFF" id="pBanguOFF"/>
		<port component="BelfordON" id="pBelfordON"/>
		<port component="BelfordOFF" id="pBelfordOFF"/>
		<port component="CpoGrandeON" id="pCpoGrandeON"/>
		<port component="CpoGrandeOFF" id="pCpoGrandeOFF"/>
		<port component="IrajaON" id="pIrajaON"/>
		<port component="IrajaOFF" id="pIrajaOFF"/>
		<port component="MareON" id="pMareON"/>
		<port component="MareOFF" id="pMareOFF"/>
		<port component="StaCruzON" id="pStaCruzON"/>
		<port component="StaCruzOFF" id="pStaCruzOFF"/>
		<port component="titulo" id="pTitulo"/>

		<media descriptor="dColuna1_Botao1" src="UPA/ctUnidades/BanguON.png" id="BanguON"/>
		<media descriptor="dColuna1_Botao1" src="UPA/ctUnidades/BanguOFF.png" id="BanguOFF"/>
		<media descriptor="dColuna1_Botao2" src="UPA/ctUnidades/BelfordON.png" id="BelfordON"/>
		<media descriptor="dColuna1_Botao2" src="UPA/ctUnidades/BelfordOFF.png" id="BelfordOFF"/>
		<media descriptor="dColuna1_Botao3" src="UPA/ctUnidades/CpoGrandeON.png" id="CpoGrandeON"/>
		<media descriptor="dColuna1_Botao3" src="UPA/ctUnidades/CpoGrandeOFF.png" id="CpoGrandeOFF"/>
		<media descriptor="dColuna1_Botao4" src="UPA/ctUnidades/IrajaON.png" id="IrajaON"/>
		<media descriptor="dColuna1_Botao4" src="UPA/ctUnidades/IrajaOFF.png" id="IrajaOFF"/>

		<media descriptor="dColuna1_Botao1" src="UPA/ctUnidades/MareON.png" id="MareON"/>
		<media descriptor="dColuna1_Botao1" src="UPA/ctUnidades/MareOFF.png" id="MareOFF"/>
		<media descriptor="dColuna1_Botao2" src="UPA/ctUnidades/StaCruzON.png" id="StaCruzON"/>
		<media descriptor="dColuna1_Botao2" src="UPA/ctUnidades/StaCruzOFF.png" id="StaCruzOFF"/>

		<media descriptor="dTitulo" src="UPA/ctUnidades/Titulo.png" id="titulo"/>

		<media descriptor="dTexto" src="UPA/ctUnidades/BanguTEXT.png" id="tBangu"/>
		<media descriptor="dIconeShow" src="UPA/ctUnidades/BanguIMAGE.png" id="iBangu"/>
		<media descriptor="dIconeShow" src="UPA/ctUnidades/BanguIMAGE2.png" id="iBangu2"/>
		
		<media descriptor="dTexto" src="UPA/ctUnidades/BelfordTEXT.png" id="tBelford"/>
		<media descriptor="dIconeShow" src="UPA/ctUnidades/BelfordIMAGE.png" id="iBelford"/>
		<media descriptor="dIconeShow" src="UPA/ctUnidades/BelfordIMAGE2.png" id="iBelford2"/>
		
		<media descriptor="dTexto" src="UPA/ctUnidades/CpoGrandeTEXT.png" id="tCpoGrande"/>
		<media descriptor="dIconeShow" src="UPA/ctUnidades/CpoGrandeIMAGE.png" id="iCpoGrande"/>
		<media descriptor="dIconeShow" src="UPA/ctUnidades/CpoGrandeIMAGE2.png" id="iCpoGrande2"/>
		
		<media descriptor="dTexto" src="UPA/ctUnidades/IrajaTEXT.png" id="tIraja"/>
		<media descriptor="dIconeShow" src="UPA/ctUnidades/IrajaIMAGE.png" id="iIraja"/>
		<media descriptor="dIconeShow" src="UPA/ctUnidades/IrajaIMAGE2.png" id="iIraja2"/>

		<media descriptor="dTexto" src="UPA/ctUnidades/MareTEXT.png" id="tMare"/>
		<media descriptor="dIconeShow" src="UPA/ctUnidades/MareIMAGE.png" id="iMare"/>
		<media descriptor="dIconeShow" src="UPA/ctUnidades/MareIMAGE2.png" id="iMare2"/>
		
		<media descriptor="dTexto" src="UPA/ctUnidades/StaCruzTEXT.png" id="tStaCruz"/>
		<media descriptor="dIconeShow" src="UPA/ctUnidades/StaCruzIMAGE.png" id="iStaCruz"/>
		<media descriptor="dIconeShow" src="UPA/ctUnidades/StaCruzIMAGE2.png" id="iStaCruz2"/>

		<link xconnector="connBase#onBeginStopNStartN" id="lBanguON">
			<bind role="onBegin" component="BanguON"/>
			<bind role="stop" component="BanguOFF"/>
            <bind role="start" component="BelfordOFF"/>
			<bind role="start" component="CpoGrandeOFF"/>
			<bind role="start" component="IrajaOFF"/>
			<bind role="stop" component="MareOFF"/>
			<bind role="stop" component="StaCruzOFF"/>
			<bind role="start" component="tBangu"/>
			<bind role="start" component="iBangu"/>
		</link>
		<link xconnector="connBase#onBeginStopNStartN" id="lBelfordON">
			<bind role="onBegin" component="BelfordON"/>
			<bind role="start" component="BanguOFF"/>
            <bind role="stop" component="BelfordOFF"/>
			<bind role="start" component="CpoGrandeOFF"/>
			<bind role="start" component="IrajaOFF"/>
			<bind role="stop" component="MareOFF"/>
			<bind role="stop" component="StaCruzOFF"/>
			<bind role="start" component="tBelford"/>
			<bind role="start" component="iBelford"/> 			
		</link>
		<link xconnector="connBase#onBeginStopNStartN" id="lCpoGrandeOn">
			<bind role="onBegin" component="CpoGrandeON"/>
			<bind role="start" component="BanguOFF"/>
            <bind role="start" component="BelfordOFF"/>
			<bind role="stop" component="CpoGrandeOFF"/>
			<bind role="start" component="IrajaOFF"/>
			<bind role="stop" component="MareOFF"/>
			<bind role="stop" component="StaCruzOFF"/>			
			<bind role="start" component="tCpoGrande"/>
			<bind role="start" component="iCpoGrande"/>
		</link>
		<link xconnector="connBase#onBeginStopNStartN" id="lIrajaON">
			<bind role="onBegin" component="IrajaON"/>
			<bind role="start" component="BanguOFF"/>
            <bind role="start" component="BelfordOFF"/>
			<bind role="start" component="CpoGrandeOFF"/>
			<bind role="stop" component="IrajaOFF"/>
			<bind role="stop" component="MareOFF"/>
			<bind role="stop" component="StaCruzOFF"/>
			<bind role="start" component="tIraja"/>
			<bind role="start" component="iIraja"/>
		</link>
		<link xconnector="connBase#onBeginStopNStartN" id="lMareON">
			<bind role="onBegin" component="MareON"/>
			<bind role="stop" component="BanguOFF"/>
            <bind role="stop" component="BelfordOFF"/>
			<bind role="stop" component="CpoGrandeOFF"/>
			<bind role="stop" component="IrajaOFF"/>
			<bind role="stop" component="MareOFF"/>
			<bind role="start" component="StaCruzOFF"/>
			<bind role="start" component="tMare"/>
			<bind role="start" component="iMare"/>
		</link>
		<link xconnector="connBase#onBeginStopNStartN" id="lStaCruzON">
			<bind role="onBegin" component="StaCruzON"/>
			<bind role="stop" component="BanguOFF"/>
            <bind role="stop" component="BelfordOFF"/>
			<bind role="stop" component="CpoGrandeOFF"/>
			<bind role="stop" component="IrajaOFF"/>
			<bind role="start" component="MareOFF"/>
			<bind role="stop" component="StaCruzOFF"/>
			<bind role="start" component="tStaCruz"/>
			<bind role="start" component="iStaCruz"/> 			
		</link>

		<!-- abort nos icones -->
		<link xconnector="connBase#onEndAbortNStopN">
			<bind role="onEnd" component="BanguON"/>
			<bind role="stop" component="tBangu"/>
			<bind role="abort" component="iBangu"/>
			<bind role="abort" component="iBangu2"/>
		</link>
		<link xconnector="connBase#onEndAbortNStopN">
			<bind role="onEnd" component="BelfordON"/>
			<bind role="stop" component="tBelford"/>
			<bind role="abort" component="iBelford"/>
			<bind role="abort" component="iBelford2"/>
		</link>
		<link xconnector="connBase#onEndAbortNStopN">
			<bind role="onEnd" component="CpoGrandeON"/>
			<bind role="stop" component="tCpoGrande"/>
			<bind role="abort" component="iCpoGrande"/>
			<bind role="abort" component="iCpoGrande2"/>
		</link>
		<link xconnector="connBase#onEndAbortNStopN">
			<bind role="onEnd" component="IrajaON"/>
			<bind role="stop" component="tIraja"/>
			<bind role="abort" component="iIraja"/>
			<bind role="abort" component="iIraja2"/>
		</link>
		<link xconnector="connBase#onEndAbortNStopN">
			<bind role="onEnd" component="MareON"/>
			<bind role="stop" component="tMare"/>
			<bind role="abort" component="iMare"/>
			<bind role="abort" component="iMare2"/>
		</link>
		<link xconnector="connBase#onEndAbortNStopN">
			<bind role="onEnd" component="StaCruzON"/>
			<bind role="stop" component="tStaCruz"/>
			<bind role="abort" component="iStaCruz"/>
			<bind role="abort" component="iStaCruz2"/>
		</link>

		<!--  CURSOR_DOWN -->
		<link xconnector="connBase#onKeySelectionStopNStartN">
			<bind role="onSelection" component="BanguON">
				<bindParam name="keyCode" value="CURSOR_DOWN"/>
			</bind>
			<bind role="stop" component="BanguON"/>
			<bind role="start" component="BelfordON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
			<bind role="onSelection" component="BelfordON">
				<bindParam name="keyCode" value="CURSOR_DOWN"/>
			</bind>
			<bind role="stop" component="BelfordON"/>
			<bind role="start" component="CpoGrandeON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
			<bind role="onSelection" component="CpoGrandeON">
				<bindParam name="keyCode" value="CURSOR_DOWN"/>
			</bind>
			<bind role="stop" component="CpoGrandeON"/>
			<bind role="start" component="IrajaON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
			<bind role="onSelection" component="IrajaON">
				<bindParam name="keyCode" value="CURSOR_DOWN"/>
			</bind>
			<bind role="stop" component="BanguOFF"/>
			<bind role="stop" component="BelfordOFF"/>
			<bind role="stop" component="CpoGrandeOFF"/>
			<bind role="stop" component="IrajaON"/>
			<bind role="start" component="MareON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
			<bind role="onSelection" component="MareON">
				<bindParam name="keyCode" value="CURSOR_DOWN"/>
			</bind>
			<bind role="stop" component="MareON"/> 	
		    <bind role="start" component="StaCruzON"/>
		</link>

		<!--  CURSOR_UP -->	
		<link xconnector="connBase#onKeySelectionStopNStartN">
			<bind role="onSelection" component="BelfordON">
				<bindParam name="keyCode" value="CURSOR_UP"/>
			</bind>
			<bind role="stop" component="BelfordON"/>
			<bind role="start" component="BanguON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
			<bind role="onSelection" component="CpoGrandeON">
				<bindParam name="keyCode" value="CURSOR_UP"/>
			</bind>
			<bind role="stop" component="CpoGrandeON"/>
			<bind role="start" component="BelfordON"/>
		</link>

		<link xconnector="connBase#onKeySelectionStopNStartN">
			<bind role="onSelection" component="IrajaON">
				<bindParam name="keyCode" value="CURSOR_UP"/>
			</bind>
			<bind role="stop" component="IrajaON"/>
			<bind role="start" component="CpoGrandeON"/>
		</link>

		<link xconnector="connBase#onKeySelectionStopNStartN">
			<bind role="onSelection" component="MareON">
				<bindParam name="keyCode" value="CURSOR_UP"/>
			</bind>
			<bind role="stop" component="MareON"/>
			<bind role="stop" component="StaCruzOFF"/>
			<bind role="start" component="IrajaON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
			<bind role="onSelection" component="StaCruzON">
				<bindParam name="keyCode" value="CURSOR_UP"/>
			</bind>
			<bind role="stop" component="StaCruzON"/>
			<bind role="start" component="MareON"/>
		</link>
		
		<!-- slideshow Bangu -->
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iBangu"/>
			<bind role="start" component="iBangu2"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iBangu2"/>
			<bind role="start" component="iBangu"/>
		</link>
		
		<!-- slideshow Belford Roxo -->
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iBelford"/>
			<bind role="start" component="iBelford2"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iBelford2"/>
			<bind role="start" component="iBelford"/>
		</link>
		
		<!-- slideshow CpoGrande -->
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iCpoGrande"/>
			<bind role="start" component="iCpoGrande2"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iCpoGrande2"/>
			<bind role="start" component="iCpoGrande"/>
		</link>

		<!-- slideshow Iraja -->
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iIraja"/>
			<bind role="start" component="iIraja2"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iIraja2"/>
			<bind role="start" component="iIraja"/>
		</link>
		
		<!-- slideshow Mare -->
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iMare"/>
			<bind role="start" component="iMare2"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iMare2"/>
			<bind role="start" component="iMare"/>
		</link>

		<!-- slideshow StaCruz -->
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iStaCruz"/>
			<bind role="start" component="iStaCruz2"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iStaCruz2"/>
			<bind role="start" component="iStaCruz"/>
		</link>

	</context>

</body>

</ncl>