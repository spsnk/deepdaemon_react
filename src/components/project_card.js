import React from 'react';
import Card from 'react-bootstrap/Card';
import Button from 'react-bootstrap/Button';
import './project_card.css';

const Project_card = ({projects}) => (  
    <>
        {
            Object.keys(projects).map(key => (
                <Card key={key} className="project">
                    <Card.Header>
                        {projects[key].name}
                    </Card.Header>
                    <Card.Img variant="bottom" src={require(`../assets/img/projects/${projects[key].front_img}`)} alt={projects[key].front_img} />
                    <Card.Footer>
                        <Button variant="primary">Ver más...</Button>
                    </Card.Footer>
                </Card>
                )
            )
        }
    </>
);
export default Project_card;