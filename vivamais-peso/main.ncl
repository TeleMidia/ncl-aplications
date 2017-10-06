<?xml version="1.0" encoding="UTF-8"?>
<ncl id="luaExample" xmlns="http://www.telemidia.puc-rio.br/specs/xml/NCL23/profiles" 
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
     xsi:schemaLocation="http://www.telemidia.puc-rio.br/specs/xml/NCL23/profiles
     http://www.telemidia.puc-rio.br/specs/xml/NCL23/profiles/NCL23.xsd">

<head>
	<regionBase>
		<region id="rgVideo" width="100%"    height="100%"    top="0"     left="0"/>
		<region id="rgBox"   width="68.75%"  height="20.83%"  bottom="5%" left="15.6%" zIndex="1"/>
		<region id="rgLua"   width="64.75%"  height="16.85%"  bottom="7%" left="18%"   zIndex="2"/>
		<region id="rgInfo"  width="29.5%"   height="6.5%"    top="3.1%"  right="2.4%"/>
	</regionBase>

	<descriptorBase>
		<descriptor id="dsVideo" region="rgVideo"/>
		<descriptor id="dsBox"   region="rgBox">
			<descriptorParam name="transparency" value="70%"/>
		</descriptor>

		<descriptor id="dsLua"   region="rgLua" focusIndex="ixLua">
			<descriptorParam name="transparency" value="70%"/>
		</descriptor>
		<descriptor id="dsInfo"  region="rgInfo"/>
	</descriptorBase>

	<connectorBase>
		<causalConnector id="onBeginStart">
			<simpleCondition role="onBegin"/>
			<simpleAction role="start"/>
		</causalConnector>
		<causalConnector id="onBeginSet">
			<connectorParam name="var"/>
			<simpleCondition role="onBegin"/>
			<simpleAction role="set" value="$var"/>
		</causalConnector>
		<causalConnector id="onKeySelectionStartNStop">
			<connectorParam name="keyCode"/>
			<simpleCondition role="onSelection" key="$keyCode"/>
			<compoundAction operator="seq">
				<simpleAction role="start" max="unbounded"/>
				<simpleAction role="stop"/>
			</compoundAction>
		</causalConnector>
		<causalConnector id="onEndStopN">
			<simpleCondition role="onEnd"/>
			<simpleAction role="stop" max="unbounded"/>
		</causalConnector>
	</connectorBase>
</head>

<body>
	<port id="entryPort" component="video"/>

	<!-- MEDIAS -->

	<media type="application/x-ginga-settings" id="programSettings">
		<property name="service.currentKeyMaster"/>
	</media>

	<media id="video" src="Peso.mp4" descriptor="dsVideo">
		<area id="interact" begin="18s"/>
	</media>
	<media id="box"  src="3dbox.png"      descriptor="dsBox"/>
	<media id="lua"  src="peso.lua"       descriptor="dsLua"/>
	<media id="info" src="interativo.png" descriptor="dsInfo"/>

	<!-- LINKS -->

	<link xconnector="onBeginStart">
		<bind role="onBegin" component="video" interface="interact"/>
		<bind role="start"   component="info"/>
	</link>

	<link xconnector="onKeySelectionStartNStop">
		<bind role="onSelection" component="info">
			<bindParam name="keyCode" value="RED"/>
		</bind>
		<bind role="start" component="lua"/>
		<bind role="start" component="box"/>
		<bind role="stop"  component="info"/>
	</link>

	<link xconnector="onBeginSet">
		<bind role="onBegin" component="lua"/>
		<bind component="programSettings" interface="service.currentKeyMaster" role="set">
			<bindParam name="var" value="ixLua"/>
		</bind>
        </link>

	<link xconnector="onEndStopN">
		<bind role="onEnd" component="lua"/>
		<bind role="stop"  component="box"/>
	</link>

	<link xconnector="onEndStopN">
		<bind role="onEnd" component="video"/>
		<bind role="stop"  component="lua"/>
		<bind role="stop"  component="box"/>
	</link>

</body>
</ncl>

