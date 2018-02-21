<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="vivaMaisCompacto" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xsi:schemaLocation="http://www.ncl.org.br/NCL3.0/EDTVProfile
                         http://www.ncl.org.br/NCL3.0/profiles/NCL30EDTV.xsd">

  <head>
    <regionBase>
      <region id="regBackground" width="100%" height="100%" zIndex="1">
        <region id="regVideo" height="100%" width="100%" zIndex= "3" />
        <region id="regPrato1" height="30.1667%" left="7.5%" top="7.6667%" width="18.25%" zIndex="2" />
        <region id="regPrato2" height="30.1667%" left="73.75%" top="7.6667%" width="20%" zIndex="2" />
        <region id="regPrato3" height="30.5%" left="7.5%" top="46.6667%" width="17.875%" zIndex="2" />
        <region id="regPrato4" height="30.3333%" left="74.25%" top="46.6667%" width="19.375%" zIndex="2" />
        <region id="regTexPrato" height="14.5%" left="30.625%" top="58.6667%" width="40.625%" zIndex="4" />
        <region id="regIconeInt" width="38%" height="8.3333%" top="2.5%" left="60.875%" zIndex="5" />
        <region id="regBarra" height="23.1667%" top="77.8333%" width="90%" zIndex="6" />
      </region>
    </regionBase>

    <transitionBase>
      <transition id="fadeTransitionReverse" type="fade" dur="2s" direction="reverse"/>
    </transitionBase>

    <descriptorBase>
      <descriptor id="descVivaMais" region="regVideo" transOut="fadeTransitionReverse"/>

      <descriptor id="descBackground" region="regBackground"/>

      <descriptor id="descBotaoInteratividade" region="regIconeInt"/>

      <descriptor id="descPrato1" region="regPrato1"/>
      <descriptor id="descPrato2" region="regPrato2"/>
      <descriptor id="descPrato3" region="regPrato3"/>
      <descriptor id="descPrato4" region="regPrato4"/>
      <descriptor id="descTextoPrato" region="regTexPrato"/>
      <descriptor id="descFakePrato1" region="regPrato1" explicitDur="1s"/>
    </descriptorBase>

    <connectorBase>
      <importBase alias="connBase" documentURI="vivamais30.conn"/>
    </connectorBase>
  </head>

  <body>
    <port id="entradaBody" component="vivaMais" interface="mainEvent"/>

    <media descriptor="descVivaMais" id="vivaMais" src="video/vivamais-ws.mp4" >
      <area id="mainEvent" begin="0s"/>
      <area begin="64.0s" end="74.0s" id="botaoIntPratos"/>
      <area begin="94.0s" end="94.5s" id="fimPratos"/>
      <area begin="74.0s" end="95.5s" id="intProibidaPrato"/>
      <area begin="106.0s" end="110.0s" id="botaoObeso"/>
      <area begin="86.5s" id="intPratos"/>
      <property name="bounds"/>
    </media>

    <media descriptor="descBotaoInteratividade" id="botaoInteratividade" src="imagens/interativo.png"/>
    
    <context id="pratos">
      <port id="entrada" component="fundoPratos"/>

      <media id="fundoPratos" descriptor="descBackground" src="imagens/fundo_pratos.png"/>
      <media descriptor="descPrato1" id="prato1" src="imagens/PratoVermelhoFundo.png" />
      <media descriptor="descPrato2" id="prato2" src="imagens/PratoAmareloFundo.png" />
      <media descriptor="descPrato3" id="prato3" src="imagens/PratoVerdeFundo.png" />
      <media descriptor="descPrato4" id="prato4" src="imagens/PratoAzulFundo.png" />
      <media descriptor="descTextoPrato" id="instrucaoPrato" src="imagens/InstPratosFundo.png" />
      <media descriptor="descTextoPrato" id="resultadoPrato1" src="imagens/InstPratoVermelhoFundo.png" />
      <media descriptor="descTextoPrato" id="resultadoPrato2" src="imagens/InstPratoAmareloFundo.png" />
      <media descriptor="descTextoPrato" id="resultadoPrato3" src="imagens/InstPratoVerdeFundo.png" />
      <media descriptor="descTextoPrato" id="resultadoPrato4" src="imagens/InstPratoAzulFundo.png" />

      <link id="inicializacao" xconnector="connBase#onBeginStart">
        <bind component="fundoPratos" role="onBegin"/>
        <bind component="prato1" role="start"/>
        <bind component="prato2" role="start"/>
        <bind component="prato3" role="start"/>
        <bind component="prato4" role="start"/>
        <bind component="instrucaoPrato" role="start"/>
      </link>

      <link id="linkResPratos1" xconnector="connBase#onKeySelectionStartStop">
        <bind component="prato1" role="onSelection">
          <bindParam name="keyCode" value="RED"/>
        </bind>
        <bind component="instrucaoPrato" role="stop"/>
        <bind component="resultadoPrato1" role="start"/>
        <bind component="prato2" role="stop"/>
        <bind component="prato3" role="stop"/>
        <bind component="prato4" role="stop"/>
      </link>

      <link id="linkResPratos2" xconnector="connBase#onKeySelectionStartStop">
        <bind component="prato2" role="onSelection">
          <bindParam name="keyCode" value="YELLOW"/>
        </bind>
        <bind component="instrucaoPrato" role="stop"/>
        <bind component="resultadoPrato2" role="start"/>
        <bind component="prato1" role="stop"/>
        <bind component="prato3" role="stop"/>
        <bind component="prato4" role="stop"/>
      </link>

      <link id="linkResPratos3" xconnector="connBase#onKeySelectionStartStop">
        <bind component="prato3" role="onSelection">
          <bindParam name="keyCode" value="GREEN"/>
        </bind>
        <bind component="instrucaoPrato" role="stop"/>
        <bind component="resultadoPrato3" role="start"/>
        <bind component="prato1" role="stop"/>
        <bind component="prato2" role="stop"/>
        <bind component="prato4" role="stop"/>
      </link>

      <link id="linkResPratos4" xconnector="connBase#onKeySelectionStartStop">
        <bind component="prato4" role="onSelection">
          <bindParam name="keyCode" value="BLUE"/>
        </bind>
        <bind component="instrucaoPrato" role="stop"/>
        <bind component="resultadoPrato4" role="start"/>
        <bind component="prato1" role="stop"/>
        <bind component="prato2" role="stop"/>
        <bind component="prato3" role="stop"/>
      </link>
    </context> 

    <!-- Inicio da parte dos pratos -->
    <link id="linkSetDefaultParams02" xconnector="connBase#onBeginStart">
      <bind component="vivaMais" interface="botaoIntPratos" role="onBegin"/>
      <bind component="botaoInteratividade" role="start"/>
    </link>

    <link id="linkInt02Fim" xconnector="connBase#onEndStop">
      <bind component="vivaMais" interface="botaoIntPratos" role="onEnd"/>
      <bind component="botaoInteratividade" role="stop"/>
    </link>

    <link id="linkPratos01" xconnector="connBase#onKeySelectionSetStartStop">
      <bind component="botaoInteratividade" role="onSelection">
        <bindParam name="keyCode" value="RED"/>
      </bind>
      <bind component="vivaMais" interface="bounds" role="set">
        <bindParam name="var" value="28.125%, 13.1667%, 43.75%, 41.6667%"/>
      </bind>
      <bind component="pratos" role="start"/>
      <bind component="botaoInteratividade" role="stop"/>
    </link>

    <link id="linkFinalizaPratos" xconnector="connBase#onEndSetStop">
      <bind component="vivaMais" interface="fimPratos" role="onEnd"/>
      <bind component="vivaMais" interface="bounds" role="set">
        <bindParam name="var" value="0%,0%,100%,100%"/>
      </bind>
      <bind component="pratos" role="stop"/>
    </link>
   
  </body>
</ncl>
