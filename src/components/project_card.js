import React from 'react';
import Card from 'react-bootstrap/Card';
import CardDeck from 'react-bootstrap/CardDeck';
import Button from 'react-bootstrap/Button';
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
    fetch('//api.deepdaemon.org/project/read')
      .then((res) => res.json())
      .then(
        (result) => {
          this.setState({
            isLoaded: true,
            projects: result
          });
        },
        (error) => {
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
      return <div>Loading...</div>;
    } else {
      return (
        <CardDeck>
          {projects.map((project) => (
            <Card key={project.id} className="project">
              <Card.Header>{project.name}</Card.Header>
              <Card.Img
                variant="bottom"
                src={require(`../assets/img/projects/${project.front_img}`)}
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
