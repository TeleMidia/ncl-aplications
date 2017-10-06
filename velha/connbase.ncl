<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- $Id: connbase.ncl,v 1.2 2009/01/14 17:06:04 root Exp $ -->
<!--
    connbase.ncl
    14jan2009, gflima@telemidia.puc-rio.br

    Base de conectores
  -->
<ncl id="connbase" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
  <head>
    <connectorBase>
      <!-- onBegin -->
      <causalConnector id="onBeginSet">
        <connectorParam name="val"/>
        <simpleCondition role="onBegin"/>
        <simpleAction role="set" value="$val" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <!-- onKeySelection -->
      <causalConnector id="onKeySelectionAbort">
        <connectorParam name="key"/>
        <compoundCondition operator="or">
          <simpleCondition role="onKeySelection" eventType="selection"
                           transition="starts" key="$key"/>
          <simpleCondition role="onSelection" key="$key" />
        </compoundCondition>
        <simpleAction role="abort" max="unbounded" qualifier="seq"/>
      </causalConnector>

      <causalConnector id="onKeySelectionPropertyTestStopSetStart">
        <connectorParam name="key"/>
        <connectorParam name="val"/>
        <!-- condition -->
        <compoundCondition operator="and">
          <simpleCondition role="onSelection" key="$key"/>
          <assessmentStatement comparator="eq">
            <attributeAssessment role="propertyTest"
                                 eventType="attribution"
                                 attributeType="nodeProperty"/>
            <valueAssessment value="$val"/>
          </assessmentStatement>
        </compoundCondition>
        <!-- action -->
	<compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="set" value="$val" max="unbounded" qualifier="seq"/>
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>

      <causalConnector id="onKeySelectionStopStart">
        <connectorParam name="key"/>
        <compoundCondition operator="or">
          <simpleCondition role="onKeySelection" eventType="selection"
                           transition="starts" key="$key"/>
          <simpleCondition role="onSelection" key="$key"/>
        </compoundCondition>
        <compoundAction operator="seq">
          <simpleAction role="stop" max="unbounded" qualifier="seq"/>
          <simpleAction role="start" max="unbounded" qualifier="seq"/>
        </compoundAction>
      </causalConnector>
    </connectorBase>
  </head>
</ncl>
