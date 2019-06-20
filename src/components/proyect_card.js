import React from 'react';
import Card from 'react-bootstrap/Card';
import Button from 'react-bootstrap/Button';
import Container from 'react-bootstrap/Container';

const Proyect_card = ({proyects}) => (  
    <Container className="projects_container">
        {
            proyects.map(proyect => (
                <Card style={{ width: '350px' }} key={proyect.key}>
                    <Card.Header>{proyect.name}</Card.Header>
                    <Card.Img variant="bottom" src={require(`../assets/img/projects/${proyect.front_img}`)} alt={proyect.front_img} />
                    <Card.Footer style={{marginTop: "-63px", textAlign: "right"}}>
                        <Button variant="primary">Ver más...</Button>
                    </Card.Footer>
                </Card>
                )
            )
        }
    </Container>
);
export default Proyect_card;