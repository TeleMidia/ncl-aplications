<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="composerConnBase" xmlns="http://www.ncl.org.br/NCL3.0/CausalConnectorProfile"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xsi:schemaLocation="http://www.ncl.org.br/NCL3.0/CausalConnectorProfile
http://www.ncl.org.br/NCL3.0/profiles/NCL30CausalConnector.xsd">

<!-- A sintaxe dos nomes dos conectores causais segue a seguinte terminologia:
     * Primeiro sao definidas as condicoes (conditions), sempre precedidas do termo "on";
       - onBegin: ao comecar a exibicao da ancora;
       - onEnd: ao terminar a exibicao da ancora;
       - onMouseSelection: ao ser selecionada a ancora pelo mouse;
       - onKeySelection: ao ser selecionada a ancora por uma chave do teclado(ou controle remoto);
       - etc.
     * Em seguida sao definidas as avaliacoes (assessments), sempre seguidas do termo $ e depois Test, 
       onde $ eh nulo ou um numeral qualquer para identificar papeis com mesmos testes de avaliacao;
       - TrNomeDaTransicao$Test: para testes efetuados sobre valores de tempos de transicao;
       - AttState$Test: para testes efetuados sobre valores de estado dos eventos;
       - AttRepeat$Test: para testes efetuados sobre valores do atributo repeat de um evento. 
       - AttOccurences$Test: para testes efetuados sobre valores do atributo occurences de um evento. 
       - AttNode$Test: para testes efetuados sobre valores de atributos dos nos. 
     * Sobre os comparadores para teste, a menos que explicitamente comentado, eh assumido "eq".
     * Apos sao definidas as acoes (actions);
     * Condicoes, avaliacoes e acoes sao sempre seguidas de 1 ou N: 
       - 1 significa que apenas um ator pode exercer aquele papel; 
       - N significa que qualquer numero de atores pode exercer o papel.
     * Sobre os qualificadores (qualifiers), a menos que explicitamente comentado, eh assumido:
       - Nos papeis "condition" e "assessment" o valor eh "any";
       - Nos papeis "action" o valor eh "all".
     * Quando mais de uma acao eh especificada, elas sao aplicadas em sequencia, a menos quando 
       comentado o contrario;
     * Acoes precedidas por "Delay" devem esperar o retardo especificado para serem disparadas.
-->

<head>
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


<!-- A sintaxe dos nomes dos conectores de retricao segue a seguinte terminologia:
     * Em seguida sao definidas as avaliacoes (assessments), sempre seguidas do termo $ e depois Test, 
       onde $ eh um numeral qualquer para identificar papeis com mesmos testes de avaliacao;
       - TrNomeDaTransicao$Test: para testes efetuados sobre valores de tempos de transicao;
       - AttState$Test: para testes efetuados sobre valores de estado dos eventos;
       - AttRepeat$Test: para testes efetuados sobre valores do atributo repeat de um evento. 
       - AttOccurences$Test: para testes efetuados sobre valores do atributo occurences de um evento. 
       - AttNode$Test: para testes efetuados sobre valores de atributos dos nos. 
     * Avaliacoes sao sempre seguidas de 1 ou N: 
       - 1 significa que apenas um ator pode exercer aquele papel; 
       - N significa que qualquer numero de atores pode exercer o papel.
     * Sobre os qualificadores (qualifiers), a menos que explicitamente comentado, eh assumido o valor "all".
     * Sobre os comparadores para teste, a menos que explicitamente comentado, eh assumido "eq".
     * Expressoes compostas sao ligadas pelo conectivo & (operador AND) e | (operador OR)
-->


<!-- Conectores de Restricao 1 para 1 / comparador "eq" -->

<!--

<constraintConnector id="trStopsTest1trStartsTest1" >
   <assessmentRole id="trStopsTest" eventType="presentation">
      <eventStateTransitionAssessment transition="stops"/>
   </assessmentRole>
   <assessmentRole id="trStartsTest" eventType="presentation">
      <eventStateTransitionAssessment transition="starts"/>
   </assessmentRole>
   <constraintGlue>
      <assessmentStatement comparator="eq" firstAssessmentRole="trStopsTest" 
       secondAssessmentRole="trStartsTest"/>
   </constraintGlue>
</constraintConnector >

<constraintConnector id="trStarts1Test1trStarts2Test1" >
   <assessmentRole id="trStarts1Test" eventType="presentation">
      <eventStateTransitionAssessment transition="starts"/>
   </assessmentRole>
   <assessmentRole id="trStarts2Test" eventType="presentation">
      <eventStateTransitionAssessment transition="starts"/>
   </assessmentRole>
   <constraintGlue>
      <assessmentStatement comparator="eq" firstAssessmentRole="trStarts1Test" 
       secondAssessmentRole="trStarts2Test"/>
   </constraintGlue>
</constraintConnector >

<constraintConnector id="trStops1Test1trStops2Test1" >
   <assessmentRole id="trStops1Test" eventType="presentation">
      <eventStateTransitionAssessment transition="stops"/>
   </assessmentRole>
   <assessmentRole id="trStops2Test" eventType="presentation">
      <eventStateTransitionAssessment transition="stops"/>
   </assessmentRole>
   <constraintGlue>
      <assessmentStatement comparator="eq" firstAssessmentRole="trStops1Test" 
       secondAssessmentRole="trStops2Test"/>
   </constraintGlue>
</constraintConnector >

<constraintConnector id="trStarts1Test1trStarts2Test1_AND_trStops1Test1trStops2Test1">
   <assessmentRole id="trStarts1Test" eventType="presentation">
      <eventStateTransitionAssessment transition="starts"/>
   </assessmentRole>
   <assessmentRole id="trStops1Test" eventType="presentation">
      <eventStateTransitionAssessment transition="stops"/>
   </assessmentRole>
   <assessmentRole id="trStarts2Test" eventType="presentation">
      <eventStateTransitionAssessment transition="starts"/>
   </assessmentRole>
   <assessmentRole id="trStops2Test" eventType="presentation">
      <eventStateTransitionAssessment transition="stops"/>
   </assessmentRole>
   <constraintGlue>
      <compoundStatement operator="and">
         <assessmentStatement
          firstAssessmentRole="trStarts1Test" secondAssessmentRole="trStarts2Test" comparator="eq"/>
         <assessmentStatement
         firstAssessmentRole="trStops1Test" secondAssessmentRole="trStops2Test" comparator="eq"/>
      </compoundStatement>
   </constraintGlue>
</constraintConnector>

-->

<!-- Conectores de Restricao 1 para 1 / comparadores diferentes de "eq" -->

<!--

<constraintConnector id="trStopsTestLTtrStartsTest" >
   <assessmentRole id="trStopsTest" eventType="presentation">
      <eventStateTransitionAssessment transition="stops"/>
   </assessmentRole>
   <assessmentRole id="trStartsTest" eventType="presentation">
      <eventStateTransitionAssessment transition="starts"/>
   </assessmentRole>
   <constraintGlue>
      <assessmentStatement comparator="lt" firstAssessmentRole="trStopsTest" 
       secondAssessmentRole="trStartsTest"/>
   </constraintGlue>
</constraintConnector>

-->

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
</ncl>
