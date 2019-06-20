import React, { Component } from 'react';
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row'

class Section extends Component {
    box = ["section"];
    constructor (props) {
        super(props);
        this.box.push(this.props.className);
    }
    render() {
      return (
        <Container className={this.box.join(' ')} id={this.props.id}>
            {this.props.children}
        </Container>
      );
    }
  };

export default Section;