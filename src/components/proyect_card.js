import React from 'react';
import Card from 'react-bootstrap/Card';
import Button from 'react-bootstrap/Button';
import Container from 'react-bootstrap/Container';

const Proyect_card = ({proyects}) => (  
    <Container className="projects_container">
        {
            proyects.map(proyect =>(
                <Card style={{ width: '18rem' }} key={proyect.key} >
                    <Card.Img variant="top" src={"assets/img/projects/"+proyect.front_img} alt={proyect.front_img} />
                    <Card.Body>
                        <Card.Title>{proyect.name}</Card.Title>
                        <Card.Text>
                            {proyect.short}
                        </Card.Text>
                        <Button variant="primary">Ver más...</Button>
                    </Card.Body>
                </Card>
            ))
        }
    </Container>
);

export default Proyect_card;