import React from "react";
import Card from "react-bootstrap/Card";
import CardDeck from "react-bootstrap/CardDeck";
import Button from "react-bootstrap/Button";
import Spinner from "react-bootstrap/Spinner";
import Accordion from "react-bootstrap/Accordion";
import "./project_card.css";

class Project_card extends React.Component {
  static defaultProps = {
    callback: text => alert(JSON.stringify(text))
  };
  handleclick(id) {
    this.props.callback(id);
  }
  constructor(props) {
    super(props);
    this.state = {
      error: null,
      isLoaded: false,
      projects: {}
    };
  }
  componentDidMount() {
    fetch("//api.deepdaemon.org/projects/"+ this.props.state, { method: "GET" })
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
      return (
        <Button variant="primary" disabled>
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
      if (projects.length > 0) {
        const media = (
          <Card.Img
            src={
              projects.front_img != null
                ? `${process.env.PUBLIC_URL}/static/media/project/${
                    projects.front_img
                  }`
                : require("../assets/img/join_team.png")
            }
            alt={
              projects.modal_media != null
                ? `${process.env.PUBLIC_URL}/static/media/project/${
                    projects.front_img
                  }`
                : require("../assets/img/placeholder.jpg")
            }
          />
        );
        return (
          <CardDeck>
            {projects.map(project => (
                <Card key={project.id} className="project">
                  <Card.Header>
                  {media}
                    <div className="projectTitle">
                    {project.name}
                    </div>
                    <Button
                          variant="primary"
                          onClick={() => this.handleclick(project.id)}>
                          Ver más...
                        </Button> 
                  </Card.Header>
                </Card>
            ))}
          </CardDeck>
        );
      } else {
        return (
          <h5>No hay proyectos</h5>
        );
      }
      
    }
  }
}

export default Project_card;
