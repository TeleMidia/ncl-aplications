<?xml version="1.0" encoding="UTF-8"?>
<ncl id="formula1" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile" >
  <head>
    <connectorBase>
      <causalConnector id="onBeginStart">
	      <simpleCondition role="onBegin"/>
	      <simpleAction role="start" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onEndStart">
	      <simpleCondition role="onEnd"/>
      	<simpleAction role="start" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onEndStop">
      	<simpleCondition role="onEnd"/>
      	<simpleAction role="stop" max="unbounded" qualifier="par"/>
      </causalConnector>

      <causalConnector id="onEndAbort">
      	<simpleCondition role="onEnd"/>
      	<simpleAction role="abort" max="unbounded" qualifier="par"/>
      </causalConnector>

      <causalConnector id="onKeySelectionStopStart">
      	<connectorParam name="keyCode" />
      	<simpleCondition role="onSelection" key="$keyCode" max="unbounded" qualifier="or"/>
      	<compoundAction operator="seq">
      	  <simpleAction role="stop" max="unbounded" qualifier="seq"/>
      	  <simpleAction role="start" max="unbounded" qualifier="seq"/>
      	</compoundAction>
      </causalConnector>

      <causalConnector id="onSelectionStop">
      	<simpleCondition role="onSelection"/>
      	<simpleAction role="stop" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onKeySelectionStop">
      	<connectorParam name="keyCode" />
      	<simpleCondition role="onSelection" key="$keyCode" max="unbounded" qualifier="or"/>
      	<simpleAction role="stop" max="unbounded" qualifier="seq"/>
      </causalConnector>
    </connectorBase>

    <regionBase>
      <!-- <region left="0" top="0" zIndex="0" width="720" height="576" id="rgScreen"> -->
       <region left="0" top="0" zIndex="0" width="100%" height="100%" id="rgScreen">
  	    <region height="100%" width="100%" id="fullScreen" zIndex="0"/>
	      <region zIndex="2" left="8%" bottom="6.6667%" width="15%" height="16.6667%" id="rgBtInteratividade"/>
	      <region zIndex="3" left="31%" bottom="6.6667%" width="15%" height="16.6667%" id="rgBotao1"/>
	      <region zIndex="3" left="54%" bottom="6.6667%" width="15%" height="16.6667%" id="rgBotao2"/>
  	    <region zIndex="3" left="77%" bottom="6.6667%" width="15%" height="16.6667%" id="rgBotao3"/>
	      <region right="1.25%" bottom="1.6667%" width="50%" height="41%" id="rgInfo"/>
        <region right="12.5%" bottom="0%" width="75%" height="33.3333%" id="rgTempo"/>
        <region right="13.625%" bottom="0%" width="72.875%" height="41.5%" id="rgClassi"/>
      </region>
    </regionBase>
    <descriptorBase>
      <descriptor region="fullScreen" id="desc_fullScreen"/>
      <descriptor region="rgBtInteratividade" id="btInteratividade_Descriptor"/>
      <descriptor region="rgBotao1" id="btClassi_Descriptor"/>
      <descriptor region="rgBotao2" id="btPista_Descriptor"/>
      <descriptor region="rgBotao3" id="btTempo_Descriptor"/>
      <descriptor region="rgBotao2" id="btClassiC_Descriptor"/>
      <descriptor region="rgBotao3" id="btClassiP_Descriptor"/>
      <descriptor region="rgInfo" id="pista_Descriptor" explicitDur="10s" focusIndex="0" focusBorderWidth="0"/>
      <descriptor region="rgClassi" id="classiC_Descriptor" explicitDur="10s" focusIndex="0" focusBorderWidth="0">
        <descriptorParam name="transparency" value="25%"/>
      </descriptor>
      <descriptor region="rgClassi" id="classipg_Descriptor" explicitDur="10s" focusIndex="0" focusBorderWidth="0">
        <descriptorParam name="transparency" value="25%"/>
      </descriptor>
      <descriptor region="rgTempo" id="tempo_Descriptor" explicitDur="10s" focusIndex="0" focusBorderWidth="0">
        <descriptorParam name="transparency" value="25%"/>
      </descriptor>
    </descriptorBase>
  </head>
  <body>
    <port id="entrada" component="btInteratividade"/>

    <port id="videoextra" component="videoFormula1"/>
    <media descriptor="desc_fullScreen" src="media/f1.mov" id="videoFormula1" />

    <media descriptor="btInteratividade_Descriptor" src="media/interatividade.gif" id="btInteratividade"/>
    <media descriptor="btClassi_Descriptor" src="media/classi.gif" id="btClassi"/>
    <media descriptor="btPista_Descriptor" src="media/pista.gif" id="btPista"/>
    <media descriptor="btTempo_Descriptor" src="media/piloto.gif" id="btTempo"/>
    <media descriptor="btClassiC_Descriptor" src="media/classic.gif" id="btClassiC"/>
    <media descriptor="btClassiP_Descriptor" src="media/classip.gif" id="btClassiP"/>
    <media descriptor="pista_Descriptor" src="media/interlagos.png" id="pista"/>
    <media descriptor="tempo_Descriptor" src="media/capacetes.png" id="tempo"/>
    <media descriptor="classiC_Descriptor" src="media/cequipes.png" id="classiC"/>
    <media descriptor="classipg_Descriptor" src="media/cpilotos.png" id="classiP"/>

    <!-- menu interatividade -->
    <link xconnector="onKeySelectionStopStart">
      <bind component="btInteratividade" role="onSelection">
      	<bindParam name="keyCode" value="RED"/>
      </bind>
      <bind component="btInteratividade" role="stop"/>
      <bind component="btClassi" role="start"/>
      <bind component="btPista" role="start"/>
      <bind component="btTempo" role="start"/>
    </link>

    <!-- menu principal -->
    <link xconnector="onKeySelectionStopStart">
      <bind component="btClassi" role="onSelection">
      	<bindParam name="keyCode" value="GREEN"/>
      </bind>
      <bind component="btClassi" role="stop"/>
      <bind component="btPista" role="stop"/>
      <bind component="btTempo" role="stop"/>
      <bind component="btClassiC" role="start"/>
      <bind component="btClassiP" role="start"/>
    </link>

    <link xconnector="onKeySelectionStopStart">
      <bind component="btPista" role="onSelection">
      	<bindParam name="keyCode" value="YELLOW"/>
      </bind>
      <bind component="btClassi" role="stop"/>
      <bind component="btPista" role="stop"/>
      <bind component="btTempo" role="stop"/>
      <bind component="pista" role="start"/>
    </link>

    <link xconnector="onKeySelectionStopStart">
      <bind component="btTempo" role="onSelection">
      	<bindParam name="keyCode" value="BLUE"/>
      </bind>
      <bind component="btClassi" role="stop"/>
      <bind component="btPista" role="stop"/>
      <bind component="btTempo" role="stop"/>
      <bind component="tempo" role="start"/>
    </link>

    <!-- menu secundario de classificacao -->
    <link xconnector="onKeySelectionStopStart">
      <bind component="btClassiC" role="onSelection">
      	<bindParam name="keyCode" value="YELLOW"/>
      </bind>
      <bind component="btClassiC" role="stop"/>
      <bind component="btClassiP" role="stop"/>
      <bind component="classiC" role="start"/>
    </link>

    <link xconnector="onKeySelectionStopStart">
      <bind component="btClassiP" role="onSelection">
      	<bindParam name="keyCode" value="BLUE"/>
      </bind>
      <bind component="btClassiC" role="stop"/>
      <bind component="btClassiP" role="stop"/>
      <bind component="classiP" role="start"/>
    </link>

    <!-- voltando das informacoes com OK -->
    <link xconnector="onSelectionStop">
      <bind component="pista" role="onSelection"/>
      <bind component="pista" role="stop"/>
    </link>

    <link xconnector="onSelectionStop">
      <bind component="tempo" role="onSelection"/>
      <bind component="tempo" role="stop"/>
    </link>

    <link xconnector="onSelectionStop">
      <bind component="classiC" role="onSelection"/>
      <bind component="classiC" role="stop"/>
    </link>

    <link xconnector="onSelectionStop">
      <bind component="classiP" role="onSelection"/>
      <bind component="classiP" role="stop"/>
    </link>

    <link xconnector="onEndStart">
      <bind component="pista" role="onEnd"/>
      <bind component="btInteratividade" role="start"/>
    </link>

    <link xconnector="onEndStart">
      <bind component="tempo" role="onEnd"/>
      <bind component="btInteratividade" role="start"/>
    </link>

    <link xconnector="onEndStart">
      <bind component="classiC" role="onEnd"/>
      <bind component="btInteratividade" role="start"/>
    </link>

    <link xconnector="onEndStart">
      <bind component="classiP" role="onEnd"/>
      <bind component="btInteratividade" role="start"/>
    </link>

    <link xconnector="onEndAbort">
      <bind component="videoFormula1" role="onEnd"/>
      <bind component="btInteratividade" role="abort"/>
      <bind component="btClassi" role="abort"/>
      <bind component="btPista" role="abort"/>
      <bind component="btTempo" role="abort"/>
      <bind component="btClassiC" role="abort"/>
      <bind component="btClassiP" role="abort"/>
      <bind component="pista" role="abort"/>
      <bind component="tempo" role="abort"/>
      <bind component="classiC" role="abort"/>
      <bind component="classiP" role="abort"/>
    </link>
  </body>
</ncl>
