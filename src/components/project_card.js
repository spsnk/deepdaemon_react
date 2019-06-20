import React from 'react';
import Card from 'react-bootstrap/Card';
import CardColumns from 'react-bootstrap/CardColumns'
import Button from 'react-bootstrap/Button';
import './project_card.css';

const Project_card = ({projects}) => (  
    <CardColumns>
        {
            projects.map(project => (
                <Card key={project.key}>
                    <Card.Header>{project.name}</Card.Header>
                    <Card.Img variant="bottom" src={require(`../assets/img/projects/${project.front_img}`)} alt={project.front_img} />
                    <Card.Footer>
                        <Button variant="primary">Ver más...</Button>
                    </Card.Footer>
                </Card>
                )
            )
        }
    </CardColumns>
);
export default Project_card;