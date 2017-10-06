<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl xsi:schemaLocation="http://www.ncl.org.br/NCL3.0/EDTVProfile http://www.ncl.org.br/NCL3.0/profiles/NCL30EDTV.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile" id="pEspecialidades">

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
	<port id="entryPort" component="ctEspecialidades" interface="pGeralON"/>
	<port id="entryPort2" component="ctEspecialidades" interface="pTitulo"/>
	<context id="ctEspecialidades">
		<port component="geralON" id="pGeralON"/>
		<port component="pediatriaON" id="pPediatriaON"/>
		<port component="ortopediaON" id="pOrtopediaON"/>
		<port component="odontologiaON" id="pOdontologiaON"/>
		<port component="titulo" id="pTitulo"/>

		<media descriptor="dColuna1_Botao1" src="UPA/ctEspecialidades/GeralON.png" id="geralON"/>
		<media descriptor="dColuna1_Botao1" src="UPA/ctEspecialidades/GeralOFF.png" id="geralOFF"/>
		<media descriptor="dColuna1_Botao2" src="UPA/ctEspecialidades/PediatriaON.png" id="pediatriaON"/>
		<media descriptor="dColuna1_Botao2" src="UPA/ctEspecialidades/PediatriaOFF.png" id="pediatriaOFF"/>
		<media descriptor="dColuna1_Botao3" src="UPA/ctEspecialidades/OrtopediaON.png" id="ortopediaON"/>
		<media descriptor="dColuna1_Botao3" src="UPA/ctEspecialidades/OrtopediaOFF.png" id="ortopediaOFF"/>
		<media descriptor="dColuna1_Botao4" src="UPA/ctEspecialidades/OdontologiaON.png" id="odontologiaON"/>
		<media descriptor="dColuna1_Botao4" src="UPA/ctEspecialidades/OdontologiaOFF.png" id="odontologiaOFF"/>

		<media descriptor="dTitulo" src="UPA/ctEspecialidades/Titulo.png" id="titulo"/>

		<media id="tGeral" src="UPA/ctEspecialidades/GeralTEXT.png" descriptor="dTexto"/>
		<media id="tPediatria" src="UPA/ctEspecialidades/PediatriaTEXT.png" descriptor="dTexto"/>
		<media id="tOrtopedia" src="UPA/ctEspecialidades/OrtopediaTEXT.png" descriptor="dTexto"/>
		<media id="tOdontologia" src="UPA/ctEspecialidades/OdontologiaTEXT.png" descriptor="dTexto"/>

		<media id="iGeral" src="UPA/ctEspecialidades/GeralIMAGE.png" descriptor="dIconeShow"/>
		<media id="iGeral2" src="UPA/ctEspecialidades/GeralIMAGE2.png" descriptor="dIconeShow"/>
		<media id="iGeral3" src="UPA/ctEspecialidades/GeralIMAGE3.png" descriptor="dIconeShow"/>
		<media id="iGeral4" src="UPA/ctEspecialidades/GeralIMAGE4.png" descriptor="dIconeShow"/>
		<media id="iGeral5" src="UPA/ctEspecialidades/GeralIMAGE5.png" descriptor="dIconeShow"/>

		<media id="iPediatria" src="UPA/ctEspecialidades/PediatriaIMAGE.png" descriptor="dIconeShow"/>
		<media id="iPediatria2" src="UPA/ctEspecialidades/PediatriaIMAGE2.png" descriptor="dIconeShow"/>
		<media id="iPediatria3" src="UPA/ctEspecialidades/PediatriaIMAGE3.png" descriptor="dIconeShow"/>
		<media id="iPediatria4" src="UPA/ctEspecialidades/PediatriaIMAGE4.png" descriptor="dIconeShow"/>
		<media id="iPediatria5" src="UPA/ctEspecialidades/PediatriaIMAGE5.png" descriptor="dIconeShow"/>

		<media id="iOrtopedia" src="UPA/ctEspecialidades/OrtopediaIMAGE.png" descriptor="dIconeShow"/>
		<media id="iOrtopedia2" src="UPA/ctEspecialidades/OrtopediaIMAGE2.png" descriptor="dIconeShow"/>
		<media id="iOrtopedia3" src="UPA/ctEspecialidades/OrtopediaIMAGE3.png" descriptor="dIconeShow"/>
		<media id="iOrtopedia4" src="UPA/ctEspecialidades/OrtopediaIMAGE4.png" descriptor="dIconeShow"/>
		<media id="iOrtopedia5" src="UPA/ctEspecialidades/OrtopediaIMAGE5.png" descriptor="dIconeShow"/>

		<media id="iOdontologia" src="UPA/ctEspecialidades/OdontologiaIMAGE.png" descriptor="dIconeShow"/>
		<media id="iOdontologia2" src="UPA/ctEspecialidades/OdontologiaIMAGE2.png" descriptor="dIconeShow"/>
		<media id="iOdontologia3" src="UPA/ctEspecialidades/OdontologiaIMAGE3.png" descriptor="dIconeShow"/>
		<media id="iOdontologia4" src="UPA/ctEspecialidades/OdontologiaIMAGE4.png" descriptor="dIconeShow"/>
		<media id="iOdontologia5" src="UPA/ctEspecialidades/OdontologiaIMAGE5.png" descriptor="dIconeShow"/>

		<!-- o botao em foco deixa todos os demais sem foco -->
		<link xconnector="connBase#onBeginStopNStartN" id="lGeralON">
		      <bind role="onBegin" component="geralON"/>
		      <bind role="stop" component="geralOFF"/>
		      <bind role="start" component="pediatriaOFF"/>
		      <bind role="start" component="ortopediaOFF"/>
		      <bind role="start" component="odontologiaOFF"/>
		      <bind role="start" component="tGeral"/>
		      <bind role="start" component="iGeral"/>
		</link>
		<link xconnector="connBase#onBeginStopNStartN" id="lPediatriaOn">
		      <bind role="onBegin" component="pediatriaON"/>
		      <bind role="stop" component="pediatriaOFF"/>
		      <bind role="start" component="geralOFF"/>
		      <bind role="start" component="ortopediaOFF"/>
		      <bind role="start" component="odontologiaOFF"/>
		      <bind role="start" component="tPediatria"/>
		      <bind role="start" component="iPediatria"/>
		</link>
		<link xconnector="connBase#onBeginStopNStartN" id="lOrtopediaON">
		      <bind role="onBegin" component="ortopediaON"/>
		      <bind role="stop" component="ortopediaOFF"/>
		      <bind role="start" component="geralOFF"/>
		      <bind role="start" component="pediatriaOFF"/>
		      <bind role="start" component="odontologiaOFF"/>
			  <bind role="start" component="tOrtopedia"/>
		      <bind role="start" component="iOrtopedia"/>
		</link>
		<link xconnector="connBase#onBeginStopNStartN" id="lOdontologiaON">
		      <bind role="onBegin" component="odontologiaON"/>
		      <bind role="stop" component="odontologiaOFF"/>
		      <bind role="start" component="ortopediaOFF"/>
		      <bind role="start" component="geralOFF"/>
		      <bind role="start" component="pediatriaOFF"/>
			  <bind role="start" component="tOdontologia"/>
		      <bind role="start" component="iOdontologia"/>
		</link>
		
		<!-- sumindo texto e icones -->
		<link xconnector="connBase#onEndAbortNStopN">
		      <bind role="onEnd" component="geralON"/>
		      <bind role="stop" component="tGeral"/>
		      <bind role="abort" component="iGeral"/>
		      <bind role="abort" component="iGeral2"/>
		      <bind role="abort" component="iGeral3"/>
		      <bind role="abort" component="iGeral4"/>
		      <bind role="abort" component="iGeral5"/>
		</link>
		<link xconnector="connBase#onEndAbortNStopN">
		      <bind role="onEnd" component="ortopediaON"/>
		      <bind role="stop" component="tOrtopedia"/>
		      <bind role="abort" component="iOrtopedia"/>
		      <bind role="abort" component="iOrtopedia2"/>
		      <bind role="abort" component="iOrtopedia3"/>
		      <bind role="abort" component="iOrtopedia4"/>
		      <bind role="abort" component="iOrtopedia5"/>
		</link>
		<link xconnector="connBase#onEndAbortNStopN">
		      <bind role="onEnd" component="odontologiaON"/>
		      <bind role="stop" component="tOdontologia"/>
		      <bind role="abort" component="iOdontologia"/>
		      <bind role="abort" component="iOdontologia2"/>
		      <bind role="abort" component="iOdontologia3"/>
		      <bind role="abort" component="iOdontologia4"/>
		      <bind role="abort" component="iOdontologia5"/>
		</link>
		<link xconnector="connBase#onEndAbortNStopN">
		      <bind role="onEnd" component="pediatriaON"/>
		      <bind role="stop" component="tPediatria"/>
		      <bind role="abort" component="iPediatria"/>
		      <bind role="abort" component="iPediatria2"/>
		      <bind role="abort" component="iPediatria3"/>
		      <bind role="abort" component="iPediatria4"/>
		      <bind role="abort" component="iPediatria5"/>
		</link>

		<!-- navegacao UP e DOWN -->
		<!-- CURSOR_DOWN -->
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="geralON">
		            <bindParam name="keyCode" value="CURSOR_DOWN"/>
		      </bind>
		      <bind role="stop" component="geralON"/>
		      <bind role="start" component="pediatriaON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="pediatriaON">
		            <bindParam name="keyCode" value="CURSOR_DOWN"/>
		      </bind>
		      <bind role="stop" component="pediatriaON"/>
		      <bind role="start" component="ortopediaON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="ortopediaON">
		            <bindParam name="keyCode" value="CURSOR_DOWN"/>
		      </bind>
		      <bind role="stop" component="ortopediaON"/>
		      <bind role="start" component="odontologiaON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="odontologiaON">
		            <bindParam name="keyCode" value="CURSOR_DOWN"/>
		      </bind>
		      <bind role="stop" component="odontologiaON"/>
		      <bind role="start" component="geralON"/>
		</link>
		<!--  CURSOR_UP -->
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="geralON">
		            <bindParam name="keyCode" value="CURSOR_UP"/>
		      </bind>
		      <bind role="stop" component="geralON"/>
		      <bind role="start" component="odontologiaON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="pediatriaON">
		            <bindParam name="keyCode" value="CURSOR_UP"/>
		      </bind>
		      <bind role="stop" component="pediatriaON"/>
		      <bind role="start" component="geralON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="ortopediaON">
		            <bindParam name="keyCode" value="CURSOR_UP"/>
		      </bind>
		      <bind role="stop" component="ortopediaON"/>
		      <bind role="start" component="pediatriaON"/>
		</link>
		<link xconnector="connBase#onKeySelectionStopNStartN">
		      <bind role="onSelection" component="odontologiaON">
		            <bindParam name="keyCode" value="CURSOR_UP"/>
		      </bind>
		      <bind role="stop" component="odontologiaON"/>
		      <bind role="start" component="ortopediaON"/>
		</link>
		
		<!-- slideshow Geral -->
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iGeral"/>
			<bind role="start" component="iGeral2"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iGeral2"/>
			<bind role="start" component="iGeral3"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iGeral3"/>
			<bind role="start" component="iGeral4"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iGeral4"/>
			<bind role="start" component="iGeral"/>
		</link>
		
		<!-- slideshow Pediatria -->
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iPediatria"/>
			<bind role="start" component="iPediatria2"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iPediatria2"/>
			<bind role="start" component="iPediatria3"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iPediatria3"/>
			<bind role="start" component="iPediatria4"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iPediatria4"/>
			<bind role="start" component="iPediatria"/>
		</link>
		
		<!-- slideshow Ortopedia -->
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iOrtopedia"/>
			<bind role="start" component="iOrtopedia2"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iOrtopedia2"/>
			<bind role="start" component="iOrtopedia3"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iOrtopedia3"/>
			<bind role="start" component="iOrtopedia4"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iOrtopedia4"/>
			<bind role="start" component="iOrtopedia"/>
		</link>
		
		<!-- slideshow Odontologia -->
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iOdontologia"/>
			<bind role="start" component="iOdontologia2"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iOdontologia2"/>
			<bind role="start" component="iOdontologia3"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iOdontologia3"/>
			<bind role="start" component="iOdontologia4"/>
		</link>
		<link xconnector="connBase#onEndStart">
			<bind role="onEnd" component="iOdontologia4"/>
			<bind role="start" component="iOdontologia"/>
		</link>
		
	</context>

</body>

</ncl>