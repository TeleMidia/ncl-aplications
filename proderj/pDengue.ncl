<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl xsi:schemaLocation="http://www.ncl.org.br/NCL3.0/EDTVProfile http://www.ncl.org.br/NCL3.0/profiles/NCL30EDTV.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile" id="pDengue">
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
	<port interface="pPrevenirON" component="ctDengue" id="p_ctDengue_PrevenirON"/>
	<port interface="pTitulo" component="ctDengue" id="p_ctDengue_Titulo"/>
	<context id="ctDengue">
		<port component="PrevenirON" id="pPrevenirON"/>
		<port component="SintomasON" id="pSintomasON"/>
		<port component="HemoON" id="pHemoON"/>
		<port component="FazerON" id="pFazerON"/>
		<port component="titulo" id="pTitulo"/>

		<media descriptor="dColuna1_Botao1" src="UPA/ctDengue/PrevenirON.png" id="PrevenirON"/>
		<media descriptor="dColuna1_Botao1" src="UPA/ctDengue/PrevenirOFF.png" id="PrevenirOFF"/>
		<media descriptor="dColuna1_Botao2" src="UPA/ctDengue/SintomasON.png" id="SintomasON"/>
		<media descriptor="dColuna1_Botao2" src="UPA/ctDengue/SintomasOFF.png" id="SintomasOFF"/>
		<media descriptor="dColuna1_Botao3" src="UPA/ctDengue/HemoON.png" id="HemoON"/>
		<media descriptor="dColuna1_Botao3" src="UPA/ctDengue/HemoOFF.png" id="HemoOFF"/>
		<media descriptor="dColuna1_Botao4" src="UPA/ctDengue/FazerON.png" id="FazerON"/>
		<media descriptor="dColuna1_Botao4" src="UPA/ctDengue/FazerOFF.png" id="FazerOFF"/>

		<media descriptor="dTitulo" src="UPA/ctDengue/Titulo.png" id="titulo"/>
		
		<media descriptor="dTexto" src="UPA/ctDengue/PrevenirTEXT.png" id="tPrevenir"/>
		<media descriptor="dIconeShow" src="UPA/ctDengue/PrevenirIMAGE.png" id="iPrevenir"/>
		<media descriptor="dIconeShow" src="UPA/ctDengue/PrevenirIMAGE2.png" id="iPrevenir2"/>
		<media descriptor="dIconeShow" src="UPA/ctDengue/PrevenirIMAGE3.png" id="iPrevenir3"/>
		<media descriptor="dIconeShow" src="UPA/ctDengue/PrevenirIMAGE4.png" id="iPrevenir4"/>
		<media descriptor="dIconeShow" src="UPA/ctDengue/PrevenirIMAGE5.png" id="iPrevenir5"/>
		
		<media descriptor="dTexto" src="UPA/ctDengue/SintomasTEXT.png" id="tSintomas"/>
		<media descriptor="dIcone" src="UPA/ctDengue/SintomasIMAGE.png" id="iSintomas"/>
		<media descriptor="dTexto" src="UPA/ctDengue/HemoTEXT.png" id="tHemo"/>
		<media descriptor="dIcone" src="UPA/ctDengue/HemoIMAGE.png" id="iHemo"/>
		<media descriptor="dTexto" src="UPA/ctDengue/FazerTEXT.png" id="tFazer"/>
		<media descriptor="dIcone" src="UPA/ctDengue/FazerIMAGE.png" id="iFazer"/>
			
		<link xconnector="connBase#onBeginStopNStartN" id="lPrevenirON">
			<bind role="onBegin" component="PrevenirON"/>
			<bind role="stop" component="PrevenirOFF"/>
			<bind role="start" component="SintomasOFF"/>
			<bind role="start" component="HemoOFF"/>
			<bind role="start" component="FazerOFF"/>
			<bind role="start" component="tPrevenir"/>
			<bind role="start" component="iPrevenir"/>
		</link>
		<link xconnector="connBase#onBeginStopNStartN" id="lSintomasON">
			<bind role="onBegin" component="SintomasON"/>
			<bind role="stop" component="SintomasOFF"/>
			<bind role="start" component="FazerOFF"/>
			<bind role="start" component="PrevenirOFF"/>
			<bind role="start" component="HemoOFF"/>
			<bind role="start" component="tSintomas"/>
			<bind role="start" component="iSintomas"/>
		</link>
		<link xconnector="connBase#onBeginStopNStartN" id="lFazerON">
			<bind role="onBegin" component="FazerON"/>
			<bind role="stop" component="FazerOFF"/>
			<bind role="start" component="PrevenirOFF"/>
			<bind role="start" component="SintomasOFF"/>
			<bind role="start" component="HemoOFF"/>
			<bind role="start" component="tFazer"/>
			<bind role="start" component="iFazer"/>
		</link>
		<link xconnector="connBase#onBeginStopNStartN" id="lHemoON">
			<bind role="onBegin" component="HemoON"/>
			<bind role="stop" component="HemoOFF"/>
			<bind role="start" component="PrevenirOFF"/>
			<bind role="start" component="SintomasOFF"/>
			<bind role="start" component="FazerOFF"/>
			<bind role="start" component="tHemo"/>
			<bind role="start" component="iHemo"/>
		</link>

		<!-- stop nos textos e icones -->
		<link xconnector="connBase#onEndAbortNStopN">
			<bind role="onEnd" component="PrevenirON"/>
			<bind role="stop" component="tPrevenir"/>
			<bind role="abort" component="iPrevenir"/>
			<bind role="abort" component="iPrevenir2"/>
			<bind role="abort" component="iPrevenir3"/>
			<bind role="abort" component="iPrevenir4"/>
			<bind role="abort" component="iPrevenir5"/>
		</link>
		<link xconnector="connBase#onEndStopN">
			<bind role="onEnd" component="SintomasON"/>
			<bind role="stop" component="tSintomas"/>
			<bind role="stop" component="iSintomas"/>
		</link>
		<link xconnector="connBase#onEndStopN">
			<bind role="onEnd" component="FazerON"/>
			<bind role="stop" component="tFazer"/>
			<bind role="stop" component="iFazer"/>
		</link>
		<link xconnector="connBase#onEndStopN">
			<bind role="onEnd" component="HemoON"/>
			<bind role="stop" component="tHemo"/>
			<bind role="stop" component="iHemo"/>
		</link>
	
		<!--  CURSOR_UP -->
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="PrevenirON">
		            <bindParam name="keyCode" value="CURSOR_UP"/>
		      </bind>
		      <bind role="stop" component="PrevenirON"/>
		      <bind role="start" component="FazerON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="SintomasON">
		            <bindParam name="keyCode" value="CURSOR_UP"/>
		      </bind>
		      <bind role="stop" component="SintomasON"/>
		      <bind role="start" component="PrevenirON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="HemoON">
		            <bindParam name="keyCode" value="CURSOR_UP"/>
		      </bind>
		      <bind role="stop" component="HemoON"/>
		      <bind role="start" component="SintomasON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="FazerON">
		            <bindParam name="keyCode" value="CURSOR_UP"/>
		      </bind>
		      <bind role="stop" component="FazerON"/>
		      <bind role="start" component="HemoON"/>
		</link>
	
		<!--  CURSOR_DOWN -->
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="PrevenirON">
		            <bindParam name="keyCode" value="CURSOR_DOWN"/>
		      </bind>
		      <bind role="stop" component="PrevenirON"/>
		      <bind role="start" component="SintomasON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="SintomasON">
		            <bindParam name="keyCode" value="CURSOR_DOWN"/>
		      </bind>
		      <bind role="stop" component="SintomasON"/>
		      <bind role="start" component="HemoON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="HemoON">
		            <bindParam name="keyCode" value="CURSOR_DOWN"/>
		      </bind>
		      <bind role="stop" component="HemoON"/>
		      <bind role="start" component="FazerON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="FazerON">
		            <bindParam name="keyCode" value="CURSOR_DOWN"/>
		      </bind>
		      <bind role="stop" component="FazerON"/>
		      <bind role="start" component="PrevenirON"/>
		</link>
		
		<!-- slideshow do Prevenir -->
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iPrevenir"/>
			<bind role="start" component="iPrevenir2"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iPrevenir2"/>
			<bind role="start" component="iPrevenir3"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iPrevenir3"/>
			<bind role="start" component="iPrevenir4"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iPrevenir4"/>
			<bind role="start" component="iPrevenir5"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iPrevenir5"/>
			<bind role="start" component="iPrevenir"/>
		</link>
	</context>
</body>
</ncl>