<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="regionbase_1024x768"
     xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
  <head>
    <regionBase>
      <region top="0" left="0" id="rgFullScreen" zIndex="2">
	<region height="58" id="rgInteratividade" left="3.75%" top="3.33%" width="56"/>

	<!-- ### Regiao para o menu de interatividade ### -->
	<region height="19.5%" id="rgMenu" left="3.75%" top="3.33%" width="18.6%" zIndex="2">
	  <region height="29.3%" id="rgLocalizacao"/>
	  <region height="29.3%" id="rgCondicoes" top="33%"/>
	  <region height="29.3%" id="rgUnidades" top="66%"/>
	</region>
	<!-- ### Regiao para o mapa de localizacao ### -->
	<region height="56.9%" id="rgMapa" left="3.75%" top="11.67%" width="33.5%">
	  <region bottom="4.5%" height="9.15%" id="rgSairMapa" left="19.08%" width="21.5%"/>
	</region>
	<!-- ### Regiao para a aplicacao em LUA ### -->
	<region top="400" height="100" id="rgLuaCep" left="0" width="640"/>
      </region>

      <!-- ### Define a Tela de Interacao dos comerciais e as regioes de suas imagens ### -->
      <region top="0" left="0" height="480" id="rgTelaInteracao" width="640" zIndex="1">
	<region id="rgFundo" width="100%" height="100%"/>
	<region id="rgProviewLogo" height="10.15%" width="19.04%" top="5%" left="5%"/>
	<region id="rgGinga" width="23.04%" height="5.98%" right="5%" top="5%"/>

	<region height="5.33%" id="rgMenuQuartos" left="5%" top="25%" width="29.29%">
	  <region id="rgQuarto1" width="32%"/>
	  <region id="rgQuarto2" left="33.5%" width="32%"/>
	  <region id="rgQuarto3" left="67%" width="32%"/>
	</region>
	<region height="5.33%" id="rgHeadUnidades" left="5%" top="25%" width="16.40%"/>
	<region height="56.51%" id="rgConteudoFundo" left="5%" top="30.5%" width="29.29%">
	  <region id="rgConteudoTexto" height="55.76%" width="84%" left="5%" top="15%"/>
	</region>
	<region id="rgVideo" height="42.71%" width="41.85%" top="25%" right="5.1%"/>
	<region bottom="0%" height="16.79%" id="rgCondicoesBotoes" right="2.5%" width="18.94%"/>
      </region>
    </regionBase>
  </head>
</ncl>
