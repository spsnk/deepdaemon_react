import React from "react";
import Modal from "react-bootstrap/Modal";
import Image from "react-bootstrap/Image";
import Spinner from "react-bootstrap/Spinner";
import Button from "react-bootstrap/Button";
import "./modal_member.css";

class Modal_member extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      error: null,
      isLoaded: false,
      showModal: false
    };
  }

  close() {
    this.setState({ showModal: false, isLoaded: false, error: null });
  }

  open(id) {
    this.setState({ showModal: true });
    fetch("//api.deepdaemon.org/members/" + id, {
      method: "GET"
    })
      .then(res => res.json())
      .then(
        result => {
          document.createElement("img").src =
            process.env.PUBLIC_URL +
            "/static/img/team/" +
            result.photo_filename;
          this.setState({
            isLoaded: true,
            member: result
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
    const { error, isLoaded, member } = this.state;
    if (!isLoaded) {
      return (
        <Modal
          centered
          size="lg"
          className="DeepModal loading"
          show={this.state.showModal}
          onHide={this.close.bind(this)}>
          <Modal.Header closeButton>
            <Modal.Title>
              <Spinner
                as="span"
                animation="grow"
                role="status"
                aria-hidden="true"
              />
              Loading...
            </Modal.Title>
          </Modal.Header>
          <Modal.Body>
            <Image
              roundedCircle
              src={require("../assets/img/user.png")}
              alt="user.png"
            />
            <Spinner
              as="span"
              animation="grow"
              role="status"
              aria-hidden="true"
            />
            Loading...
          </Modal.Body>
          <Modal.Footer>
            <Spinner
              as="span"
              animation="grow"
              role="status"
              aria-hidden="true"
            />
            Loading...
          </Modal.Footer>
        </Modal>
      );
    }
    if (error) {
      return (
        <Modal
          size="lg"
          centered
          className="DeepModal"
          show={this.state.showModal}
          onHide={this.close.bind(this)}>
          <Button variant="danger" disabled>
            Error: {error.message}
          </Button>
        </Modal>
      );
    } else {
      return (
        <Modal
          centered
          size="lg"
          className="DeepModal"
          show={this.state.showModal}
          onHide={this.close.bind(this)}>
          <Modal.Header closeButton>
            <Modal.Title>{member.name}</Modal.Title>
          </Modal.Header>
          <Modal.Body>
            <Image
              roundedCircle
              src={`${process.env.PUBLIC_URL}/static/img/team/${
                member.photo_filename
              }`}
              alt={member.photo_filename}
            />
            {member.short_desc}
          </Modal.Body>
          <Modal.Footer>
            <Spinner animation="grow" />
          </Modal.Footer>
        </Modal>
      );
    }
  }
}

export default Modal_member;
