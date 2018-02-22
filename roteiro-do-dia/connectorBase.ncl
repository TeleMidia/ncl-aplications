<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Generated	by NCL Eclipse -->
<ncl id="connectorBase" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
		<connectorBase>
			<!-- onBegin -->
			<causalConnector id="onBeginStart">
				<simpleCondition max="unbounded" qualifier="and" role="onBegin"/>
				<simpleAction max="unbounded" qualifier="par" role="start"/>
			</causalConnector>
			<causalConnector id="onBeginStartDelay">
				<connectorParam name="delay"/>
				<simpleCondition role="onBegin"/>
        <simpleAction role="start" delay="$delay" max="unbounded" qualifier="par"/>
      </causalConnector>
      
      <!-- onEnd -->
			<causalConnector id="onEndStop">
				<simpleCondition max="unbounded" qualifier="and" role="onEnd"/>
				<simpleAction max="unbounded" qualifier="par" role="stop"/>
			</causalConnector>
			<causalConnector id="onEndStart">
				<simpleCondition max="unbounded" qualifier="and" role="onEnd"/>
				<simpleAction max="unbounded" qualifier="par" role="start"/>
			</causalConnector>
			<causalConnector id="onEndStopStart">
				<simpleCondition max="unbounded" qualifier="and" role="onEnd"/>
				<compoundAction operator="seq">
					<simpleAction max="unbounded" qualifier="par" role="stop"/>
					<simpleAction max="unbounded" qualifier="par" role="start"/>
				</compoundAction>
      </causalConnector>

      <causalConnector id="onEndVarStart1">
        <compoundCondition operator="and">
          <simpleCondition role="onEnd"/>
          <assessmentStatement comparator="eq">
            <attributeAssessment role="var" 
              attributeType="nodeProperty" eventType="attribution"/>
            <valueAssessment value="opt1"/>
          </assessmentStatement>
        </compoundCondition>
        <simpleAction role="start"/>
      </causalConnector>

      <causalConnector id="onEndVarStart2">
        <compoundCondition operator="and">
          <simpleCondition role="onEnd"/>
          <assessmentStatement comparator="eq">
            <attributeAssessment role="var" 
              attributeType="nodeProperty" eventType="attribution"/>
            <valueAssessment value="opt2"/>
          </assessmentStatement>
        </compoundCondition>
        <simpleAction role="start"/>
      </causalConnector>

			<!-- onSelection -->
			<causalConnector id="onSelectionStartStop">
				<simpleCondition role="onSelection"/>
				<compoundAction operator="par">
					<simpleAction max="unbounded" qualifier="par" role="start"/>
					<simpleAction max="unbounded" qualifier="par" role="stop"/>
				</compoundAction>
			</causalConnector>
			<causalConnector id="onSelectionPropertyTestStopSetStart">
				<connectorParam name="val"/>
				<!-- condition -->
				<compoundCondition operator="and">
					<simpleCondition role="onSelection"/>
					<assessmentStatement comparator="eq">
						<attributeAssessment attributeType="nodeProperty" eventType="attribution" role="propertyTest"/>
						<valueAssessment value="$val"/>
					</assessmentStatement>
				</compoundCondition>
				<!-- action -->
				<compoundAction operator="seq">
					<simpleAction max="unbounded" role="stop"/>
					<simpleAction max="unbounded" role="set" value="$val"/>
					<simpleAction max="unbounded" role="start"/>
				</compoundAction>
      </causalConnector>

			<causalConnector id="onSelectionStopSetWithDur">
				<connectorParam name="val"/>
				<connectorParam name="dur"/>
				<!-- condition -->
				<simpleCondition role="onSelection"/>
				<!-- action -->
				<compoundAction operator="par">
					<simpleAction max="unbounded" role="stop"/>
					<simpleAction duration="$dur" role="set" value="$val"/>
				</compoundAction>
      </causalConnector>

			<causalConnector id="onSelectionSetDur">
				<connectorParam name="var"/>
				<connectorParam name="dur"/>
				<connectorParam name="delay"/>
				<simpleCondition role="onSelection"/>
				<simpleAction duration="$dur" role="set" value="$var" delay="$delay"/>
			</causalConnector>
		</connectorBase>
	</head>
</ncl>
