import React from 'react';
import Card from 'react-bootstrap/Card';
import CardDeck from 'react-bootstrap/CardDeck';
import Image from 'react-bootstrap/Image';
import './team_card.css';
class Team_card extends React.Component {
  static defaultProps = {
    status: 'current'
  };
  constructor(props) {
    super(props);
    this.state = {
      error: null,
      isLoaded: false,
      team: {}
    };
  }
  componentDidMount() {
    fetch('//api.deepdaemon.org/students/' + this.props.status, {
      method: 'GET'
    })
      .then((res) => res.json())
      .then(
        (result) => {
          this.setState({
            isLoaded: true,
            team: result
          });
        },
        // Note: it's important to handle errors here
        // instead of a catch() block so that we don't swallow
        // exceptions from actual bugs in components.
        (error) => {
          this.setState({
            isLoaded: true,
            error
          });
        }
      );
  }
  render() {
    const { error, isLoaded, team } = this.state;
    if (error) {
      return <div>Error: {error.message}</div>;
    } else if (!isLoaded) {
      return <div>Loading...</div>;
    } else {
      return (
        <CardDeck>
          {team.map((person) => {
            return (
              <Card key={person.id} className="team">
                <Image
                  roundedCircle
                  src={require(`../assets/img/team/small/${
                    person.photo_filename
                  }`)}
                  alt={person.photo_filename}
                />
                <Card.Header>
                  <Card.Title>{person.name}</Card.Title>
                  <Card.Text>
                    {
                      // person.from.map((item, key) => {
                      //        return (<span key={key}>{item}<br /></span>);
                      //    })
                    }
                    <a
                      href={person.linkedin}
                      target="_blank"
                      alt="linkedin"
                      rel="noopener noreferrer"
                    >
                      <span className="fab fa-linkedin" />
                    </a>
                    <a
                      href={person.email ? `mailto:${person.email}` : null}
                      target="_blank"
                      alt="email"
                      rel="noopener noreferrer"
                    >
                      <span className="fas fa-envelope" />
                    </a>
                  </Card.Text>
                </Card.Header>
                <Card.Body>{person.short_desc}</Card.Body>
              </Card>
            );
          })}
        </CardDeck>
      );
    }
  }
}

export default Team_card;
