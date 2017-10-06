<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl xsi:schemaLocation="http://www.ncl.org.br/NCL3.0/EDTVProfile http://www.ncl.org.br/NCL3.0/profiles/NCL30EDTV.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile" id="efeito">
<head>
	<transitionBase>
		<transition id="rightToLeft" type="barWipe" subtype="leftToRight" direction="reverse" dur="0.5s"/>
		<transition id="leftToRight" type="barWipe" subtype="leftToRight" dur="1s"/>
		<transition id="topToBottom" type="barWipe" subtype="topToBottom" dur="1s"/>
		<transition id="bottomUp" type="barWipe" subtype="topToBottom" direction="reverse" dur="1s"/>
		<transition id="bottomUpPilha" type="barWipe" subtype="topToBottom" direction="reverse" dur="0.5s"/>
		<transition id="fadeTransition" type="fade" dur="0.7s"/>
		<transition id="fadeTransitionReverse" type="fade" dur="1s"/>
	</transitionBase>
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
		<descriptor id="dColuna1_Botao1" region="rgColuna1_Botao1" transIn="fadeTransition">
			<descriptorParam name="chromakey" value="black"/>
			<descriptorParam name="transparency" value="0.15"/>
		</descriptor>
		<descriptor id="dColuna1_Botao2" region="rgColuna1_Botao2" transIn="fadeTransition">
			<descriptorParam name="chromakey" value="black"/>
			<descriptorParam name="transparency" value="0.15"/>
		</descriptor>
		<descriptor id="dColuna1_Botao3" region="rgColuna1_Botao3" transIn="fadeTransition">
			<descriptorParam name="chromakey" value="black"/>
			<descriptorParam name="transparency" value="0.15"/>
		</descriptor>
		<descriptor id="dColuna1_Botao4" region="rgColuna1_Botao4" transIn="fadeTransition">
			<descriptorParam name="chromakey" value="black"/>
			<descriptorParam name="transparency" value="0.15"/>
		</descriptor>
		<descriptor id="dColuna1_BotaoC" region="rgColuna1_BotaoC" transIn="fadeTransition">
			<descriptorParam name="chromakey" value="black"/>
			<descriptorParam name="transparency" value="0.15"/>
		</descriptor>
		<descriptor id="dTexto" region="rgTexto" ABCtransIn="topToBottom">
			<descriptorParam name="chromakey" value="black"/>
			<descriptorParam name="transparency" value="0.15"/>
		</descriptor>
		<descriptor id="dIcone" region="rgIcone" ABCtransIn="leftToRight">
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
		<descriptor id="dTitulo" region="rgBarraTitulo" transIn="leftToRight" explicitDur="4s">
			<descriptorParam name="chromakey" value="black"/>
			<descriptorParam name="transparency" value="0.15"/>
		</descriptor>
	</descriptorBase>

	<connectorBase>
		<importBase documentURI="composerConnectorBase.ncl" alias="connBase"/>
	</connectorBase>
</head>
<body>
	<port id="p1" component="titulo"/>
	<port id="p2" component="DengueON"/>
	<port id="p3" component="EmergenciaOFF"/>
	<port id="p4" component="SangueOFF"/>
	<port id="p5" component="tDengue"/>
	<port id="p6" component="iDengue"/>
	<media descriptor="dTitulo" src="UPA/ctPrincipal/Titulo.png" id="titulo"/>
	<media descriptor="dColuna1_Botao1" src="UPA/ctPrincipal/DengueON.png" id="DengueON"/>
	<media descriptor="dColuna1_Botao2" src="UPA/ctPrincipal/EmergenciaOFF.png" id="EmergenciaOFF"/>
	<media descriptor="dColuna1_Botao3" src="UPA/ctPrincipal/SangueOFF.png" id="SangueOFF"/>
	<media descriptor="dTexto" src="UPA/ctPrincipal/DengueTEXT.png" id="tDengue"/>
	<media descriptor="dIcone" src="UPA/ctPrincipal/DengueIMAGE.png" id="iDengue"/>

	<link xconnector="connBase#onEndStopN">
		<bind role="onEnd" component="titulo"/>
		<bind role="stop" component="DengueON"/>
		<bind role="stop" component="EmergenciaOFF"/>
		<bind role="stop" component="SangueOFF"/>
		<bind role="stop" component="tDengue"/>
		<bind role="stop" component="iDengue"/>
	</link>

</body>
</ncl>
 
