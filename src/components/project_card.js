import React from 'react';
import Card from 'react-bootstrap/Card';
import CardDeck from 'react-bootstrap/CardDeck';
import Button from 'react-bootstrap/Button';
import Spinner from 'react-bootstrap/Spinner';
import './project_card.css';

class Project_card extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      error: null,
      isLoaded: false,
      projects: {}
    };
  }
  componentDidMount() {
    fetch('//api.deepdaemon.org/projects/', { method: 'GET' })
      .then(res => res.json())
      .then(
        result => {
          this.setState({
            isLoaded: true,
            projects: result
          });
        },
        error => {
          this.setState({
            isLoaded: true,
            error
          });
        }
      );
  }
  render() {
    const { error, isLoaded, projects } = this.state;
    if (error) {
      return <div>Error: {error.message}</div>;
    } else if (!isLoaded) {
      return (<Button variant="primary" disabled>
        <Spinner
          as="span"
          animation="grow"
          size="sm"
          role="status"
          aria-hidden="true"
        />
        Loading...
        </Button>
      );
    } else {
      return (
        <CardDeck>
          {projects.map(project => (
            <Card key={project.id} className="project">
              <Card.Header>{project.name}</Card.Header>
              <Card.Img
                variant="bottom"
                src={project.front_img?`${process.env.PUBLIC_URL}/static/img/project/${project.front_img}`:require('../assets/img/placeholder.jpg')}
                alt={project.front_img}
              />
              <Card.Footer>
                <Button variant="primary">Ver más...</Button>
              </Card.Footer>
            </Card>
          ))}
        </CardDeck>
      );
    }
  }
}

export default Project_card;
