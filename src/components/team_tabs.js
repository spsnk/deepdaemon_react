import React from 'react';
import { Tab, Row, Col, Nav } from 'react-bootstrap';
import Team from './team_card';

const TeamTabs = ({ teams }) => {
    return (
        <Tab.Container id="left-tabs-example" defaultActiveKey="curr">
            <Nav variant="pills" className="flex-row">
                <Nav.Item>
                    <Nav.Link eventKey="curr">
                        <h1>Las Promesas</h1>
                    </Nav.Link>
                </Nav.Item>
                <Nav.Item>
                    <Nav.Link eventKey="grad">
                        <h1>Los Egresados</h1>
                    </Nav.Link>
                </Nav.Item>
            </Nav>
            <hr />
            <Tab.Content>
                <Tab.Pane eventKey="curr">
                    <Team team={teams} sort />
                </Tab.Pane>
                <Tab.Pane eventKey="grad">
                    <Team team={teams} sort status="graduate" />
                </Tab.Pane>
            </Tab.Content>
        </Tab.Container>
    )
};

export default TeamTabs;
