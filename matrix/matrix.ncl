<ncl id="matrix" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
  <head>
    <regionBase>
      <region id="backgroundRegion" width="100%" height="100%">
        <region id="fullScreenRegion" top="0" left="0" width="100%" height="100%" zIndex="1"/>
        <region id="pubRegion01" bottom="0%" right="0%" width="28%" height="28%" zIndex="8"/>
        <region id="pubRegion02" top="55%" left="5%" width="41.25%" height="38.3%" zIndex="3"/>
        <region id="glassesIconRegion" top="21%" left="24.4%" width="5%" height="6.66%" zIndex="2"/>
        <region id="formRegion" top="7%" left="53.75%" width="41.25%" height="87%" zIndex="3"/>
        <region id="logoTVRegion" bottom="0" right="0" width="12.5%" height="16.66%" zIndex="5"/>
        <region id="interativoRegion" top="21%" left="22.5%" width="9%" height="6.66%" zIndex="3"/>
        <region id="fundoMatrixRegion" top="0%" left="0%" width="100%" height="100%" zIndex="0"/>
      </region>
    </regionBase>

    <transitionBase>
      <transition id="rightToLeft" type="barWipe" subtype="leftToRight" direction="reverse" dur="0.5s"/>
      <transition id="leftToRight" type="barWipe" subtype="leftToRight" dur="1s"/>
      <transition id="topToBottom" type="barWipe" subtype="topToBottom" dur="0.5s"/>
      <transition id="bottomUp" type="barWipe" subtype="topToBottom" direction="reverse" dur="1s"/>
      <transition id="bottomUpPilha" type="barWipe" subtype="topToBottom" direction="reverse" dur="0.5s"/>
      <transition id="fadeTransition" type="fade" dur="1s"/>
      <transition id="fadeTransitionReverse" type="fade" dur="1s"/>
    </transitionBase>

    <descriptorBase>
      <descriptor id="matrixDesc" region="fullScreenRegion" transIn="fadeTransition" transOut="fadeTransitionReverse">
        <descriptorParam name="soundLevel" value="1"/>
        <descriptorParam name="controlVisible" value="false"/>
      </descriptor>

      <descriptor id="pubDesc01" region="pubRegion01" transIn="fadeTransition" transOut="fadeTransition">
        <descriptorParam name="transparency" value="0.1"/>
        <descriptorParam name="soundLevel" value="1"/>
        <descriptorParam name="controlVisible" value="false"/>
        <descriptorParam name="transitionIn" value="stretch"/>
      </descriptor>

      <descriptor id="pubDesc02" region="pubRegion02">
        <descriptorParam name="soundLevel" value="0.8"/>
        <descriptorParam name="controlVisible" value="false"/>
      </descriptor>

      <descriptor id="glassesIconDesc" region="glassesIconRegion" focusBorderWidth="0" focusIndex="1">
        <descriptorParam name="transparency" value="0.25"/>
        <descriptorParam name="controlVisible" value="false"/>
      </descriptor>

      <descriptor id="formDesc" region="formRegion" explicitDur="10s" focusIndex="0"
                  moveLeft="0" moveRight="0">
        <descriptorParam name="scroll" value="never"/>
      </descriptor>

      <descriptor id="logoTVDesc" region="logoTVRegion" >
        <descriptorParam name="transparency" value="0.5"/>
      </descriptor>

      <descriptor id="interativoDesc" region="interativoRegion" transIn="bottomUp" transOut="topToBottom">
        <descriptorParam name="transparency" value="0.2"/>
        <descriptorParam name="chromakey" value="black"/>
      </descriptor>

      <descriptor id="dsFundoMatrix" region="fundoMatrixRegion"/>

    </descriptorBase>

    <connectorBase>
      <importBase alias="connBase" documentURI="matrixEstresse30.conn"/>
	  <causalConnector id="onBeginStart">
		<simpleCondition role="onBegin" max="unbounded"/>
		<simpleAction role="start" max="unbounded"/>
	  </causalConnector>
	  
	  <causalConnector id="onEndStop">
		<simpleCondition role="onEnd" max="unbounded"/>
		<simpleAction role="stop" max="unbounded"/>
	  </causalConnector>
    </connectorBase>

  </head>

  <body>
    <port id="matrixEntryPort" component="matrix01"/>
    <media id="interativo" descriptor="interativoDesc" src="media/animation2.mpg"/>
    <media id="logoTV" descriptor="logoTVDesc" src="media/logotm.png"/>

    <media id="matrix01" descriptor="matrixDesc" src="media/matrix3ws.mp4">
      <area id="anchorBattery" begin="17s" end="18s"/>
      <area id="anchorGlasses" begin="27s" end="31.5s"/>
      <property name="bounds"/>
    </media>

    <media id="battery01" descriptor="pubDesc01" src="media/battery_mpeg2.mpg"/>
    <media id="glassesIcon" descriptor="glassesIconDesc" src="media/interactiveYellow.png"/>
    <media id="glasses" descriptor="pubDesc02" src="media/glasses_mpeg2.mpg">
      <area id="aPause" begin="6s" end="8s"/>
      <property name="prop" value="0"/>
    </media>
    <media id="ptForm" descriptor="formDesc" src="media/compraOticas.htm"/>

    <media id="fundoMatrix" descriptor="dsFundoMatrix" src="media/matrix_bg_oticas.jpg"/>

    <link id="tviLink00a" xconnector="onBeginStart">
      <bind component="matrix01" role="onBegin"/>
      <bind component="logoTV" role="start"/>
    </link>

    <link id="tviLink01a" xconnector="onBeginStart">
      <bind component="matrix01" interface="anchorBattery" role="onBegin"/>
      <bind component="battery01" role="start"/>
    </link>

    <link id="tviLink02a" xconnector="onBeginStart">
      <bind component="matrix01" interface="anchorGlasses" role="onBegin"/>
      <bind component="glassesIcon" role="start"/>
    </link>

    <link id="tviLink03a" xconnector="onEndStop">
      <bind component="matrix01" interface="anchorGlasses" role="onEnd"/>
      <bind component="glassesIcon" role="stop"/>
    </link>

    <link id="tviLink04a" xconnector="connBase#orOnSelectionSetStopPauseStart">
      <bind component="glassesIcon" role="onKeySelection">
        <bindParam name="keyCode" value="YELLOW"/>
      </bind>
      <bind component="glassesIcon" role="onSelection"/>
      <bind component="matrix01" interface="bounds" role="set">
        <bindParam name="bounds" value="5%, 6.667%, 41.25%, 38.33%"/>
      </bind>
      <bind component="glassesIcon" role="stop"/>
      <bind component="logoTV" role="stop"/>
      <bind component="matrix01" role="pause"/>
      <bind component="glasses" role="start"/>
      <bind component="fundoMatrix" role="start"/>
    </link>

    <link id="tviLink04b" xconnector="onBeginStart">
      <bind component="fundoMatrix" role="onBegin"/>
      <bind component="ptForm" role="start"/>
    </link>

    <link id="tviLink06a" xconnector="connBase#onEndStopStartSetResume">
      <bind component="ptForm" role="onEnd"/>
      <bind component="fundoMatrix" role="stop"/>
      <bind component="glasses" role="stop"/>
      <bind component="logoTV" role="start"/>
      <bind component="matrix01" interface="bounds" role="set">
        <bindParam name="bounds" value="0%, 0%, 402.83%, 499.08%"/>
      </bind>
      <bind component="matrix01" role="resume"/>
    </link>

    <link id="tvlink07b" xconnector="connBase#onEndStopStartSetResume">
      <bind component="glasses" role="onEnd"/>
      <bind component="fundoMatrix" role="stop"/>
      <bind component="ptForm" role="stop"/>
      <bind component="logoTV" role="start"/>
      <bind component="matrix01" interface="bounds" role="set">
	<bindParam name="bounds" value="0%, 0%, 402.83%, 499.08%"/>
      </bind>
      <bind component="matrix01" role="resume"/>
    </link>

    <link id="tviLink06c" xconnector="onEndStop">
      <bind component="matrix01" role="onEnd"/>
      <bind component="logoTV" role="stop"/>
    </link>
  </body>
</ncl>
