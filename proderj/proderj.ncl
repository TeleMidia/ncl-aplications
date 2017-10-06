<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl xsi:schemaLocation="http://www.ncl.org.br/NCL3.0/EDTVProfile http://www.ncl.org.br/NCL3.0/profiles/NCL30EDTV.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile" id="MainProderj">
  <head>
    <importedDocumentBase>
      <importNCL documentURI="pPrincipal.ncl" alias="principal"/>
      <importNCL documentURI="pEmergencias.ncl" alias="emergencias"/>
      <importNCL documentURI="pUpas.ncl" alias="upa"/>
      <importNCL documentURI="pEspecialidades.ncl" alias="especialidades"/>
      <importNCL documentURI="pUnidades.ncl" alias="unidades"/>
      <importNCL documentURI="pDengue.ncl" alias="dengue"/>
      <importNCL documentURI="pEfeito.ncl" alias="efeitoFile"/>
    </importedDocumentBase>
    <regionBase>
      <region id="rgMainTV">
	<region id="rgMainVideo" zIndex="1"/>
	<region id="rgInterativo" zIndex="3" right="3%" top="9%" width="400" height="150"/>
      </region>
    </regionBase>

    <descriptorBase>
      <descriptor id="dMainVideo" region="rgMainVideo"/>
      <descriptor id="dInterativo" region="rgInterativo">
	<!--<descriptorParam name="chromakey" value="black"/>
			     <descriptorParam name="transparency" value="0.15"/>-->
      </descriptor>
    </descriptorBase>

    <connectorBase>
      <importBase documentURI="composerConnectorBase.ncl" alias="connBase"/>
    </connectorBase>
  </head>
  <body>
    <port id="mainPort" component="video"/>

    <media id="video" src="proderj480p.mov" descriptor="dMainVideo">
      <area id="aInterativo" begin="1.2s" end="12s"/>
    </media>

    <!--
       <media id="video" src="/misc/ncl30/proderj480p.mov" descriptor="dMainVideo">
	 <area id="aInterativo" begin="1.2s" end="12s"/>
       </media>
       -->

    <!--port id="mainInterativo" component="interativo"/-->
    <media id="interativo" src="UPA/Interativo.png" descriptor="dInterativo"/>

    <!--
       <port id="mainPort2" component="ctPrincipal" interface="pTitulo"/>
       <port id="mainPort3" component="ctPrincipal" interface="pDengueON"/>
       -->

    <context id="ctPrincipal" refer="principal#ctPrincipal"/>
    <context id="ctEmergencias" refer="emergencias#ctEmergencias"/>
    <context id="ctUpa" refer="upa#ctUpa"/>
    <context id="ctEspecialidades" refer="especialidades#ctEspecialidades"/>
    <context id="ctUnidades" refer="unidades#ctUnidades"/>
    <context id="ctDengue" refer="dengue#ctDengue"/>
    <context id="ctEfeito" refer="efeitoFile#efeito"/>

    <!-- botao SAIR -->
    <link xconnector="connBase#onKeySelectionAbortN">
      <linkParam name="keyCode" value="INFO"/>
      <bind role="onSelection" component="ctPrincipal" interface="pTitulo"/>
      <bind role="abort" component="ctPrincipal"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortN">
      <linkParam name="keyCode" value="INFO"/>
      <bind role="onSelection" component="ctEmergencias" interface="pTitulo"/>
      <bind role="abort" component="ctEmergencias"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortN">
      <linkParam name="keyCode" value="INFO"/>
      <bind role="onSelection" component="ctUpa" interface="pTitulo"/>
      <bind role="abort" component="ctUpa"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortN">
      <linkParam name="keyCode" value="INFO"/>
      <bind role="onSelection" component="ctEspecialidades" interface="pTitulo"/>
      <bind role="abort" component="ctEspecialidades"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortN">
      <linkParam name="keyCode" value="INFO"/>
      <bind role="onSelection" component="ctUnidades" interface="pTitulo"/>
      <bind role="abort" component="ctUnidades"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortN">
      <linkParam name="keyCode" value="INFO"/>
      <bind role="onSelection" component="ctDengue" interface="pTitulo"/>
      <bind role="abort" component="ctDengue"/>
    </link>


    <!-- inicia a interatividade -->
    <link xconnector="connBase#onBeginStart">
      <bind role="onBegin" component="video" interface="aInterativo"/>
      <bind role="start" component="interativo"/>
    </link>

    <!-- loop da interatividade -->
    <link xconnector="connBase#onEndStart">
      <bind role="onEnd" component="interativo"/>
      <bind role="start" component="interativo"/>
    </link>
    <link xconnector="connBase#onEndAbort">
      <bind role="onEnd" component="video"/>
      <bind role="abort" component="interativo"/>
    </link>

    <!--ativa interatividade -->

    <link xconnector="connBase#onEndStartN">
      <bind role="onEnd" component="ctEfeito"/>
      <bind role="start" component="ctPrincipal" interface="pDengueON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>

    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="INFO"/>
      <bind role="onSelection" component="interativo"/>
      <bind role="abort" component="interativo"/>
      <bind role="start" component="ctEfeito"/>
    </link>
    <!--
       <link xconnector="connBase#onKeySelectionAbortNStartN">
	 <linkParam name="keyCode" value="RED"/>
	 <bind role="onSelection" component="interativo"/>
	 <bind role="abort" component="interativo"/>
	 <bind role="start" component="ctEfeito"/>		</link>
       <link xconnector="connBase#onKeySelectionAbortNStartN">
	 <linkParam name="keyCode" value="YELLOW"/>
	 <bind role="onSelection" component="interativo"/>
	 <bind role="abort" component="interativo"/>
	 <bind role="start" component="ctEfeito"/>		</link>
       <link xconnector="connBase#onKeySelectionAbortNStartN">
	 <linkParam name="keyCode" value="GREEN"/>
	 <bind role="onSelection" component="interativo"/>
	 <bind role="abort" component="interativo"/>
	 <bind role="start" component="ctEfeito"/>		</link>
       <link xconnector="connBase#onKeySelectionAbortNStartN">
	 <linkParam name="keyCode" value="BLUE"/>
	 <bind role="onSelection" component="interativo"/>
	 <bind role="abort" component="interativo"/>
	 <bind role="start" component="ctEfeito"/>		</link>
       <link xconnector="connBase#onKeySelectionAbortNStartN">
	 <linkParam name="keyCode" value="CURSOR_LEFT"/>
	 <bind role="onSelection" component="interativo"/>
	 <bind role="abort" component="interativo"/>
	 <bind role="start" component="ctEfeito"/>		</link>
       <link xconnector="connBase#onKeySelectionAbortNStartN">
	 <linkParam name="keyCode" value="CURSOR_RIGHT"/>
	 <bind role="onSelection" component="interativo"/>
	 <bind role="abort" component="interativo"/>
	 <bind role="start" component="ctEfeito"/>		</link>
       <link xconnector="connBase#onKeySelectionAbortNStartN">
	 <linkParam name="keyCode" value="CURSOR_DOWN"/>
	 <bind role="onSelection" component="interativo"/>
	 <bind role="abort" component="interativo"/>
	 <bind role="start" component="ctEfeito"/>		</link>
       <link xconnector="connBase#onKeySelectionAbortNStartN">
	 <linkParam name="keyCode" value="CURSOR_UP"/>
	 <bind role="onSelection" component="interativo"/>
	 <bind role="abort" component="interativo"/>
	 <bind role="start" component="ctEfeito"/>		</link>-->
    <!-- DIREITA ou ENTER no Botao Emergencias -->
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_RIGHT"/>
      <bind role="onSelection" component="ctPrincipal" interface="pEmergenciaON"/>
      <bind role="abort" component="ctPrincipal"/>
      <bind role="start" component="ctEmergencias" interface="pSamuON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="ENTER"/>
      <bind role="onSelection" component="ctPrincipal" interface="pEmergenciaON"/>
      <bind role="abort" component="ctPrincipal"/>
      <bind role="start" component="ctEmergencias" interface="pSamuON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>

    <!-- DIREITA ou ENTER no Botao Dengue -->
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_RIGHT"/>
      <bind role="onSelection" component="ctPrincipal" interface="pDengueON"/>
      <bind role="abort" component="ctPrincipal"/>
      <bind role="start" component="ctDengue" interface="pPrevenirON"/>
      <bind role="start" component="ctDengue" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="ENTER"/>
      <bind role="onSelection" component="ctPrincipal" interface="pDengueON"/>
      <bind role="abort" component="ctPrincipal"/>
      <bind role="start" component="ctDengue" interface="pPrevenirON"/>
      <bind role="start" component="ctDengue" interface="pTitulo"/>
    </link>

    <!-- DIREITA no UPA -->
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_RIGHT"/>
      <bind role="onSelection" component="ctEmergencias" interface="pUpaON"/>
      <bind role="abort" component="ctEmergencias"/>
      <bind role="start" component="ctUpa" interface="pOqueON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="ENTER"/>
      <bind role="onSelection" component="ctEmergencias" interface="pUpaON"/>
      <bind role="abort" component="ctEmergencias"/>
      <bind role="start" component="ctUpa" interface="pOqueON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <!-- DIREITA no Upa para Especialidades -->
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_RIGHT"/>
      <bind role="onSelection" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEspecialidades" interface="pGeralON"/>
      <bind role="start" component="ctEspecialidades" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="ENTER"/>
      <bind role="onSelection" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEspecialidades" interface="pGeralON"/>
      <bind role="start" component="ctEspecialidades" interface="pTitulo"/>
    </link>
    <!-- DIREITA no Upa para Unidades -->
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_RIGHT"/>
      <bind role="onSelection" component="ctUpa" interface="pUnidadesON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctUnidades" interface="pBanguON"/>
      <bind role="start" component="ctUnidades" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="ENTER"/>
      <bind role="onSelection" component="ctUpa" interface="pUnidadesON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctUnidades" interface="pBanguON"/>
      <bind role="start" component="ctUnidades" interface="pTitulo"/>
    </link>

    <!-- VOLTA no Emergencias -->
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctEmergencias" interface="pSamuON"/>
      <bind role="abort" component="ctEmergencias"/>
      <bind role="start" component="ctPrincipal" interface="pEmergenciaON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctEmergencias" interface="pUpaON"/>
      <bind role="abort" component="ctEmergencias"/>
      <bind role="start" component="ctPrincipal" interface="pEmergenciaON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>
    <!-- VOLTA com back Emergencias -->
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctEmergencias" interface="pSamuON"/>
      <bind role="abort" component="ctEmergencias"/>
      <bind role="start" component="ctPrincipal" interface="pEmergenciaON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctEmergencias" interface="pUpaON"/>
      <bind role="abort" component="ctEmergencias"/>
      <bind role="start" component="ctPrincipal" interface="pEmergenciaON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>


    <!-- VOLTA no Dengue -->
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctDengue" interface="pPrevenirON"/>
      <bind role="abort" component="ctDengue"/>
      <bind role="start" component="ctPrincipal" interface="pDengueON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctDengue" interface="pSintomasON"/>
      <bind role="abort" component="ctDengue"/>
      <bind role="start" component="ctPrincipal" interface="pDengueON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctDengue" interface="pHemoON"/>
      <bind role="abort" component="ctDengue"/>
      <bind role="start" component="ctPrincipal" interface="pDengueON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctDengue" interface="pFazerON"/>
      <bind role="abort" component="ctDengue"/>
      <bind role="start" component="ctPrincipal" interface="pDengueON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>
    <!-- VOLTA CoM BACK Dengue -->
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctDengue" interface="pPrevenirON"/>
      <bind role="abort" component="ctDengue"/>
      <bind role="start" component="ctPrincipal" interface="pDengueON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctDengue" interface="pSintomasON"/>
      <bind role="abort" component="ctDengue"/>
      <bind role="start" component="ctPrincipal" interface="pDengueON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctDengue" interface="pHemoON"/>
      <bind role="abort" component="ctDengue"/>
      <bind role="start" component="ctPrincipal" interface="pDengueON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctDengue" interface="pFazerON"/>
      <bind role="abort" component="ctDengue"/>
      <bind role="start" component="ctPrincipal" interface="pDengueON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>

    <!-- Volta no Upa -->
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUpa" interface="pOqueON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEmergencias" interface="pUpaON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUpa" interface="pFuncionaON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEmergencias" interface="pUpaON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEmergencias" interface="pUpaON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUpa" interface="pUnidadesON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEmergencias" interface="pUpaON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>
    <!-- Volta CoM BACK Upa -->
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUpa" interface="pOqueON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEmergencias" interface="pUpaON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUpa" interface="pFuncionaON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEmergencias" interface="pUpaON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEmergencias" interface="pUpaON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUpa" interface="pUnidadesON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEmergencias" interface="pUpaON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>

    <!-- Volta no Especialidades para o Upa -->
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctEspecialidades" interface="pGeralON"/>
      <bind role="abort" component="ctEspecialidades"/>
      <bind role="start" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctEspecialidades" interface="pPediatriaON"/>
      <bind role="abort" component="ctEspecialidades"/>
      <bind role="start" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctEspecialidades" interface="pOrtopediaON"/>
      <bind role="abort" component="ctEspecialidades"/>
      <bind role="start" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctEspecialidades" interface="pOdontologiaON"/>
      <bind role="abort" component="ctEspecialidades"/>
      <bind role="start" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <!-- Volta no Especialidades para o Upa COM BACK-->
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctEspecialidades" interface="pGeralON"/>
      <bind role="abort" component="ctEspecialidades"/>
      <bind role="start" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctEspecialidades" interface="pPediatriaON"/>
      <bind role="abort" component="ctEspecialidades"/>
      <bind role="start" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctEspecialidades" interface="pOrtopediaON"/>
      <bind role="abort" component="ctEspecialidades"/>
      <bind role="start" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctEspecialidades" interface="pOdontologiaON"/>
      <bind role="abort" component="ctEspecialidades"/>
      <bind role="start" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>

    <!-- Volta no Unidades -->
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUnidades" interface="pBanguON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUnidades" interface="pCpoGrandeON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUnidades" interface="pIrajaON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUnidades" interface="pMareON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUnidades" interface="pStaCruzON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUnidades" interface="pBelfordON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <!-- Volta no Unidades COM BACK -->
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUnidades" interface="pBanguON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUnidades" interface="pCpoGrandeON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUnidades" interface="pIrajaON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUnidades" interface="pMareON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUnidades" interface="pStaCruzON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="connBase#onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUnidades" interface="pBelfordON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
  </body>
</ncl>
