<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="animacaoJoao" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xsi:schemaLocation="http://www.ncl.org.br/NCL3.0/EDTVProfile
                         http://www.ncl.org.br/NCL3.0/profiles/NCL30EDTV.xsd">
  <head>

    <regionBase>
      <region id="mainDevice" width="100%" height="100%">
        <region id="window0" zIndex="0"/>
        <!--<region id="window1" left="10%" width="80%" zIndex="0"/>-->
        <region id="window1" zIndex="0"/>
        <region id="side1Region" width="40%" zIndex="1">
          <region id="regiaoBotaoPraia" left="10%" top="5%" width="20.3125%" height="11%"/>
          <region id="regiaoBotaoMato" left="10%" top="25%" width="20.3125%" height="11%"/>
          <region id="regiaoBotaoRio" left="10%" top="45%" width="20.3125%" height="11%"/>
          <region id="regiaoBotaoLuz" left="10%" top="65%" width="20.3125%" height="11%"/>
          <region id="regiaoBotaoCidade" left="10%" top="85%" width="20.3125%" height="11%"/>
        </region>

        <region id="side2Region" right="0%" width="10%" zIndex="1">
          <region id="regiaoBotaoRoupaVermelha" left="10%" top="5%" width="80%" height="10%"/>
          <region id="regiaoBotaoRoupaBranca" left="10%" top="25%" width="80%" height="10%"/>
          <region id="regiaoBotaoAudioTrilha" left="10%" top="65%" width="80%" height="10%"/>
          <region id="regiaoBotaoAudioExplic" left="10%" top="85%" width="80%" height="10%"/>
        </region>

        <region id="rgLogoDADPuc" right="5%" bottom="6.6667%" width="5%" height="6.6667%" zIndex="7"/>

      </region>
    </regionBase>

    <descriptorBase>
      <descriptor id="videoDescTrInOut" region="window0">
        <descriptorParam name="transitionIn" value="fade"/>
        <descriptorParam name="transitionOut" value="fade"/>
      </descriptor>

      <descriptor id="videoDescTrOut" region="window0">
        <descriptorParam name="transitionOut" value="fade"/>
      </descriptor>

      <descriptor id="videoDesc" region="window1"/>

      <descriptor id="side1Desc" region="side1Region">
        <descriptorParam name="transparency" value="0.4"/>
      </descriptor>

      <descriptor id="side2Desc" region="side2Region">
        <descriptorParam name="transparency" value="0.4"/>
      </descriptor>

      <!-- focusSelSrc="imagensGamba/praia_foco.gif" -->
      <descriptor id="descBotaoPraia" region="regiaoBotaoPraia"
                  focusIndex="indexBotaoPraia"
                  moveUp="indexBotaoCidade" moveDown="indexBotaoMato"
                  moveRight="indexBotaoRoupaVermelha"
                  focusSrc="botoes/praia_foco.gif" focusBorderWidth="0">
        <descriptorParam name="chromakey" value="black"/>
        <descriptorParam name="x-focused" value="true"/>
      </descriptor>

      <!-- focusSelSrc="imagensGamba/ATIV-MAT.png" -->
      <descriptor id="descBotaoMato" region="regiaoBotaoMato"
                  focusIndex="indexBotaoMato"
                  moveUp="indexBotaoPraia" moveDown="indexBotaoRio"
                  moveRight="indexBotaoRoupaBranca"
                  focusSrc="botoes/florestaV_foco.gif" focusBorderWidth="0">
        <descriptorParam name="chromakey" value="black"/>
      </descriptor>

      <!-- focusSelSrc="imagensGamba/ATIV-RIO.png" -->
      <descriptor id="descBotaoRio" region="regiaoBotaoRio"
                  focusIndex="indexBotaoRio"
                  moveUp="indexBotaoMato" moveDown="indexBotaoLuz"
                  focusSrc="botoes/rio_foco.gif" focusBorderWidth="0">
        <descriptorParam name="chromakey" value="black"/>
      </descriptor>

      <!-- focusSelSrc="imagensGamba/ATIV-LUZ.png" -->
      <descriptor id="descBotaoLuz" region="regiaoBotaoLuz"
                  focusIndex="indexBotaoLuz"
                  moveUp="indexBotaoRio" moveDown="indexBotaoCidade"
                  moveRight="indexBotaoAudioTrilha"
                  focusSrc="botoes/luz_foco.gif" focusBorderWidth="0">
        <descriptorParam name="chromakey" value="black"/>
      </descriptor>

      <!-- focusSelSrc="imagensGamba/ATIV-CID.png" -->
      <descriptor id="descBotaoCidade" region="regiaoBotaoCidade"
                  focusIndex="indexBotaoCidade"
                  moveUp="indexBotaoLuz" moveDown="indexBotaoPraia"
                  moveRight="indexBotaoAudioExplic"
                  focusSrc="botoes/cidade_foco.gif" focusBorderWidth="0">
        <descriptorParam name="chromakey" value="black"/>
      </descriptor>

      <!-- focusSelSrc="imagensGamba/ATIV-MAT.png" -->
      <descriptor id="descBotaoRoupaVermelha" region="regiaoBotaoRoupaVermelha"
                  focusIndex="indexBotaoRoupaVermelha"
                  moveUp="indexBotaoAudioExplic" moveDown="indexBotaoRoupaBranca"
                  moveLeft="indexBotaoPraia" focusBorderWidth="0"
                  focusSrc="botoes/florestaV_foco.gif">
        <descriptorParam name="chromakey" value="black"/>
      </descriptor>

      <!-- focusSelSrc="imagensGamba/ATIV-MAT.png" -->
      <descriptor id="descBotaoRoupaBranca" region="regiaoBotaoRoupaBranca"
                  focusIndex="indexBotaoRoupaBranca"
                  moveUp="indexBotaoRoupaVermelha" moveDown="indexBotaoAudioTrilha"
                  moveLeft="indexBotaoMato" focusBorderWidth="0"
                  focusSrc="botoes/florestaB_foco.gif">
        <descriptorParam name="chromakey" value="black"/>
      </descriptor>

      <!-- focusSelSrc="imagensGamba/INATIVO.png" -->
      <descriptor id="descBotaoAudioTrilha" region="regiaoBotaoAudioTrilha"
                  focusIndex="indexBotaoAudioTrilha"
                  moveUp="indexBotaoRoupaBranca" moveDown="indexBotaoAudioExplic"
                  moveLeft="indexBotaoLuz" focusBorderWidth="0"
                  focusSrc="botoes/CD_foco.gif">
        <descriptorParam name="chromakey" value="black"/>
      </descriptor>

      <!-- focusSelSrc="imagensGamba/INATIVO.png" -->
      <descriptor id="descBotaoAudioExplic" region="regiaoBotaoAudioExplic"
                  focusIndex="indexBotaoAudioExplic"
                  moveUp="indexBotaoAudioTrilha" moveDown="indexBotaoRoupaVermelha"
                  moveLeft="indexBotaoCidade" focusBorderWidth="0"
                  focusSrc="imagensGamba/INATIVO.png">
        <descriptorParam name="chromakey" value="black"/>
      </descriptor>

      <descriptor id="descCanaisSeq" region="window1" player="VideoChannelPlayerAdapter">
        <descriptorParam name="x-entryInstant" value="begin"/>
        <descriptorParam name="selectedObject" value="videoPraia"/>
      </descriptor>

      <descriptor id="descLogoDADPuc" region="rgLogoDADPuc">
        <descriptorParam name="transparency" value="0.3"/>
        <descriptorParam name="chromakey" value="black"/>
      </descriptor>

    </descriptorBase>

    <connectorBase>
      <causalConnector id="onBeginStart">
        <simpleCondition role="onBegin"/>
        <simpleAction role="start" max="unbounded" qualifier="par"/>
      </causalConnector>

      <causalConnector id="onEndStop">
        <simpleCondition role="onEnd"/>
        <simpleAction role="stop" max="unbounded" qualifier="par"/>
      </causalConnector>

      <causalConnector id="onEndStart">
        <simpleCondition role="onEnd"/>
        <simpleAction role="start" max="unbounded" qualifier="par"/>
      </causalConnector>

      <causalConnector id="onEndStopStart">
        <simpleCondition role="onEnd"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="par"/>
          <simpleAction role="start" max="unbounded" qualifier="par"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onEndSet">
        <connectorParam name="var"/>
        <simpleCondition role="onEnd"/>
        <simpleAction role="set" value="$var"/>
      </causalConnector>

      <causalConnector id="onSelectionSet">
        <connectorParam name="value"/>
        <simpleCondition role="onSelection"/>
        <simpleAction role="set" value="$value"/>
      </causalConnector>

      <causalConnector id="onSelectionSetStop">
        <connectorParam name="value"/>
        <simpleCondition role="onSelection"/>
        <compoundAction operator="seq">
          <simpleAction role="set" value="$value"/>
          <simpleAction role="stop" max="unbounded" qualifier="par"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onSelectionSetStart">
        <connectorParam name="value"/>
        <simpleCondition role="onSelection"/>
        <compoundAction operator="seq">
          <simpleAction role="set" value="$value"/>
          <simpleAction role="start" max="unbounded" qualifier="par"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onSelectionTestStopStart">
        <compoundCondition operator="and">
          <simpleCondition role="onSelection"/>
          <assessmentStatement comparator="eq">
            <attributeAssessment role="isOccurring" eventType="presentation" attributeType="state"/>
            <valueAssessment value="occurring"/>
          </assessmentStatement>
        </compoundCondition>
        <compoundAction operator="seq">
          <simpleAction role="start"/>
          <simpleAction role="stop"/>
        </compoundAction>
      </causalConnector>
    </connectorBase>

  </head>

  <body>
    <port id="entrada" component="videoPraiaAbertura"/>
    <!--<port id="entrada" component="videoPraiaAbertura" interface="ancPreparacao"/>-->
    <!--port id="entrada" component="canaisSequencias"/-->

    <media id="audioTrilha" src="audios/trilha.mp3"/>
    <media id="audioExplicacao" src="audios/explicacao.mp3"/>

    <!--media descriptor="videoDesc" id="videoPraiaAbertura" src="videos/praia.mov"-->
    <media descriptor="videoDescTrOut" id="videoPraiaAbertura" src="videos/beach_mute_mount.mov">
      <area id="ancPreparacao" begin="0s" end="300s"/>
    </media>

    <context id="canaisSequencias" descriptor="descCanaisSeq">
      <media descriptor="videoDesc" id="videoPraia" src="videos/beach_mute_anime.mov"/>
      <media descriptor="videoDesc" id="videoMatoVermelho" src="videos/mato_vermelho.mov"/>
      <media descriptor="videoDesc" id="videoMatoBranco" src="videos/mato_branco.mov"/>
      <media descriptor="videoDesc" id="videoRio" src="videos/river_mute.mov"/>
      <media descriptor="videoDesc" id="videoLuz" src="videos/light_mute.mov"/>
      <media descriptor="videoDesc" id="videoCidade" src="videos/city_mute_anime.mov"/>

      <property name="selectedObject"/>
      <property name="bounds"/>
    </context>

    <media descriptor="videoDescTrInOut" id="videoCidadeEncerramento" src="videos/city_mute_unmount.mov">
      <area id="ancPreparacao" begin="24s"/>
    </media>

    <media descriptor="side1Desc" id="side1" src="imagens/background.jpg"/>
    <media descriptor="side2Desc" id="side2" src="imagens/background2.jpg"/>

    <media descriptor="descBotaoPraia" id="botaoPraia" src="botoes/praia.gif"/>
    <media descriptor="descBotaoMato" id="botaoMato" src="botoes/florestaV.gif"/>
    <media descriptor="descBotaoRio" id="botaoRio" src="botoes/rio.gif"/>
    <media descriptor="descBotaoLuz" id="botaoLuz" src="botoes/luz.gif"/>
    <media descriptor="descBotaoCidade" id="botaoCidade" src="botoes/cidade.gif"/>

    <media descriptor="descBotaoAudioTrilha" id="botaoAudioTrilha" src="botoes/CD.gif"/>
    <media descriptor="descBotaoAudioExplic" id="botaoAudioExplic" src="imagensGamba/BOT-VAI.png"/>

    <media descriptor="descBotaoRoupaVermelha" id="botaoRoupaVermelha" src="botoes/florestaV.gif"/>
    <media descriptor="descBotaoRoupaBranca" id="botaoRoupaBranca" src="botoes/florestaB.gif"/>

    <media descriptor="descLogoDADPuc" id="logoDADPuc" src="imagensGamba/selo.gif">
      <property name="bounds"/>
    </media>

    <link id="linkInicio" xconnector="onBeginStart">
      <bind component="videoPraiaAbertura" interface="ancPreparacao" role="onBegin"/>
      <bind component="audioTrilha" role="start"/>
    </link>

    <link id="linkFim" xconnector="onEndStop">
      <bind component="videoCidadeEncerramento" interface="ancPreparacao" role="onEnd"/>
      <bind component="audioTrilha" role="stop"/>
      <bind component="audioExplicacao" role="stop"/>
    </link>

    <link id="linkLogoDADPucInicio" xconnector="onBeginStart">
      <bind component="videoPraiaAbertura" interface="ancPreparacao" role="onBegin"/>
      <bind component="logoDADPuc" role="start"/>
    </link>

    <link id="linkLogoDADPucFim" xconnector="onEndStop">
      <bind component="videoCidadeEncerramento" interface="ancPreparacao" role="onEnd"/>
      <bind component="logoDADPuc" role="stop"/>
    </link>

    <link id="linkResizeLogoDADPucInicio" xconnector="onEndSet">
      <bind component="videoPraiaAbertura" role="onEnd"/>
      <bind component="logoDADPuc" interface="bounds" role="set">
        <bindParam name="var" value="80%,86.6667%,100%,100%"/>
      </bind>
    </link>

    <link id="linkResizeLogoDADPucFim" xconnector="onEndSet">
      <bind component="canaisSequencias" role="onEnd"/>
      <bind component="logoDADPuc" interface="bounds" role="set">
        <bindParam name="var" value="90%,86.6667%,100%,100%"/>
      </bind>
    </link>

    <link id="linkInicioInteratividade" xconnector="onEndStart">
      <!--bind component="videoPraiaAbertura" interface="ancPreparacao" role="onEnd"/-->
      <bind component="videoPraiaAbertura" role="onEnd"/>
      <!--link id="linkInicioInteratividade" xconnector="onBeginStart">
      <bind component="canaisSequencias" role="onBegin"/-->
      <bind component="canaisSequencias" role="start"/>
      <!--bind component="side1" role="start"/-->
      <bind component="botaoPraia" role="start"/>
      <bind component="botaoMato" role="start"/>
      <bind component="botaoRio" role="start"/>
      <bind component="botaoLuz" role="start"/>
      <bind component="botaoCidade" role="start"/>
      <!--bind component="side2" role="start"/-->
      <bind component="botaoAudioTrilha" role="start"/>
      <bind component="botaoAudioExplic" role="start"/>
    </link>

    <link id="linkFimInteratividade" xconnector="onEndStopStart">
      <bind component="canaisSequencias" role="onEnd"/>
      <bind component="botaoPraia" role="stop"/>
      <bind component="botaoMato" role="stop"/>
      <bind component="botaoRio" role="stop"/>
      <bind component="botaoLuz" role="stop"/>
      <bind component="botaoCidade" role="stop"/>
      <bind component="side1" role="stop"/>
      <bind component="side2" role="stop"/>
      <bind component="botaoRoupaVermelha" role="stop"/>
      <bind component="botaoRoupaBranca" role="stop"/>
      <bind component="botaoAudioTrilha" role="stop"/>
      <bind component="botaoAudioExplic" role="stop"/>
      <bind component="videoCidadeEncerramento" role="start"/>
    </link>

    <link id="linkTransicaoPraia" xconnector="onSelectionSetStop">
      <bind component="botaoPraia" role="onSelection"/>
      <bind component="canaisSequencias" interface="selectedObject" role="set">
        <bindParam name="value" value="videoPraia"/>
      </bind>
      <bind component="botaoRoupaVermelha" role="stop"/>
      <bind component="botaoRoupaBranca" role="stop"/>
    </link>

    <link id="linkTransicaoMato" xconnector="onSelectionSetStart">
      <bind component="botaoMato" role="onSelection"/>
      <bind component="canaisSequencias" interface="selectedObject" role="set">
        <bindParam name="value" value="videoMatoVermelho"/>
      </bind>
      <bind component="botaoRoupaVermelha" role="start"/>
      <bind component="botaoRoupaBranca" role="start"/>
    </link>

    <link id="linkTransicaoRoupaVermelha" xconnector="onSelectionSet">
      <bind component="botaoRoupaVermelha" role="onSelection"/>
      <bind component="canaisSequencias" interface="selectedObject" role="set">
        <bindParam name="value" value="videoMatoVermelho"/>
      </bind>
    </link>

    <link id="linkTransicaoRoupaBranca" xconnector="onSelectionSet">
      <bind component="botaoRoupaBranca" role="onSelection"/>
      <bind component="canaisSequencias" interface="selectedObject" role="set">
        <bindParam name="value" value="videoMatoBranco"/>
      </bind>
    </link>

    <link id="linkTransicaoRio" xconnector="onSelectionSetStop">
      <bind component="botaoRio" role="onSelection"/>
      <bind component="canaisSequencias" interface="selectedObject" role="set">
        <bindParam name="value" value="videoRio"/>
      </bind>
      <bind component="botaoRoupaVermelha" role="stop"/>
      <bind component="botaoRoupaBranca" role="stop"/>
    </link>

    <link id="linkTransicaoLuz" xconnector="onSelectionSetStop">
      <bind component="botaoLuz" role="onSelection"/>
      <bind component="canaisSequencias" interface="selectedObject" role="set">
        <bindParam name="value" value="videoLuz"/>
      </bind>
      <bind component="botaoRoupaVermelha" role="stop"/>
      <bind component="botaoRoupaBranca" role="stop"/>
    </link>

    <link id="linkTransicaoCidade" xconnector="onSelectionSetStop">
      <bind component="botaoCidade" role="onSelection"/>
      <bind component="canaisSequencias" interface="selectedObject" role="set">
        <bindParam name="value" value="videoCidade"/>
      </bind>
      <bind component="botaoRoupaVermelha" role="stop"/>
      <bind component="botaoRoupaBranca" role="stop"/>
    </link>

    <link id="linkAudioTrilha" xconnector="onSelectionTestStopStart">
      <bind component="botaoAudioTrilha" role="onSelection"/>
      <bind component="audioExplicacao" role="isOccurring"/>
      <bind component="audioExplicacao" role="stop"/>
      <bind component="audioTrilha" role="start"/>
    </link>

    <link id="linkAudioExplicacao" xconnector="onSelectionTestStopStart">
      <bind component="botaoAudioExplic" role="onSelection"/>
      <bind component="audioTrilha" role="isOccurring"/>
      <bind component="audioTrilha" role="stop"/>
      <bind component="audioExplicacao" role="start"/>
    </link>

  </body>
</ncl>
