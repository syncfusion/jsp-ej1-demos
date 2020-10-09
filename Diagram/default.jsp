<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<ej:diagram id="diagram1" width="800px" height="600px">
        <ej:diagram-pageSettings scrollLimit="diagram"></ej:diagram-pageSettings>
        <ej:diagram-nodes>
			<ej:diagram-node name="newIdea" offsetX="300" fillColor="#1BA0E2" borderColor="#1BA0E2" offsetY="60" width="150" 
                height="60" type="flow" shape="terminator">
                <ej:diagram-node-labels>
                    <ej:diagram-node-label text="New idea identified" fontColor="white">
                    </ej:diagram-node-label>
                </ej:diagram-node-labels>
            </ej:diagram-node>
            <ej:diagram-node name="meeting" offsetX="300" offsetY="155" fillColor="#1BA0E2" borderColor="#1BA0E2" width="150" 
                height="60" type="flow" shape="process">
                <ej:diagram-node-labels>
                    <ej:diagram-node-label text="Meeting with board" fontColor="white">
                    </ej:diagram-node-label>
                </ej:diagram-node-labels>
            </ej:diagram-node>
            <ej:diagram-node name="boardDecision" offsetX="300" offsetY="280" fillColor="#1BA0E2" borderColor="#1BA0E2" width="150" 
                height="110" type="flow" shape="decision">
                <ej:diagram-node-labels>
                    <ej:diagram-node-label text="Board decides \nwhether \nto proceed" fontColor="white">
                    </ej:diagram-node-label>
                </ej:diagram-node-labels>
            </ej:diagram-node>
            <ej:diagram-node name="project" offsetX="300" offsetY="430" fillColor="#1BA0E2" borderColor="#1BA0E2" width="150" 
                height="100" type="flow" shape="decision">
                <ej:diagram-node-labels>
                    <ej:diagram-node-label text="Find Project \nmanager" fontColor="white">
                    </ej:diagram-node-label>
                </ej:diagram-node-labels>
            </ej:diagram-node>
            <ej:diagram-node name="end" offsetX="300" offsetY="555" fillColor="#1BA0E2" borderColor="#1BA0E2" width="150" 
                height="60" type="flow" shape="process">
                <ej:diagram-node-labels>
                    <ej:diagram-node-label text="Implement and Deliver" fontColor="white">
                    </ej:diagram-node-label>
                </ej:diagram-node-labels>
            </ej:diagram-node>
            <ej:diagram-node name="decision" offsetX="550" offsetY="60" fillColor="#858585" borderColor="#858585" width="250" 
                height="60" type="flow" shape="card">
                <ej:diagram-node-labels>
                    <ej:diagram-node-label text="Decision Process for new software ideas" fontColor="white">
                    </ej:diagram-node-label>
                </ej:diagram-node-labels>
            </ej:diagram-node>
            <ej:diagram-node name="reject" offsetX="550" offsetY="285" fillColor="#1BA0E2" borderColor="#1BA0E2" width="150" 
                height="60" type="flow" shape="process">
                <ej:diagram-node-labels>
                    <ej:diagram-node-label text="Reject and write report" fontColor="white">
                    </ej:diagram-node-label>
                </ej:diagram-node-labels>
            </ej:diagram-node>
            <ej:diagram-node name="resources" offsetX="550" offsetY="430" fillColor="#1BA0E2" borderColor="#1BA0E2" width="150" 
                height="60" type="flow" shape="process">
                <ej:diagram-node-labels>
                    <ej:diagram-node-label text="Hire new resources" fontColor="white">
                    </ej:diagram-node-label>
                </ej:diagram-node-labels>
            </ej:diagram-node>
        </ej:diagram-nodes>
        <ej:diagram-connectors>
            <ej:diagram-connector name="connector1" sourceNode="newIdea" targetNode="meeting"></ej:diagram-connector>
            <ej:diagram-connector name="connector2" sourceNode="meeting" targetNode="boardDecision"></ej:diagram-connector>
            <ej:diagram-connector name="connector3" sourceNode="boardDecision" targetNode="project">
            	<ej:diagram-connector-labels>
                    <ej:diagram-connector-label text="Yes" fillColor="white">
                    </ej:diagram-connector-label>
                </ej:diagram-connector-labels>
            </ej:diagram-connector>
            <ej:diagram-connector name="connector4" sourceNode="project" targetNode="end">
            	<ej:diagram-connector-labels>
                    <ej:diagram-connector-label text="Yes" fillColor="white">
                    </ej:diagram-connector-label>
                </ej:diagram-connector-labels>
            </ej:diagram-connector>
            <ej:diagram-connector name="connector5" sourceNode="boardDecision" targetNode="reject">
            	<ej:diagram-connector-labels>
                    <ej:diagram-connector-label text="No" fillColor="white">
                    </ej:diagram-connector-label>
                </ej:diagram-connector-labels>
            </ej:diagram-connector>
            <ej:diagram-connector name="connector6" sourceNode="project" targetNode="resources">
            	<ej:diagram-connector-labels>
                    <ej:diagram-connector-label text="No" fillColor="white">
                    </ej:diagram-connector-label>
                </ej:diagram-connector-labels>
            </ej:diagram-connector>
        </ej:diagram-connectors>
	</ej:diagram>
</div>
