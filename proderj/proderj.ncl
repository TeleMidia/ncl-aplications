<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl xsi:schemaLocation="http://www.ncl.org.br/NCL3.0/EDTVProfile http://www.ncl.org.br/NCL3.0/profiles/NCL30EDTV.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile" id="MainProderj">
  <head>

    <!-- <transitionBase>
      <transition id="rightToLeft" type="barWipe" subtype="leftToRight" direction="reverse" dur="0.5s"/>
      <transition id="leftToRight" type="barWipe" subtype="leftToRight" dur="1s"/>
      <transition id="topToBottom" type="barWipe" subtype="topToBottom" dur="1s"/>
      <transition id="bottomUp" type="barWipe" subtype="topToBottom" direction="reverse" dur="1s"/>
      <transition id="bottomUpPilha" type="barWipe" subtype="topToBottom" direction="reverse" dur="0.5s"/>
      <transition id="fadeTransition" type="fade" dur="0.7s"/>
      <transition id="fadeTransitionReverse" type="fade" dur="1s"/>
    </transitionBase> -->

    <regionBase>
      <!--### Main ###-->
      <region id="rgMainTV">
        <region id="rgMainVideo" zIndex="1"/>
        <region id="rgInterativo" zIndex="3" right="3%" top="9%" width="400" height="150"/>
      </region>

      <!--### Regiao do Menu ###-->
      <region id="rgTV">
        <region id="rgFullScreen"/>

        <!-- Para resolucao 1920 X 1280 = Barra 1628 X 65 -->
        <region id="rgBarraTitulo" right="16%" width="83.5%" bottom="22%" height="5%">
          <region id="rgMenu1" left="0%" width="20%" zIndex="2"/>
          <region id="rgMenu2" left="20%" width="20%" zIndex="2"/>
          <region id="rgMenu3" left="40%" width="20%" zIndex="2"/>
          <region id="rgSair" right="0%" width="15%" zIndex="2"/>
        </region>

        <!-- Para resolucao 1920 X 1280 = 360 X 58 -->
        <region id="rgColuna1" left="0.5%" top="78%" width="18%" height="20%">
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
      <!--### Main ###-->
      <descriptor id="dMainVideo" region="rgMainVideo"/>
      <descriptor id="dInterativo" region="rgInterativo">
        <!-- <descriptorParam name="chromakey" value="black"/> -->
        <descriptorParam name="transparency" value="0.15"/>-->
      </descriptor>

      <!--### Descritor do Menu ###-->
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


    <!-- A sintaxe dos nomes dos conectores causais segue a seguinte terminologia: -->
    <!-- * Primeiro sao definidas as condicoes (conditions), sempre precedidas do termo "on"; -->
    <!--   - onBegin: ao comecar a exibicao da ancora; -->
    <!--   - onEnd: ao terminar a exibicao da ancora; -->
    <!--   - onMouseSelection: ao ser selecionada a ancora pelo mouse; -->
    <!--   - onKeySelection: ao ser selecionada a ancora por uma chave do teclado(ou controle remoto); -->
    <!--   - etc. -->
    <!-- * Em seguida sao definidas as avaliacoes (assessments), sempre seguidas do termo $ e depois Test, -->
    <!--   onde $ eh nulo ou um numeral qualquer para identificar papeis com mesmos testes de avaliacao; -->
    <!--   - TrNomeDaTransicao$Test: para testes efetuados sobre valores de tempos de transicao; -->
    <!--   - AttState$Test: para testes efetuados sobre valores de estado dos eventos; -->
    <!--   - AttRepeat$Test: para testes efetuados sobre valores do atributo repeat de um evento. -->
    <!--   - AttOccurences$Test: para testes efetuados sobre valores do atributo occurences de um evento. -->
    <!--   - AttNode$Test: para testes efetuados sobre valores de atributos dos nos. -->
    <!-- * Sobre os comparadores para teste, a menos que explicitamente comentado, eh assumido "eq". -->
    <!-- * Apos sao definidas as acoes (actions); -->
    <!-- * Condicoes, avaliacoes e acoes sao sempre seguidas de 1 ou N: -->
    <!--   - 1 significa que apenas um ator pode exercer aquele papel; -->
    <!--   - N significa que qualquer numero de atores pode exercer o papel. -->
    <!-- * Sobre os qualificadores (qualifiers), a menos que explicitamente comentado, eh assumido: -->
    <!--   - Nos papeis "condition" e "assessment" o valor eh "any"; -->
    <!--   - Nos papeis "action" o valor eh "all". -->
    <!-- * Quando mais de uma acao eh especificada, elas sao aplicadas em sequencia, a menos quando -->
    <!--   comentado o contrario; -->
    <!-- * Acoes precedidas por "Delay" devem esperar o retardo especificado para serem disparadas. -->
    <connectorBase>
      <!-- Conectores Causais 1 para 1 -->

      <!-- OnBegin -->
      <causalConnector id="onBeginStart">
        <simpleCondition role="onBegin"/>
        <simpleAction role="start"/>
      </causalConnector>

      <causalConnector id="onBeginStop">
        <simpleCondition role="onBegin"/>
        <simpleAction role="stop"/>
      </causalConnector>

      <causalConnector id="onBeginPause">
        <simpleCondition role="onBegin"/>
        <simpleAction role="pause"/>
      </causalConnector>

      <causalConnector id="onBeginResume">
        <simpleCondition role="onBegin"/>
        <simpleAction role="resume"/>
      </causalConnector>

      <causalConnector id="onBeginSet">
        <connectorParam name="var"/>
        <simpleCondition role="onBegin"/>
        <simpleAction role="set" value="$var"/>
      </causalConnector>

      <!-- OnEnd -->
      <causalConnector id="onEndStart">
        <simpleCondition role="onEnd"/>
        <simpleAction role="start"/>
      </causalConnector>

      <causalConnector id="onEndStop">
        <simpleCondition role="onEnd"/>
        <simpleAction role="stop"/>
      </causalConnector>

      <causalConnector id="onEndPause">
        <simpleCondition role="onEnd"/>
        <simpleAction role="pause"/>
      </causalConnector>

      <causalConnector id="onEndResume">
        <simpleCondition role="onEnd"/>
        <simpleAction role="resume"/>
      </causalConnector>

      <causalConnector id="onEndSet">
        <connectorParam name="var"/>
        <simpleCondition role="onEnd"/>
        <simpleAction role="set" value="$var"/>
      </causalConnector>

      <!-- OnMouseSelection -->
      <causalConnector id="onSelectionStart">
        <simpleCondition role="onSelection"/>
        <simpleAction role="start"/>
      </causalConnector>

      <causalConnector id="onSelectionStop">
        <simpleCondition role="onSelection"/>
        <simpleAction role="stop"/>
      </causalConnector>

      <causalConnector id="onSelectionPause">
        <simpleCondition role="onSelection"/>
        <simpleAction role="pause"/>
      </causalConnector>

      <causalConnector id="onSelectionResume">
        <simpleCondition role="onSelection"/>
        <simpleAction role="resume"/>
      </causalConnector>

      <causalConnector id="onSelectionSet">
        <connectorParam name="var"/>
        <simpleCondition role="onSelection"/>
        <simpleAction role="set" value="$var"/>
      </causalConnector>


      <!-- OnKeySelection -->
      <causalConnector id="onKeySelectionStart">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode"/>
        <simpleAction role="start"/>
      </causalConnector>

      <causalConnector id="onKeySelectionStop">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode"/>
        <simpleAction role="stop"/>
      </causalConnector>

      <causalConnector id="onKeySelectionPause">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode"/>
        <simpleAction role="pause"/>
      </causalConnector>

      <causalConnector id="onKeySelectionResume">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode"/>
        <simpleAction role="resume"/>
      </causalConnector>

      <causalConnector id="onKeySelectionSet">
        <connectorParam name="keyCode" />
        <connectorParam name="var"/>
        <simpleCondition role="onSelection" key="$keyCode"/>
        <simpleAction role="set" value="$var"/>
      </causalConnector>


      <!-- Conectores Causais 1 para N -->

      <!-- OnBegin -->
      <causalConnector id="onBeginStartN">
        <simpleCondition role="onBegin"/>
        <simpleAction role="start" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onBeginStopN">
        <simpleCondition role="onBegin"/>
        <simpleAction role="stop" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onBeginPauseN">
        <simpleCondition role="onBegin"/>
        <simpleAction role="pause" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onBeginResumeN">
        <simpleCondition role="onBegin"/>
        <simpleAction role="resume" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onBeginSetN">
        <connectorParam name="var"/>
        <simpleCondition role="onBegin" />
        <simpleAction role="set" value="$var" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onBeginStartNStopN">
        <simpleCondition role="onBegin"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onBeginStartNPauseN">
        <simpleCondition role="onBegin"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="pause" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onBeginStartNResumeN">
        <simpleCondition role="onBegin"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="resume" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onBeginStartNSetN">
        <connectorParam name="var"/>
        <simpleCondition role="onBegin"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="set" value="$var" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onBeginStartNDelayStopN">
        <connectorParam name="delay" />
        <simpleCondition role="onBegin"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" delay="$delay" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onBeginStopNStartN">
        <simpleCondition role="onBegin"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onBeginStopNPauseN">
        <simpleCondition role="onBegin"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="pause" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onBeginStopNResumeN">
        <simpleCondition role="onBegin"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="resume" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onBeginStopNSetN">
        <connectorParam name="var" />
        <simpleCondition role="onBegin"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="set" value="$var" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onBeginStopNDelayStartN">
        <connectorParam name="delay" />
        <simpleCondition role="onBegin"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="start" delay="$delay" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onBeginSetVarNDelayStopN">
        <connectorParam name="delay" />
        <connectorParam name="var" />
        <simpleCondition role="onBegin"/>
        <compoundAction operator="seq">
          <simpleAction role="set" value="$var" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" delay="$delay" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <!-- OnEnd -->
      <causalConnector id="onEndStartN">
        <simpleCondition role="onEnd"/>
        <simpleAction role="start" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onEndStopN">
        <simpleCondition role="onEnd"/>
        <simpleAction role="stop" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onEndPauseN">
        <simpleCondition role="onEnd"/>
        <simpleAction role="pause" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onEndResumeN">
        <simpleCondition role="onEnd"/>
        <simpleAction role="resume" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onEndSetN">
        <connectorParam name="var"/>
        <simpleCondition role="onEnd" />
        <simpleAction role="set" value="$var" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onEndStartNStopN">
        <simpleCondition role="onEnd"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onEndStartNPauseN">
        <simpleCondition role="onEnd"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="pause" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onEndStartNResumeN">
        <simpleCondition role="onEnd"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="resume" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onEndStartNSetN">
        <connectorParam name="var"/>
        <simpleCondition role="onEnd"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="set" value="$var" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onEndStartNDelayStopN">
        <connectorParam name="delay" />
        <simpleCondition role="onEnd"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" delay="$delay" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onEndStopNStartN">
        <simpleCondition role="onEnd"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onEndStopNPauseN">
        <simpleCondition role="onEnd"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="pause" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onEndStopNResumeN">
        <simpleCondition role="onEnd"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="resume" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onEndStopNSetN">
        <connectorParam name="var" />
        <simpleCondition role="onEnd"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="set" value="$var" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onEndStopNDelayStartN">
        <connectorParam name="delay" />
        <simpleCondition role="onEnd"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="start" delay="$delay" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onEndSetVarNDelayStopN">
        <connectorParam name="delay" />
        <connectorParam name="var" />
        <simpleCondition role="onEnd"/>
        <compoundAction operator="seq">
          <simpleAction role="set" value="$var" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" delay="$delay" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <!-- OnMouseSelection -->
      <causalConnector id="onSelectionStartN">
        <simpleCondition role="onSelection"/>
        <simpleAction role="start" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onSelectionStopN">
        <simpleCondition role="onSelection"/>
        <simpleAction role="stop" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onSelectionPauseN">
        <simpleCondition role="onSelection"/>
        <simpleAction role="pause" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onSelectionResumeN">
        <simpleCondition role="onSelection"/>
        <simpleAction role="resume" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onSelectionSetN">
        <connectorParam name="var"/>
        <simpleCondition role="onSelection" />
        <simpleAction role="set" value="$var" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onSelectionStartNStopN">
        <simpleCondition role="onSelection"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onSelectionStartNPauseN">
        <simpleCondition role="onSelection"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="pause" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onSelectionStartNResumeN">
        <simpleCondition role="onSelection"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="resume" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onSelectionStartNSetN">
        <connectorParam name="var"/>
        <simpleCondition role="onSelection"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="set" value="$var" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onSelectionStartNDelayStopN">
        <connectorParam name="delay" />
        <simpleCondition role="onSelection"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" delay="$delay" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onSelectionStopNStartN">
        <simpleCondition role="onSelection"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onSelectionStopNPauseN">
        <simpleCondition role="onSelection"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="pause" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onSelectionStopNResumeN">
        <simpleCondition role="onSelection"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="resume" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onSelectionStopNSetN">
        <connectorParam name="var" />
        <simpleCondition role="onSelection"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="set" value="$var" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onSelectionStopNDelayStartN">
        <connectorParam name="delay" />
        <simpleCondition role="onSelection"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="start" delay="$delay" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onSelectionSetVarNDelayStopN">
        <connectorParam name="delay" />
        <connectorParam name="var" />
        <simpleCondition role="onSelection"/>
        <compoundAction operator="seq">
          <simpleAction role="set" value="$var" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" delay="$delay" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <!-- OnKeySelection -->
      <causalConnector id="onKeySelectionStartN">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode"/>
        <simpleAction role="start" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onKeySelectionStopN">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode"/>
        <simpleAction role="stop" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onKeySelectionPauseN">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode" />
        <simpleAction role="pause" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onKeySelectionResumeN">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode"/>
        <simpleAction role="resume" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onKeySelectionSetN">
        <connectorParam name="keyCode" />
        <connectorParam name="var"/>
        <simpleCondition role="onSelection" key="$keyCode" />
        <simpleAction role="set" value="$var" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onKeySelectionStartNStopN">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode" />
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onKeySelectionStartNPauseN">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode" />
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="pause" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onKeySelectionStartNResumeN">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode" />
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="resume" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onKeySelectionStartNSetN">
        <connectorParam name="keyCode" />
        <connectorParam name="var"/>
        <simpleCondition role="onSelection" key="$keyCode" />
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="set" value="$var" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onKeySelectionStartNDelayStopN">
        <connectorParam name="keyCode" />
        <connectorParam name="delay" />
        <simpleCondition role="onSelection" key="$keyCode" />
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" delay="$delay" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onKeySelectionStopNStartN">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode" />
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onKeySelectionStopNPauseN">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode" />
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="pause" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onKeySelectionStopNResumeN">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="resume" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onKeySelectionStopNSetN">
        <connectorParam name="keyCode" />
        <connectorParam name="var" />
        <simpleCondition role="onSelection" key="$keyCode" />
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="set" value="$var" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onKeySelectionStopNDelayStartN">
        <connectorParam name="keyCode" />
        <connectorParam name="delay" />
        <simpleCondition role="onSelection" key="$keyCode"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="start" delay="$delay" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onKeySelectionSetVarNDelayStopN">
        <connectorParam name="keyCode" />
        <connectorParam name="delay" />
        <connectorParam name="var" />
        <simpleCondition role="onSelection" key="$keyCode" />
        <compoundAction operator="seq">
          <simpleAction role="set" value="$var" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" delay="$delay" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <!-- Conectores Causais N para 1 -->
      <causalConnector id="onKeySelectionNSet">
        <connectorParam name="keyCode" />
        <connectorParam name="var" />
        <simpleCondition role="onSelection" key="$keyCode" max="unbounded" qualifier="or"/>
        <simpleAction role="set" value="$var"/>
      </causalConnector>

      <!-- Conectores Causais N para N -->
      <causalConnector id="onKeySelectionNStartN">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode" max="unbounded" qualifier="or"/>
        <simpleAction role="start" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onKeySelectionNStopN">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode" max="unbounded" qualifier="or"/>
        <simpleAction role="stop" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onKeySelectionNPauseN">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode" max="unbounded" qualifier="or"/>
        <simpleAction role="pause" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onKeySelectionNResumeN">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode" max="unbounded" qualifier="or"/>
        <simpleAction role="start" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onKeySelectionNStartNStopN">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode" max="unbounded" qualifier="or"/>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onKeySelectionNStopNStartN">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode" max="unbounded" qualifier="or"/>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onBeginAttNodeTestStartN">
        <connectorParam name="value"/>
        <compoundCondition operator="and">
          <simpleCondition role="onBegin" />
          <assessmentStatement comparator="eq">
            <attributeAssessment role="attNodeTest" eventType="attribution" attributeType="nodeProperty"/>
            <valueAssessment value="$value"/>
          </assessmentStatement>
        </compoundCondition>
        <simpleAction role="start" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onBeginAttNodeTestStopN">
        <connectorParam name="value"/>
        <compoundCondition operator="and">
          <simpleCondition role="onBegin" />
          <assessmentStatement comparator="eq">
            <attributeAssessment role="attNodeTest" eventType="attribution" attributeType="nodeProperty"/>
            <valueAssessment value="$value"/>
          </assessmentStatement>
        </compoundCondition>
        <simpleAction role="stop" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onEndAttNodeTestStartN">
        <connectorParam name="value"/>
        <compoundCondition operator="and">
          <simpleCondition role="onEnd" />
          <assessmentStatement comparator="eq">
            <attributeAssessment role="attNodeTest" eventType="attribution" attributeType="nodeProperty"/>
            <valueAssessment value="$value"/>
          </assessmentStatement>
        </compoundCondition>
        <simpleAction role="start" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onEndAttNodeTestStopN">
        <connectorParam name="value"/>
        <compoundCondition operator="and">
          <simpleCondition role="onEnd" />
          <assessmentStatement comparator="eq">
            <attributeAssessment role="attNodeTest" eventType="attribution" attributeType="nodeProperty"/>
            <valueAssessment value="$value"/>
          </assessmentStatement>
        </compoundCondition>
        <simpleAction role="stop" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onKeySelectionNAttNodeTestStartN">
        <connectorParam name="keyCode"/>
        <connectorParam name="value"/>
        <compoundCondition operator="and">
          <simpleCondition role="onSelection" key="$keyCode" max="unbounded" qualifier="or"/>
          <assessmentStatement comparator="eq">
            <attributeAssessment role="attNodeTest" eventType="attribution" attributeType="nodeProperty"/>
            <valueAssessment value="$value"/>
          </assessmentStatement>
        </compoundCondition>
        <simpleAction role="start" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onKeySelectionNAttNodeTestStopN">
        <connectorParam name="keyCode"/>
        <connectorParam name="value"/>
        <compoundCondition operator="and">
          <simpleCondition role="onSelection" key="$keyCode" max="unbounded" qualifier="or"/>
          <assessmentStatement comparator="eq">
            <attributeAssessment role="attNodeTest" eventType="attribution" attributeType="nodeProperty"/>
            <valueAssessment value="$value"/>
          </assessmentStatement>
        </compoundCondition>
        <simpleAction role="stop" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onBeginAttNodeTestStartNStopN">
        <connectorParam name="value"/>
        <compoundCondition operator="and">
          <simpleCondition role="onBegin" />
          <assessmentStatement comparator="eq">
            <attributeAssessment role="attNodeTest" eventType="attribution" attributeType="nodeProperty"/>
            <valueAssessment value="$value"/>
          </assessmentStatement>
        </compoundCondition>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onEndAttNodeTestStartNStopN">
        <connectorParam name="value"/>
        <compoundCondition operator="and">
          <simpleCondition role="onEnd" />
          <assessmentStatement comparator="eq">
            <attributeAssessment role="attNodeTest" eventType="attribution" attributeType="nodeProperty"/>
            <valueAssessment value="$value"/>
          </assessmentStatement>
        </compoundCondition>
        <compoundAction operator="seq">
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onBeginAttNodeTestSetNStartN">
        <connectorParam name="value"/>
        <connectorParam name="setValue" />
        <compoundCondition operator="and">
          <simpleCondition role="onBegin" />
          <assessmentStatement comparator="eq">
            <attributeAssessment role="attNodeTest" eventType="attribution" attributeType="nodeProperty"/>
            <valueAssessment value="$value"/>
          </assessmentStatement>
        </compoundCondition>
        <compoundAction operator="seq">
          <simpleAction role="set" value="$setValue" max="unbounded" qualifier="seq"/>
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onEndAttNodeTestSetNStopN">
        <connectorParam name="value"/>
        <connectorParam name="setValue" />
        <compoundCondition operator="and">
          <simpleCondition role="onEnd" />
          <assessmentStatement comparator="eq">
            <attributeAssessment role="attNodeTest" eventType="attribution" attributeType="nodeProperty"/>
            <valueAssessment value="$value"/>
          </assessmentStatement>
        </compoundCondition>
        <compoundAction operator="seq">
          <simpleAction role="set" value="$setValue" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>


      <!-- A sintaxe dos nomes dos conectores de retricao segue a seguinte terminologia: -->
      <!-- * Em seguida sao definidas as avaliacoes (assessments), sempre seguidas do termo $ e depois Test, -->
      <!--   onde $ eh um numeral qualquer para identificar papeis com mesmos testes de avaliacao; -->
      <!--   - TrNomeDaTransicao$Test: para testes efetuados sobre valores de tempos de transicao; -->
      <!--   - AttState$Test: para testes efetuados sobre valores de estado dos eventos; -->
      <!--   - AttRepeat$Test: para testes efetuados sobre valores do atributo repeat de um evento. -->
      <!--   - AttOccurences$Test: para testes efetuados sobre valores do atributo occurences de um evento. -->
      <!--   - AttNode$Test: para testes efetuados sobre valores de atributos dos nos. -->
      <!-- * Avaliacoes sao sempre seguidas de 1 ou N: -->
      <!--   - 1 significa que apenas um ator pode exercer aquele papel; -->
      <!--   - N significa que qualquer numero de atores pode exercer o papel. -->
      <!-- * Sobre os qualificadores (qualifiers), a menos que explicitamente comentado, eh assumido o valor "all". -->
      <!-- * Sobre os comparadores para teste, a menos que explicitamente comentado, eh assumido "eq". -->
      <!-- * Expressoes compostas sao ligadas pelo conectivo & (operador AND) e | (operador OR) -->


      <!-- Conectores de Restricao 1 para 1 / comparador "eq" -->

      <!-- <constraintConnector id="trStopsTest1trStartsTest1" > -->
      <!--    <assessmentRole id="trStopsTest" eventType="presentation"> -->
      <!--       <eventStateTransitionAssessment transition="stops"/> -->
      <!--    </assessmentRole> -->
      <!--    <assessmentRole id="trStartsTest" eventType="presentation"> -->
      <!--       <eventStateTransitionAssessment transition="starts"/> -->
      <!--    </assessmentRole> -->
      <!--    <constraintGlue> -->
      <!--       <assessmentStatement comparator="eq" firstAssessmentRole="trStopsTest" -->
      <!--        secondAssessmentRole="trStartsTest"/> -->
      <!--    </constraintGlue> -->
      <!-- </constraintConnector > -->

      <!-- <constraintConnector id="trStarts1Test1trStarts2Test1" > -->
      <!--    <assessmentRole id="trStarts1Test" eventType="presentation"> -->
      <!--       <eventStateTransitionAssessment transition="starts"/> -->
      <!--    </assessmentRole> -->
      <!--    <assessmentRole id="trStarts2Test" eventType="presentation"> -->
      <!--       <eventStateTransitionAssessment transition="starts"/> -->
      <!--    </assessmentRole> -->
      <!--    <constraintGlue> -->
      <!--       <assessmentStatement comparator="eq" firstAssessmentRole="trStarts1Test" -->
      <!--        secondAssessmentRole="trStarts2Test"/> -->
      <!--    </constraintGlue> -->
      <!-- </constraintConnector > -->

      <!-- <constraintConnector id="trStops1Test1trStops2Test1" > -->
      <!--    <assessmentRole id="trStops1Test" eventType="presentation"> -->
      <!--       <eventStateTransitionAssessment transition="stops"/> -->
      <!--    </assessmentRole> -->
      <!--    <assessmentRole id="trStops2Test" eventType="presentation"> -->
      <!--       <eventStateTransitionAssessment transition="stops"/> -->
      <!--    </assessmentRole> -->
      <!--    <constraintGlue> -->
      <!--       <assessmentStatement comparator="eq" firstAssessmentRole="trStops1Test" -->
      <!--        secondAssessmentRole="trStops2Test"/> -->
      <!--    </constraintGlue> -->
      <!-- </constraintConnector > -->

      <!-- <constraintConnector id="trStarts1Test1trStarts2Test1_AND_trStops1Test1trStops2Test1"> -->
      <!--    <assessmentRole id="trStarts1Test" eventType="presentation"> -->
      <!--       <eventStateTransitionAssessment transition="starts"/> -->
      <!--    </assessmentRole> -->
      <!--    <assessmentRole id="trStops1Test" eventType="presentation"> -->
      <!--       <eventStateTransitionAssessment transition="stops"/> -->
      <!--    </assessmentRole> -->
      <!--    <assessmentRole id="trStarts2Test" eventType="presentation"> -->
      <!--       <eventStateTransitionAssessment transition="starts"/> -->
      <!--    </assessmentRole> -->
      <!--    <assessmentRole id="trStops2Test" eventType="presentation"> -->
      <!--       <eventStateTransitionAssessment transition="stops"/> -->
      <!--    </assessmentRole> -->
      <!--    <constraintGlue> -->
      <!--       <compoundStatement operator="and"> -->
      <!--          <assessmentStatement -->
      <!--           firstAssessmentRole="trStarts1Test" secondAssessmentRole="trStarts2Test" comparator="eq"/> -->
      <!--          <assessmentStatement -->
      <!--          firstAssessmentRole="trStops1Test" secondAssessmentRole="trStops2Test" comparator="eq"/> -->
      <!--       </compoundStatement> -->
      <!--    </constraintGlue> -->
      <!-- </constraintConnector> -->


      <!-- Conectores de Restricao 1 para 1 / comparadores diferentes de "eq" -->

      <!-- <constraintConnector id="trStopsTestLTtrStartsTest" > -->
      <!--    <assessmentRole id="trStopsTest" eventType="presentation"> -->
      <!--       <eventStateTransitionAssessment transition="stops"/> -->
      <!--    </assessmentRole> -->
      <!--    <assessmentRole id="trStartsTest" eventType="presentation"> -->
      <!--       <eventStateTransitionAssessment transition="starts"/> -->
      <!--    </assessmentRole> -->
      <!--    <constraintGlue> -->
      <!--       <assessmentStatement comparator="lt" firstAssessmentRole="trStopsTest" -->
      <!--        secondAssessmentRole="trStartsTest"/> -->
      <!--    </constraintGlue> -->
      <!-- </constraintConnector> -->


      <!-- novos conectores criados para aplicacao PRODERJ -->
      <causalConnector id="onKeySelectionAbortNStartN">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode" />
        <compoundAction operator="seq">
          <simpleAction role="abort" max="unbounded" qualifier="seq"/>
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onKeySelectionAbortN">
        <connectorParam name="keyCode" />
        <simpleCondition role="onSelection" key="$keyCode"/>
        <simpleAction role="abort" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onEndAbort">
        <simpleCondition role="onEnd"/>
        <simpleAction role="abort"/>
      </causalConnector>

      <causalConnector id="onEndAbortNStartN">
        <simpleCondition role="onEnd"/>
        <compoundAction operator="seq">
          <simpleAction role="abort" max="unbounded" qualifier="seq"/>
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onEndAbortNStopN">
        <simpleCondition role="onEnd"/>
        <compoundAction operator="seq">
          <simpleAction role="abort" max="unbounded" qualifier="seq"/>
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>
    </connectorBase>
  </head>

  <!-- <importNCL documentURI="pPrincipal.ncl" alias="principal"/> -->
  <!-- <importNCL documentURI="pEmergencias.ncl" alias="emergencias"/> -->
  <!-- <importNCL documentURI="pUpas.ncl" alias="upa"/> -->
  <!-- <importNCL documentURI="pEspecialidades.ncl" alias="especialidades"/> -->
  <!-- <importNCL documentURI="pUnidades.ncl" alias="unidades"/> -->
  <!-- <importNCL documentURI="pDengue.ncl" alias="dengue"/> -->
  <!-- <importNCL documentURI="pEfeito.ncl" alias="efeitoFile"/> -->

  <body>
    <port id="mainPort" component="video"/>

    <media id="video" src="proderj480p.mov" descriptor="dMainVideo">
      <area id="aInterativo" begin="1.2s" end="12s"/>
    </media>

    <!-- <media id="video" src="/misc/ncl30/proderj480p.mov" descriptor="dMainVideo"> -->
    <!--   <area id="aInterativo" begin="1.2s" end="12s"/> -->
    <!-- </media> -->

    <!--port id="mainInterativo" component="interativo"/-->
    <media id="interativo" src="UPA/Interativo.png" descriptor="dInterativo"/>

    <!-- <port id="mainPort2" component="ctPrincipal" interface="pTitulo"/> -->
    <!-- <port id="mainPort3" component="ctPrincipal" interface="pDengueON"/> -->

    <!--### Contexto Principal ###-->
    <context id="ctPrincipal">
      <port component="DengueON" id="pDengueON"/>
      <port component="EmergenciaON" id="pEmergenciaON"/>
      <port component="SangueON" id="pSangueON"/>

      <port component="DengueOFF" id="pDengueOFF"/>
      <port component="EmergenciaOFF" id="pEmergenciaOFF"/>
      <port component="SangueOFF" id="pSangueOFF"/>
      <port component="tituloPrincipal" id="pTitulo"/>

      <media descriptor="dColuna1_Botao1" src="UPA/ctPrincipal/DengueON.png" id="DengueON"/>
      <media descriptor="dColuna1_Botao1" src="UPA/ctPrincipal/DengueOFF.png" id="DengueOFF"/>
      <media descriptor="dColuna1_Botao2" src="UPA/ctPrincipal/EmergenciaON.png" id="EmergenciaON"/>
      <media descriptor="dColuna1_Botao2" src="UPA/ctPrincipal/EmergenciaOFF.png" id="EmergenciaOFF"/>
      <media descriptor="dColuna1_Botao3" src="UPA/ctPrincipal/SangueON.png" id="SangueON"/>
      <media descriptor="dColuna1_Botao3" src="UPA/ctPrincipal/SangueOFF.png" id="SangueOFF"/>

      <media descriptor="dTitulo" src="UPA/ctPrincipal/Titulo.png" id="tituloPrincipal"/>

      <media descriptor="dTexto" src="UPA/ctPrincipal/DengueTEXT.png" id="tDengue"/>
      <media descriptor="dIcone" src="UPA/ctPrincipal/DengueIMAGE.png" id="iDengue"/>
      <media descriptor="dTexto" src="UPA/ctPrincipal/EmergenciaTEXT.png" id="tEmergencia"/>
      <media descriptor="dIcone" src="UPA/ctPrincipal/EmergenciaIMAGE.png" id="iEmergencia"/>
      <media descriptor="dTexto" src="UPA/ctPrincipal/SangueTEXT.png" id="tSangue"/>
      <media descriptor="dIcone" src="UPA/ctPrincipal/SangueIMAGE.png" id="iSangue"/>

      <!-- <media descriptor="dCaixa" src="UPA/borda.png" id="borda"/> -->
      <!-- <link xconnector="onBeginStart"> -->
      <!--   <bind role="onBegin" component="titulo"/> -->
      <!--   <bind role="start" component="borda"/> -->
      <!-- </link> -->

      <!-- ao exibir o botao com foco, exibe o texto e icones relacionados-->
      <link xconnector="onBeginStopNStartN" id="lDengueON">
        <bind role="onBegin" component="DengueON"/>
        <bind role="stop" component="DengueOFF"/>
        <bind role="start" component="EmergenciaOFF"/>
        <bind role="start" component="SangueOFF"/>
        <bind role="start" component="tDengue"/>
        <bind role="start" component="iDengue"/>
      </link>
      <link xconnector="onBeginStopNStartN" id="lEmergenciaON">
        <bind role="onBegin" component="EmergenciaON"/>
        <bind role="stop" component="EmergenciaOFF"/>
        <bind role="start" component="DengueOFF"/>
        <bind role="start" component="SangueOFF"/>
        <bind role="start" component="tEmergencia"/>
        <bind role="start" component="iEmergencia"/>
      </link>
      <link xconnector="onBeginStopNStartN" id="lSangueON">
        <bind role="onBegin" component="SangueON"/>
        <bind role="stop" component="SangueOFF"/>
        <bind role="start" component="DengueOFF"/>
        <bind role="start" component="EmergenciaOFF"/>
        <bind role="start" component="tSangue"/>
        <bind role="start" component="iSangue"/>
      </link>

      <!-- stop nos textos e icones -->
      <link xconnector="onEndStopN">
        <bind role="onEnd" component="DengueON"/>
        <bind role="stop" component="tDengue"/>
        <bind role="stop" component="iDengue"/>
      </link>
      <link xconnector="onEndStopN">
        <bind role="onEnd" component="EmergenciaON"/>
        <bind role="stop" component="tEmergencia"/>
        <bind role="stop" component="iEmergencia"/>
      </link>
      <link xconnector="onEndStopN">
        <bind role="onEnd" component="SangueON"/>
        <bind role="stop" component="tSangue"/>
        <bind role="stop" component="iSangue"/>
      </link>

      <!--  CURSOR_UP -->
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="DengueON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="DengueON"/>
        <bind role="start" component="SangueON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="EmergenciaON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="EmergenciaON"/>
        <bind role="start" component="DengueON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="SangueON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="SangueON"/>
        <bind role="start" component="EmergenciaON"/>
      </link>

      <!--  CURSOR_DOWN -->
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="DengueON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="DengueON"/>
        <bind role="start" component="EmergenciaON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="EmergenciaON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="EmergenciaON"/>
        <bind role="start" component="SangueON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="SangueON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="SangueON"/>
        <bind role="start" component="DengueON"/>
      </link>
    </context>

    <!--### Contexto Emergencias ###-->
    <context id="ctEmergencias">
      <port component="SamuON" id="pSamuON"/>
      <port component="UpaON" id="pUpaON"/>
      <port component="tituloEmergencia" id="pTitulo"/>

      <media descriptor="dColuna1_Botao1" src="UPA/ctEmergencias/SamuON.png" id="SamuON"/>
      <media descriptor="dColuna1_Botao1" src="UPA/ctEmergencias/SamuOFF.png" id="SamuOFF"/>
      <media descriptor="dColuna1_Botao2" src="UPA/ctEmergencias/UpaON.png" id="UpaON"/>
      <media descriptor="dColuna1_Botao2" src="UPA/ctEmergencias/UpaOFF.png" id="UpaOFF"/>

      <media descriptor="dTitulo" src="UPA/ctEmergencias/Titulo.png" id="tituloEmergencia"/>

      <media descriptor="dTexto" src="UPA/ctEmergencias/SamuTEXT.png" id="tSamu"/>
      <media descriptor="dIcone" src="UPA/ctEmergencias/SamuIMAGE.png" id="iSamu"/>
      <media descriptor="dTexto" src="UPA/ctEmergencias/UpaTEXT.png" id="tUpa"/>
      <media descriptor="dIcone" src="UPA/ctEmergencias/UpaIMAGE.png" id="iUpa"/>

      <link xconnector="onBeginStopNStartN">
        <bind role="onBegin" component="SamuON"/>
        <bind role="stop" component="SamuOFF"/>
        <bind role="start" component="UpaOFF"/>
        <bind role="start" component="tSamu"/>
        <bind role="start" component="iSamu"/>
      </link>
      <link xconnector="onBeginStopNStartN">
        <bind role="onBegin" component="UpaON"/>
        <bind role="stop" component="UpaOFF"/>
        <bind role="start" component="SamuOFF"/>
        <bind role="start" component="tUpa"/>
        <bind role="start" component="iUpa"/>
      </link>

      <!-- stop em textos e icones -->
      <link xconnector="onEndStopN">
        <bind role="onEnd" component="SamuON"/>
        <bind role="stop" component="tSamu"/>
        <bind role="stop" component="iSamu"/>
      </link>
      <link xconnector="onEndStopN">
        <bind role="onEnd" component="UpaON"/>
        <bind role="stop" component="tUpa"/>
        <bind role="stop" component="iUpa"/>
      </link>

      <!--  CURSOR_UP -->
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="SamuON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="SamuON"/>
        <bind role="start" component="UpaON"/>
      </link>

      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="UpaON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="UpaON"/>
        <bind role="start" component="SamuON"/>
      </link>

      <!--  CURSOR_DOWN -->
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="SamuON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="SamuON"/>
        <bind role="start" component="UpaON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="UpaON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="UpaON"/>
        <bind role="start" component="SamuON"/>
      </link>
    </context>

    <!--### Contexto Upa ###-->
    <context id="ctUpa">
      <port component="OqueON" id="pOqueON"/>
      <port component="FuncionaON" id="pFuncionaON"/>
      <port component="EspecialidadesON" id="pEspecialidadesON"/>
      <port component="UnidadesON" id="pUnidadesON"/>
      <port component="tituloUpa" id="pTitulo"/>

      <media descriptor="dColuna1_Botao1" src="UPA/ctUpa/OqueON.png" id="OqueON"/>
      <media descriptor="dColuna1_Botao1" src="UPA/ctUpa/OqueOFF.png" id="OqueOFF"/>
      <media descriptor="dColuna1_Botao2" src="UPA/ctUpa/FuncionaON.png" id="FuncionaON"/>
      <media descriptor="dColuna1_Botao2" src="UPA/ctUpa/FuncionaOFF.png" id="FuncionaOFF"/>
      <media descriptor="dColuna1_Botao3" src="UPA/ctUpa/EspecialidadesON.png" id="EspecialidadesON"/>
      <media descriptor="dColuna1_Botao3" src="UPA/ctUpa/EspecialidadesOFF.png" id="EspecialidadesOFF"/>
      <media descriptor="dColuna1_Botao4" src="UPA/ctUpa/UnidadesON.png" id="UnidadesON"/>
      <media descriptor="dColuna1_Botao4" src="UPA/ctUpa/UnidadesOFF.png" id="UnidadesOFF"/>

      <media descriptor="dTitulo" src="UPA/ctUpa/Titulo.png" id="tituloUpa"/>

      <media descriptor="dTexto" src="UPA/ctUpa/OqueTEXT.png" id="tOque"/>
      <media descriptor="dIconeShow" src="UPA/ctUpa/OqueIMAGE.png" id="iOque"/>
      <media descriptor="dIconeShow" src="UPA/ctUpa/OqueIMAGE2.png" id="iOque2"/>
      <media descriptor="dIconeShow" src="UPA/ctUpa/OqueIMAGE3.png" id="iOque3"/>

      <media descriptor="dTexto" src="UPA/ctUpa/FuncionaTEXT.png" id="tFunciona"/>
      <media descriptor="dIconeShow" src="UPA/ctUpa/FuncionaIMAGE.png" id="iFunciona"/>
      <media descriptor="dIconeShow" src="UPA/ctUpa/FuncionaIMAGE2.png" id="iFunciona2"/>
      <media descriptor="dIconeShow" src="UPA/ctUpa/FuncionaIMAGE3.png" id="iFunciona3"/>
      <media descriptor="dIconeShow" src="UPA/ctUpa/FuncionaIMAGE4.png" id="iFunciona4"/>
      <media descriptor="dIconeShow" src="UPA/ctUpa/FuncionaIMAGE5.png" id="iFunciona5"/>

      <media descriptor="dTexto" src="UPA/ctUpa/EspecialidadesTEXT.png" id="tEspecialidades"/>
      <media descriptor="dIconeShow" src="UPA/ctUpa/EspecialidadesIMAGE.png" id="iEspecialidades"/>
      <media descriptor="dIconeShow" src="UPA/ctUpa/EspecialidadesIMAGE2.png" id="iEspecialidades2"/>
      <media descriptor="dIconeShow" src="UPA/ctUpa/EspecialidadesIMAGE3.png" id="iEspecialidades3"/>
      <media descriptor="dIconeShow" src="UPA/ctUpa/EspecialidadesIMAGE4.png" id="iEspecialidades4"/>
      <media descriptor="dIconeShow" src="UPA/ctUpa/EspecialidadesIMAGE5.png" id="iEspecialidades5"/>

      <media descriptor="dTexto" src="UPA/ctUpa/UnidadesTEXT.png" id="tUnidades"/>
      <media descriptor="dIconeShow" src="UPA/ctUpa/UnidadesIMAGE.png" id="iUnidades"/>
      <media descriptor="dIconeShow" src="UPA/ctUpa/UnidadesIMAGE2.png" id="iUnidades2"/>
      <media descriptor="dIconeShow" src="UPA/ctUpa/UnidadesIMAGE3.png" id="iUnidades3"/>
      <media descriptor="dIconeShow" src="UPA/ctUpa/UnidadesIMAGE4.png" id="iUnidades4"/>
      <media descriptor="dIconeShow" src="UPA/ctUpa/UnidadesIMAGE5.png" id="iUnidades5"/>

      <!-- botoes em foco -->
      <link xconnector="onBeginStartN" id="lOqueON">
        <bind role="onBegin" component="OqueON"/>
        <bind role="start" component="FuncionaOFF"/>
        <bind role="start" component="EspecialidadesOFF"/>
        <bind role="start" component="UnidadesOFF"/>
        <bind role="start" component="tOque"/>
        <bind role="start" component="iOque"/>
      </link>
      <link xconnector="onBeginStartN" id="lFuncionaON">
        <bind role="onBegin" component="FuncionaON"/>
        <bind role="start" component="EspecialidadesOFF"/>
        <bind role="start" component="UnidadesOFF"/>
        <bind role="start" component="OqueOFF"/>
        <bind role="start" component="tFunciona"/>
        <bind role="start" component="iFunciona"/>
      </link>
      <link xconnector="onBeginStartN" id="lEspecialidadesON">
        <bind role="onBegin" component="EspecialidadesON"/>
        <bind role="start" component="FuncionaOFF"/>
        <bind role="start" component="UnidadesOFF"/>
        <bind role="start" component="OqueOFF"/>
        <bind role="start" component="tEspecialidades"/>
        <bind role="start" component="iEspecialidades"/>
      </link>
      <link xconnector="onBeginStartN" id="lUnidadesON">
        <bind role="onBegin" component="UnidadesON"/>
        <bind role="start" component="FuncionaOFF"/>
        <bind role="start" component="EspecialidadesOFF"/>
        <bind role="start" component="OqueOFF"/>
        <bind role="start" component="tUnidades"/>
        <bind role="start" component="iUnidades"/>
      </link>

      <!-- stop nos textos e icones -->
      <link xconnector="onEndAbortNStopN">
        <bind role="onEnd" component="OqueON"/>
        <bind role="stop" component="tOque"/>
        <bind role="abort" component="iOque"/>
        <bind role="abort" component="iOque2"/>
        <bind role="abort" component="iOque3"/>
      </link>
      <link xconnector="onEndAbortNStopN">
        <bind role="onEnd" component="FuncionaON"/>
        <bind role="stop" component="tFunciona"/>
        <bind role="abort" component="iFunciona"/>
        <bind role="abort" component="iFunciona2"/>
        <bind role="abort" component="iFunciona3"/>
        <bind role="abort" component="iFunciona4"/>
        <bind role="abort" component="iFunciona5"/>
      </link>
      <link xconnector="onEndAbortNStopN">
        <bind role="onEnd" component="EspecialidadesON"/>
        <bind role="stop" component="tEspecialidades"/>
        <bind role="abort" component="iEspecialidades"/>
        <bind role="abort" component="iEspecialidades2"/>
        <bind role="abort" component="iEspecialidades3"/>
        <bind role="abort" component="iEspecialidades4"/>
        <bind role="abort" component="iEspecialidades5"/>
      </link>
      <link xconnector="onEndAbortNStopN">
        <bind role="onEnd" component="UnidadesON"/>
        <bind role="stop" component="tUnidades"/>
        <bind role="abort" component="iUnidades"/>
        <bind role="abort" component="iUnidades2"/>
        <bind role="abort" component="iUnidades3"/>
        <bind role="abort" component="iUnidades4"/>
        <bind role="abort" component="iUnidades5"/>
      </link>

      <!--  CURSOR_UP -->
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="OqueON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="OqueON"/>
        <bind role="start" component="UnidadesON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="FuncionaON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="FuncionaON"/>
        <bind role="start" component="OqueON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="EspecialidadesON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="EspecialidadesON"/>
        <bind role="start" component="FuncionaON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="UnidadesON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="UnidadesON"/>
        <bind role="start" component="EspecialidadesON"/>
      </link>

      <!--  CURSOR_DOWN -->
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="OqueON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="OqueON"/>
        <bind role="start" component="FuncionaON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="FuncionaON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="FuncionaON"/>
        <bind role="start" component="EspecialidadesON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="EspecialidadesON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="EspecialidadesON"/>
        <bind role="start" component="UnidadesON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="UnidadesON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="UnidadesON"/>
        <bind role="start" component="OqueON"/>
      </link>

      <!-- slideshow OqueE -->
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iOque"/>
        <bind role="start" component="iOque2"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iOque2"/>
        <bind role="start" component="iOque3"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iOque3"/>
        <bind role="start" component="iOque"/>
      </link>

      <!-- slideshow Funciona -->
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iFunciona"/>
        <bind role="start" component="iFunciona2"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iFunciona2"/>
        <bind role="start" component="iFunciona3"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iFunciona3"/>
        <bind role="start" component="iFunciona4"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iFunciona4"/>
        <bind role="start" component="iFunciona5"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iFunciona5"/>
        <bind role="start" component="iFunciona"/>
      </link>

      <!--slideshow Especialidades -->
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iEspecialidades"/>
        <bind role="start" component="iEspecialidades2"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iEspecialidades2"/>
        <bind role="start" component="iEspecialidades3"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iEspecialidades3"/>
        <bind role="start" component="iEspecialidades4"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iEspecialidades4"/>
        <bind role="start" component="iEspecialidades5"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iEspecialidades5"/>
        <bind role="start" component="iEspecialidades"/>
      </link>

      <!-- slideshow Unidades -->
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iUnidades"/>
        <bind role="start" component="iUnidades2"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iUnidades2"/>
        <bind role="start" component="iUnidades3"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iUnidades3"/>
        <bind role="start" component="iUnidades4"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iUnidades4"/>
        <bind role="start" component="iUnidades5"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iUnidades5"/>
        <bind role="start" component="iUnidades"/>
      </link>
    </context>

    <!--### Contexto Especialidades ###-->
    <context id="ctEspecialidades">
      <port component="geralON" id="pGeralON"/>
      <port component="pediatriaON" id="pPediatriaON"/>
      <port component="ortopediaON" id="pOrtopediaON"/>
      <port component="odontologiaON" id="pOdontologiaON"/>
      <port component="tituloEspecialidade" id="pTitulo"/>

      <media descriptor="dColuna1_Botao1" src="UPA/ctEspecialidades/GeralON.png" id="geralON"/>
      <media descriptor="dColuna1_Botao1" src="UPA/ctEspecialidades/GeralOFF.png" id="geralOFF"/>
      <media descriptor="dColuna1_Botao2" src="UPA/ctEspecialidades/PediatriaON.png" id="pediatriaON"/>
      <media descriptor="dColuna1_Botao2" src="UPA/ctEspecialidades/PediatriaOFF.png" id="pediatriaOFF"/>
      <media descriptor="dColuna1_Botao3" src="UPA/ctEspecialidades/OrtopediaON.png" id="ortopediaON"/>
      <media descriptor="dColuna1_Botao3" src="UPA/ctEspecialidades/OrtopediaOFF.png" id="ortopediaOFF"/>
      <media descriptor="dColuna1_Botao4" src="UPA/ctEspecialidades/OdontologiaON.png" id="odontologiaON"/>
      <media descriptor="dColuna1_Botao4" src="UPA/ctEspecialidades/OdontologiaOFF.png" id="odontologiaOFF"/>

      <media descriptor="dTitulo" src="UPA/ctEspecialidades/Titulo.png" id="tituloEspecialidade"/>

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
      <link xconnector="onBeginStopNStartN" id="lGeralON">
        <bind role="onBegin" component="geralON"/>
        <bind role="stop" component="geralOFF"/>
        <bind role="start" component="pediatriaOFF"/>
        <bind role="start" component="ortopediaOFF"/>
        <bind role="start" component="odontologiaOFF"/>
        <bind role="start" component="tGeral"/>
        <bind role="start" component="iGeral"/>
      </link>
      <link xconnector="onBeginStopNStartN" id="lPediatriaOn">
        <bind role="onBegin" component="pediatriaON"/>
        <bind role="stop" component="pediatriaOFF"/>
        <bind role="start" component="geralOFF"/>
        <bind role="start" component="ortopediaOFF"/>
        <bind role="start" component="odontologiaOFF"/>
        <bind role="start" component="tPediatria"/>
        <bind role="start" component="iPediatria"/>
      </link>
      <link xconnector="onBeginStopNStartN" id="lOrtopediaON">
        <bind role="onBegin" component="ortopediaON"/>
        <bind role="stop" component="ortopediaOFF"/>
        <bind role="start" component="geralOFF"/>
        <bind role="start" component="pediatriaOFF"/>
        <bind role="start" component="odontologiaOFF"/>
        <bind role="start" component="tOrtopedia"/>
        <bind role="start" component="iOrtopedia"/>
      </link>
      <link xconnector="onBeginStopNStartN" id="lOdontologiaON">
        <bind role="onBegin" component="odontologiaON"/>
        <bind role="stop" component="odontologiaOFF"/>
        <bind role="start" component="ortopediaOFF"/>
        <bind role="start" component="geralOFF"/>
        <bind role="start" component="pediatriaOFF"/>
        <bind role="start" component="tOdontologia"/>
        <bind role="start" component="iOdontologia"/>
      </link>

      <!-- sumindo texto e icones -->
      <link xconnector="onEndAbortNStopN">
        <bind role="onEnd" component="geralON"/>
        <bind role="stop" component="tGeral"/>
        <bind role="abort" component="iGeral"/>
        <bind role="abort" component="iGeral2"/>
        <bind role="abort" component="iGeral3"/>
        <bind role="abort" component="iGeral4"/>
        <bind role="abort" component="iGeral5"/>
      </link>
      <link xconnector="onEndAbortNStopN">
        <bind role="onEnd" component="ortopediaON"/>
        <bind role="stop" component="tOrtopedia"/>
        <bind role="abort" component="iOrtopedia"/>
        <bind role="abort" component="iOrtopedia2"/>
        <bind role="abort" component="iOrtopedia3"/>
        <bind role="abort" component="iOrtopedia4"/>
        <bind role="abort" component="iOrtopedia5"/>
      </link>
      <link xconnector="onEndAbortNStopN">
        <bind role="onEnd" component="odontologiaON"/>
        <bind role="stop" component="tOdontologia"/>
        <bind role="abort" component="iOdontologia"/>
        <bind role="abort" component="iOdontologia2"/>
        <bind role="abort" component="iOdontologia3"/>
        <bind role="abort" component="iOdontologia4"/>
        <bind role="abort" component="iOdontologia5"/>
      </link>
      <link xconnector="onEndAbortNStopN">
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
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="geralON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="geralON"/>
        <bind role="start" component="pediatriaON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="pediatriaON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="pediatriaON"/>
        <bind role="start" component="ortopediaON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="ortopediaON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="ortopediaON"/>
        <bind role="start" component="odontologiaON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="odontologiaON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="odontologiaON"/>
        <bind role="start" component="geralON"/>
      </link>

      <!--  CURSOR_UP -->
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="geralON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="geralON"/>
        <bind role="start" component="odontologiaON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="pediatriaON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="pediatriaON"/>
        <bind role="start" component="geralON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="ortopediaON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="ortopediaON"/>
        <bind role="start" component="pediatriaON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="odontologiaON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="odontologiaON"/>
        <bind role="start" component="ortopediaON"/>
      </link>

      <!-- slideshow Geral -->
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iGeral"/>
        <bind role="start" component="iGeral2"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iGeral2"/>
        <bind role="start" component="iGeral3"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iGeral3"/>
        <bind role="start" component="iGeral4"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iGeral4"/>
        <bind role="start" component="iGeral"/>
      </link>

      <!-- slideshow Pediatria -->
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iPediatria"/>
        <bind role="start" component="iPediatria2"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iPediatria2"/>
        <bind role="start" component="iPediatria3"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iPediatria3"/>
        <bind role="start" component="iPediatria4"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iPediatria4"/>
        <bind role="start" component="iPediatria"/>
      </link>

      <!-- slideshow Ortopedia -->
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iOrtopedia"/>
        <bind role="start" component="iOrtopedia2"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iOrtopedia2"/>
        <bind role="start" component="iOrtopedia3"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iOrtopedia3"/>
        <bind role="start" component="iOrtopedia4"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iOrtopedia4"/>
        <bind role="start" component="iOrtopedia"/>
      </link>

      <!-- slideshow Odontologia -->
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iOdontologia"/>
        <bind role="start" component="iOdontologia2"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iOdontologia2"/>
        <bind role="start" component="iOdontologia3"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iOdontologia3"/>
        <bind role="start" component="iOdontologia4"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iOdontologia4"/>
        <bind role="start" component="iOdontologia"/>
      </link>

    </context>

    <!--### Contexto Unidades ###-->
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
      <port component="tituloUnidade" id="pTitulo"/>

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

      <media descriptor="dTitulo" src="UPA/ctUnidades/Titulo.png" id="tituloUnidade"/>

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

      <link xconnector="onBeginStopNStartN" id="lBanguON">
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
      <link xconnector="onBeginStopNStartN" id="lBelfordON">
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
      <link xconnector="onBeginStopNStartN" id="lCpoGrandeOn">
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
      <link xconnector="onBeginStopNStartN" id="lIrajaON">
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
      <link xconnector="onBeginStopNStartN" id="lMareON">
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
      <link xconnector="onBeginStopNStartN" id="lStaCruzON">
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
      <link xconnector="onEndAbortNStopN">
        <bind role="onEnd" component="BanguON"/>
        <bind role="stop" component="tBangu"/>
        <bind role="abort" component="iBangu"/>
        <bind role="abort" component="iBangu2"/>
      </link>
      <link xconnector="onEndAbortNStopN">
        <bind role="onEnd" component="BelfordON"/>
        <bind role="stop" component="tBelford"/>
        <bind role="abort" component="iBelford"/>
        <bind role="abort" component="iBelford2"/>
      </link>
      <link xconnector="onEndAbortNStopN">
        <bind role="onEnd" component="CpoGrandeON"/>
        <bind role="stop" component="tCpoGrande"/>
        <bind role="abort" component="iCpoGrande"/>
        <bind role="abort" component="iCpoGrande2"/>
      </link>
      <link xconnector="onEndAbortNStopN">
        <bind role="onEnd" component="IrajaON"/>
        <bind role="stop" component="tIraja"/>
        <bind role="abort" component="iIraja"/>
        <bind role="abort" component="iIraja2"/>
      </link>
      <link xconnector="onEndAbortNStopN">
        <bind role="onEnd" component="MareON"/>
        <bind role="stop" component="tMare"/>
        <bind role="abort" component="iMare"/>
        <bind role="abort" component="iMare2"/>
      </link>
      <link xconnector="onEndAbortNStopN">
        <bind role="onEnd" component="StaCruzON"/>
        <bind role="stop" component="tStaCruz"/>
        <bind role="abort" component="iStaCruz"/>
        <bind role="abort" component="iStaCruz2"/>
      </link>

      <!--  CURSOR_DOWN -->
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="BanguON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="BanguON"/>
        <bind role="start" component="BelfordON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="BelfordON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="BelfordON"/>
        <bind role="start" component="CpoGrandeON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="CpoGrandeON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="CpoGrandeON"/>
        <bind role="start" component="IrajaON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="IrajaON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="BanguOFF"/>
        <bind role="stop" component="BelfordOFF"/>
        <bind role="stop" component="CpoGrandeOFF"/>
        <bind role="stop" component="IrajaON"/>
        <bind role="start" component="MareON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="MareON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="MareON"/>
        <bind role="start" component="StaCruzON"/>
      </link>

      <!--  CURSOR_UP -->
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="BelfordON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="BelfordON"/>
        <bind role="start" component="BanguON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="CpoGrandeON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="CpoGrandeON"/>
        <bind role="start" component="BelfordON"/>
      </link>

      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="IrajaON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="IrajaON"/>
        <bind role="start" component="CpoGrandeON"/>
      </link>

      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="MareON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="MareON"/>
        <bind role="stop" component="StaCruzOFF"/>
        <bind role="start" component="IrajaON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="StaCruzON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="StaCruzON"/>
        <bind role="start" component="MareON"/>
      </link>

      <!-- slideshow Bangu -->
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iBangu"/>
        <bind role="start" component="iBangu2"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iBangu2"/>
        <bind role="start" component="iBangu"/>
      </link>

      <!-- slideshow Belford Roxo -->
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iBelford"/>
        <bind role="start" component="iBelford2"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iBelford2"/>
        <bind role="start" component="iBelford"/>
      </link>

      <!-- slideshow CpoGrande -->
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iCpoGrande"/>
        <bind role="start" component="iCpoGrande2"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iCpoGrande2"/>
        <bind role="start" component="iCpoGrande"/>
      </link>

      <!-- slideshow Iraja -->
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iIraja"/>
        <bind role="start" component="iIraja2"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iIraja2"/>
        <bind role="start" component="iIraja"/>
      </link>

      <!-- slideshow Mare -->
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iMare"/>
        <bind role="start" component="iMare2"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iMare2"/>
        <bind role="start" component="iMare"/>
      </link>

      <!-- slideshow StaCruz -->
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iStaCruz"/>
        <bind role="start" component="iStaCruz2"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iStaCruz2"/>
        <bind role="start" component="iStaCruz"/>
      </link>

    </context>

    <!--### Contexto Dengue ###-->
    <context id="ctDengue">
      <port component="PrevenirON" id="pPrevenirON"/>
      <port component="SintomasON" id="pSintomasON"/>
      <port component="HemoON" id="pHemoON"/>
      <port component="FazerON" id="pFazerON"/>
      <port component="tituloDengue" id="pTitulo"/>

      <media descriptor="dColuna1_Botao1" src="UPA/ctDengue/PrevenirON.png" id="PrevenirON"/>
      <media descriptor="dColuna1_Botao1" src="UPA/ctDengue/PrevenirOFF.png" id="PrevenirOFF"/>
      <media descriptor="dColuna1_Botao2" src="UPA/ctDengue/SintomasON.png" id="SintomasON"/>
      <media descriptor="dColuna1_Botao2" src="UPA/ctDengue/SintomasOFF.png" id="SintomasOFF"/>
      <media descriptor="dColuna1_Botao3" src="UPA/ctDengue/HemoON.png" id="HemoON"/>
      <media descriptor="dColuna1_Botao3" src="UPA/ctDengue/HemoOFF.png" id="HemoOFF"/>
      <media descriptor="dColuna1_Botao4" src="UPA/ctDengue/FazerON.png" id="FazerON"/>
      <media descriptor="dColuna1_Botao4" src="UPA/ctDengue/FazerOFF.png" id="FazerOFF"/>

      <media descriptor="dTitulo" src="UPA/ctDengue/Titulo.png" id="tituloDengue"/>

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

      <link xconnector="onBeginStopNStartN" id="lPrevenirON">
        <bind role="onBegin" component="PrevenirON"/>
        <bind role="stop" component="PrevenirOFF"/>
        <bind role="start" component="SintomasOFF"/>
        <bind role="start" component="HemoOFF"/>
        <bind role="start" component="FazerOFF"/>
        <bind role="start" component="tPrevenir"/>
        <bind role="start" component="iPrevenir"/>
      </link>
      <link xconnector="onBeginStopNStartN" id="lSintomasON">
        <bind role="onBegin" component="SintomasON"/>
        <bind role="stop" component="SintomasOFF"/>
        <bind role="start" component="FazerOFF"/>
        <bind role="start" component="PrevenirOFF"/>
        <bind role="start" component="HemoOFF"/>
        <bind role="start" component="tSintomas"/>
        <bind role="start" component="iSintomas"/>
      </link>
      <link xconnector="onBeginStopNStartN" id="lFazerON">
        <bind role="onBegin" component="FazerON"/>
        <bind role="stop" component="FazerOFF"/>
        <bind role="start" component="PrevenirOFF"/>
        <bind role="start" component="SintomasOFF"/>
        <bind role="start" component="HemoOFF"/>
        <bind role="start" component="tFazer"/>
        <bind role="start" component="iFazer"/>
      </link>
      <link xconnector="onBeginStopNStartN" id="lHemoON">
        <bind role="onBegin" component="HemoON"/>
        <bind role="stop" component="HemoOFF"/>
        <bind role="start" component="PrevenirOFF"/>
        <bind role="start" component="SintomasOFF"/>
        <bind role="start" component="FazerOFF"/>
        <bind role="start" component="tHemo"/>
        <bind role="start" component="iHemo"/>
      </link>

      <!-- stop nos textos e icones -->
      <link xconnector="onEndAbortNStopN">
        <bind role="onEnd" component="PrevenirON"/>
        <bind role="stop" component="tPrevenir"/>
        <bind role="abort" component="iPrevenir"/>
        <bind role="abort" component="iPrevenir2"/>
        <bind role="abort" component="iPrevenir3"/>
        <bind role="abort" component="iPrevenir4"/>
        <bind role="abort" component="iPrevenir5"/>
      </link>
      <link xconnector="onEndStopN">
        <bind role="onEnd" component="SintomasON"/>
        <bind role="stop" component="tSintomas"/>
        <bind role="stop" component="iSintomas"/>
      </link>
      <link xconnector="onEndStopN">
        <bind role="onEnd" component="FazerON"/>
        <bind role="stop" component="tFazer"/>
        <bind role="stop" component="iFazer"/>
      </link>
      <link xconnector="onEndStopN">
        <bind role="onEnd" component="HemoON"/>
        <bind role="stop" component="tHemo"/>
        <bind role="stop" component="iHemo"/>
      </link>

      <!--  CURSOR_UP -->
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="PrevenirON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="PrevenirON"/>
        <bind role="start" component="FazerON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="SintomasON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="SintomasON"/>
        <bind role="start" component="PrevenirON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="HemoON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="HemoON"/>
        <bind role="start" component="SintomasON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="FazerON">
          <bindParam name="keyCode" value="CURSOR_UP"/>
        </bind>
        <bind role="stop" component="FazerON"/>
        <bind role="start" component="HemoON"/>
      </link>

      <!--  CURSOR_DOWN -->
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="PrevenirON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="PrevenirON"/>
        <bind role="start" component="SintomasON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="SintomasON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="SintomasON"/>
        <bind role="start" component="HemoON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="HemoON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="HemoON"/>
        <bind role="start" component="FazerON"/>
      </link>
      <link xconnector="onKeySelectionStopNStartN">
        <bind role="onSelection" component="FazerON">
          <bindParam name="keyCode" value="CURSOR_DOWN"/>
        </bind>
        <bind role="stop" component="FazerON"/>
        <bind role="start" component="PrevenirON"/>
      </link>

      <!-- slideshow do Prevenir -->
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iPrevenir"/>
        <bind role="start" component="iPrevenir2"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iPrevenir2"/>
        <bind role="start" component="iPrevenir3"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iPrevenir3"/>
        <bind role="start" component="iPrevenir4"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iPrevenir4"/>
        <bind role="start" component="iPrevenir5"/>
      </link>
      <link xconnector="onEndStart">
        <bind role="onEnd" component="iPrevenir5"/>
        <bind role="start" component="iPrevenir"/>
      </link>
    </context>

    <!--### Contexto Efeito ###-->
    <context id="ctEfeito">
      <port id="p1" component="tituloEfeito"/>
      <port id="p2" component="DengueON_2"/>
      <port id="p3" component="EmergenciaOFF_2"/>
      <port id="p4" component="SangueOFF_2"/>
      <port id="p5" component="tDengue_2"/>
      <port id="p6" component="iDengue_2"/>
      <media descriptor="dTitulo" src="UPA/ctPrincipal/Titulo.png" id="tituloEfeito"/>
      <media descriptor="dColuna1_Botao1" src="UPA/ctPrincipal/DengueON.png" id="DengueON_2"/>
      <media descriptor="dColuna1_Botao2" src="UPA/ctPrincipal/EmergenciaOFF.png" id="EmergenciaOFF_2"/>
      <media descriptor="dColuna1_Botao3" src="UPA/ctPrincipal/SangueOFF.png" id="SangueOFF_2"/>
      <media descriptor="dTexto" src="UPA/ctPrincipal/DengueTEXT.png" id="tDengue_2"/>
      <media descriptor="dIcone" src="UPA/ctPrincipal/DengueIMAGE.png" id="iDengue_2"/>

      <link xconnector="onEndStopN">
        <bind role="onEnd" component="tituloEfeito"/>
        <bind role="stop" component="DengueON_2"/>
        <bind role="stop" component="EmergenciaOFF_2"/>
        <bind role="stop" component="SangueOFF_2"/>
        <bind role="stop" component="tDengue_2"/>
        <bind role="stop" component="iDengue_2"/>
      </link>
    </context>
    
    <!-- Os links abaixo não estão funcionando. -->
    <!-- botao SAIR -->
    <link xconnector="onKeySelectionAbortN">
      <linkParam name="keyCode" value="INFO"/>
      <bind role="onSelection" component="ctPrincipal" interface="pTitulo"/>
      <bind role="abort" component="ctPrincipal"/>
    </link>
    <link xconnector="onKeySelectionAbortN">
      <linkParam name="keyCode" value="INFO"/>
      <bind role="onSelection" component="ctEmergencias" interface="pTitulo"/>
      <bind role="abort" component="ctEmergencias"/>
    </link>
    <link xconnector="onKeySelectionAbortN">
      <linkParam name="keyCode" value="INFO"/>
      <bind role="onSelection" component="ctUpa" interface="pTitulo"/>
      <bind role="abort" component="ctUpa"/>
    </link>
    <link xconnector="onKeySelectionAbortN">
      <linkParam name="keyCode" value="INFO"/>
      <bind role="onSelection" component="ctEspecialidades" interface="pTitulo"/>
      <bind role="abort" component="ctEspecialidades"/>
    </link>
    <link xconnector="onKeySelectionAbortN">
      <linkParam name="keyCode" value="INFO"/>
      <bind role="onSelection" component="ctUnidades" interface="pTitulo"/>
      <bind role="abort" component="ctUnidades"/>
    </link>
    <link xconnector="onKeySelectionAbortN">
      <linkParam name="keyCode" value="INFO"/>
      <bind role="onSelection" component="ctDengue" interface="pTitulo"/>
      <bind role="abort" component="ctDengue"/>
    </link>

    <!-- inicia a interatividade -->
    <link xconnector="onBeginStart">
      <bind role="onBegin" component="video" interface="aInterativo"/>
      <bind role="start" component="interativo"/>
    </link>

    <!-- loop da interatividade -->
    <link xconnector="onEndStart">
      <bind role="onEnd" component="interativo"/>
      <bind role="start" component="interativo"/>
    </link>
    <link xconnector="onEndAbort">
      <bind role="onEnd" component="video"/>
      <bind role="abort" component="interativo"/>
    </link>

    <!--ativa interatividade -->
    <link xconnector="onEndStartN">
      <bind role="onEnd" component="ctEfeito"/>
      <bind role="start" component="ctPrincipal" interface="pDengueON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>

    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="INFO"/>
      <bind role="onSelection" component="interativo"/>
      <bind role="abort" component="interativo"/>
      <bind role="start" component="ctEfeito"/>
    </link>

    <!-- <link xconnector="onKeySelectionAbortNStartN"> -->
    <!-- <linkParam name="keyCode" value="RED"/> -->
    <!-- <bind role="onSelection" component="interativo"/> -->
    <!-- <bind role="abort" component="interativo"/> -->
    <!-- <bind role="start" component="ctEfeito"/>              </link> -->
    <!-- <link xconnector="onKeySelectionAbortNStartN"> -->
    <!-- <linkParam name="keyCode" value="YELLOW"/> -->
    <!-- <bind role="onSelection" component="interativo"/> -->
    <!-- <bind role="abort" component="interativo"/> -->
    <!-- <bind role="start" component="ctEfeito"/>              </link> -->
    <!-- <link xconnector="onKeySelectionAbortNStartN"> -->
    <!-- <linkParam name="keyCode" value="GREEN"/> -->
    <!-- <bind role="onSelection" component="interativo"/> -->
    <!-- <bind role="abort" component="interativo"/> -->
    <!-- <bind role="start" component="ctEfeito"/>              </link> -->
    <!-- <link xconnector="onKeySelectionAbortNStartN"> -->
    <!-- <linkParam name="keyCode" value="BLUE"/> -->
    <!-- <bind role="onSelection" component="interativo"/> -->
    <!-- <bind role="abort" component="interativo"/> -->
    <!-- <bind role="start" component="ctEfeito"/>              </link> -->
    <!-- <link xconnector="onKeySelectionAbortNStartN"> -->
    <!-- <linkParam name="keyCode" value="CURSOR_LEFT"/> -->
    <!-- <bind role="onSelection" component="interativo"/> -->
    <!-- <bind role="abort" component="interativo"/> -->
    <!-- <bind role="start" component="ctEfeito"/>              </link> -->
    <!-- <link xconnector="onKeySelectionAbortNStartN"> -->
    <!-- <linkParam name="keyCode" value="CURSOR_RIGHT"/> -->
    <!-- <bind role="onSelection" component="interativo"/> -->
    <!-- <bind role="abort" component="interativo"/> -->
    <!-- <bind role="start" component="ctEfeito"/>              </link> -->
    <!-- <link xconnector="onKeySelectionAbortNStartN"> -->
    <!-- <linkParam name="keyCode" value="CURSOR_DOWN"/> -->
    <!-- <bind role="onSelection" component="interativo"/> -->
    <!-- <bind role="abort" component="interativo"/> -->
    <!-- <bind role="start" component="ctEfeito"/>              </link> -->
    <!-- <link xconnector="onKeySelectionAbortNStartN"> -->
    <!-- <linkParam name="keyCode" value="CURSOR_UP"/> -->
    <!-- <bind role="onSelection" component="interativo"/> -->
    <!-- <bind role="abort" component="interativo"/> -->
    <!-- <bind role="start" component="ctEfeito"/>              </link> -->

    <!-- DIREITA ou ENTER no Botao Emergencias -->
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_RIGHT"/>
      <bind role="onSelection" component="ctPrincipal" interface="pEmergenciaON"/>
      <bind role="abort" component="ctPrincipal"/>
      <bind role="start" component="ctEmergencias" interface="pSamuON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="ENTER"/>
      <bind role="onSelection" component="ctPrincipal" interface="pEmergenciaON"/>
      <bind role="abort" component="ctPrincipal"/>
      <bind role="start" component="ctEmergencias" interface="pSamuON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>

    <!-- DIREITA ou ENTER no Botao Dengue -->
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_RIGHT"/>
      <bind role="onSelection" component="ctPrincipal" interface="pDengueON"/>
      <bind role="abort" component="ctPrincipal"/>
      <bind role="start" component="ctDengue" interface="pPrevenirON"/>
      <bind role="start" component="ctDengue" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="ENTER"/>
      <bind role="onSelection" component="ctPrincipal" interface="pDengueON"/>
      <bind role="abort" component="ctPrincipal"/>
      <bind role="start" component="ctDengue" interface="pPrevenirON"/>
      <bind role="start" component="ctDengue" interface="pTitulo"/>
    </link>

    <!-- DIREITA no UPA -->
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_RIGHT"/>
      <bind role="onSelection" component="ctEmergencias" interface="pUpaON"/>
      <bind role="abort" component="ctEmergencias"/>
      <bind role="start" component="ctUpa" interface="pOqueON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="ENTER"/>
      <bind role="onSelection" component="ctEmergencias" interface="pUpaON"/>
      <bind role="abort" component="ctEmergencias"/>
      <bind role="start" component="ctUpa" interface="pOqueON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>

    <!-- DIREITA no Upa para Especialidades -->
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_RIGHT"/>
      <bind role="onSelection" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEspecialidades" interface="pGeralON"/>
      <bind role="start" component="ctEspecialidades" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="ENTER"/>
      <bind role="onSelection" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEspecialidades" interface="pGeralON"/>
      <bind role="start" component="ctEspecialidades" interface="pTitulo"/>
    </link>

    <!-- DIREITA no Upa para Unidades -->
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_RIGHT"/>
      <bind role="onSelection" component="ctUpa" interface="pUnidadesON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctUnidades" interface="pBanguON"/>
      <bind role="start" component="ctUnidades" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="ENTER"/>
      <bind role="onSelection" component="ctUpa" interface="pUnidadesON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctUnidades" interface="pBanguON"/>
      <bind role="start" component="ctUnidades" interface="pTitulo"/>
    </link>

    <!-- VOLTA no Emergencias -->
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctEmergencias" interface="pSamuON"/>
      <bind role="abort" component="ctEmergencias"/>
      <bind role="start" component="ctPrincipal" interface="pEmergenciaON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctEmergencias" interface="pUpaON"/>
      <bind role="abort" component="ctEmergencias"/>
      <bind role="start" component="ctPrincipal" interface="pEmergenciaON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>

    <!-- VOLTA com back Emergencias -->
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctEmergencias" interface="pSamuON"/>
      <bind role="abort" component="ctEmergencias"/>
      <bind role="start" component="ctPrincipal" interface="pEmergenciaON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctEmergencias" interface="pUpaON"/>
      <bind role="abort" component="ctEmergencias"/>
      <bind role="start" component="ctPrincipal" interface="pEmergenciaON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>

    <!-- VOLTA no Dengue -->
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctDengue" interface="pPrevenirON"/>
      <bind role="abort" component="ctDengue"/>
      <bind role="start" component="ctPrincipal" interface="pDengueON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctDengue" interface="pSintomasON"/>
      <bind role="abort" component="ctDengue"/>
      <bind role="start" component="ctPrincipal" interface="pDengueON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctDengue" interface="pHemoON"/>
      <bind role="abort" component="ctDengue"/>
      <bind role="start" component="ctPrincipal" interface="pDengueON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctDengue" interface="pFazerON"/>
      <bind role="abort" component="ctDengue"/>
      <bind role="start" component="ctPrincipal" interface="pDengueON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>

    <!-- VOLTA CoM BACK Dengue -->
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctDengue" interface="pPrevenirON"/>
      <bind role="abort" component="ctDengue"/>
      <bind role="start" component="ctPrincipal" interface="pDengueON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctDengue" interface="pSintomasON"/>
      <bind role="abort" component="ctDengue"/>
      <bind role="start" component="ctPrincipal" interface="pDengueON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctDengue" interface="pHemoON"/>
      <bind role="abort" component="ctDengue"/>
      <bind role="start" component="ctPrincipal" interface="pDengueON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctDengue" interface="pFazerON"/>
      <bind role="abort" component="ctDengue"/>
      <bind role="start" component="ctPrincipal" interface="pDengueON"/>
      <bind role="start" component="ctPrincipal" interface="pTitulo"/>
    </link>

    <!-- Volta no Upa -->
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUpa" interface="pOqueON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEmergencias" interface="pUpaON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUpa" interface="pFuncionaON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEmergencias" interface="pUpaON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEmergencias" interface="pUpaON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUpa" interface="pUnidadesON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEmergencias" interface="pUpaON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>

    <!-- Volta CoM BACK Upa -->
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUpa" interface="pOqueON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEmergencias" interface="pUpaON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUpa" interface="pFuncionaON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEmergencias" interface="pUpaON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEmergencias" interface="pUpaON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUpa" interface="pUnidadesON"/>
      <bind role="abort" component="ctUpa"/>
      <bind role="start" component="ctEmergencias" interface="pUpaON"/>
      <bind role="start" component="ctEmergencias" interface="pTitulo"/>
    </link>

    <!-- Volta no Especialidades para o Upa -->
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctEspecialidades" interface="pGeralON"/>
      <bind role="abort" component="ctEspecialidades"/>
      <bind role="start" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctEspecialidades" interface="pPediatriaON"/>
      <bind role="abort" component="ctEspecialidades"/>
      <bind role="start" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctEspecialidades" interface="pOrtopediaON"/>
      <bind role="abort" component="ctEspecialidades"/>
      <bind role="start" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctEspecialidades" interface="pOdontologiaON"/>
      <bind role="abort" component="ctEspecialidades"/>
      <bind role="start" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>

    <!-- Volta no Especialidades para o Upa COM BACK-->
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctEspecialidades" interface="pGeralON"/>
      <bind role="abort" component="ctEspecialidades"/>
      <bind role="start" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctEspecialidades" interface="pPediatriaON"/>
      <bind role="abort" component="ctEspecialidades"/>
      <bind role="start" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctEspecialidades" interface="pOrtopediaON"/>
      <bind role="abort" component="ctEspecialidades"/>
      <bind role="start" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctEspecialidades" interface="pOdontologiaON"/>
      <bind role="abort" component="ctEspecialidades"/>
      <bind role="start" component="ctUpa" interface="pEspecialidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>

    <!-- Volta no Unidades -->
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUnidades" interface="pBanguON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUnidades" interface="pCpoGrandeON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUnidades" interface="pIrajaON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUnidades" interface="pMareON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUnidades" interface="pStaCruzON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="CURSOR_LEFT"/>
      <bind role="onSelection" component="ctUnidades" interface="pBelfordON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>

    <!-- Volta no Unidades COM BACK -->
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUnidades" interface="pBanguON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUnidades" interface="pCpoGrandeON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUnidades" interface="pIrajaON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUnidades" interface="pMareON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUnidades" interface="pStaCruzON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
    <link xconnector="onKeySelectionAbortNStartN">
      <linkParam name="keyCode" value="BACK"/>
      <bind role="onSelection" component="ctUnidades" interface="pBelfordON"/>
      <bind role="abort" component="ctUnidades"/>
      <bind role="start" component="ctUpa" interface="pUnidadesON"/>
      <bind role="start" component="ctUpa" interface="pTitulo"/>
    </link>
  </body>
</ncl>
