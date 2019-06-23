import React from 'react';
import Card from 'react-bootstrap/Card';
import Image from 'react-bootstrap/Image'
import './team_card.css';

function Team_card ({team,sort=false,status="V"}) {
    let sorted = Object.keys(team);
    if (sort) {
        sorted.sort();
    }
    return (
        <>
            {
                sorted.map(key => {
                    if (team[key].status!==status)
                    return (null);
                    else
                    return (<Card key={key} className="team">
                        <Image className="" roundedCircle src={require(`../assets/img/team/small/${team[key].photo}`)} alt={team[key].photo} />
                        <Card.Header>
                            <Card.Title>{team[key].name}</Card.Title>
                            <Card.Text>
                                {team[key].from} <br />
                                <a href={team[key].linkedin} target="_blank" alt="linkedin" rel="noopener noreferrer">
                                    <span className="fab fa-linkedin" />
                                </a>
                                <a href={"mailto:" + team[key].email} target="_blank" alt="email" rel="noopener noreferrer">
                                    <span className="fas fa-envelope" />
                                </a>
                            </Card.Text>
                        </Card.Header>
                        <Card.Body>{team[key].flavor}</Card.Body>
                    </Card>);
                })
            }
        </>
    )
};

export default Team_card;