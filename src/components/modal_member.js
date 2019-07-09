import React from 'react';
import Modal from 'react-bootstrap/Modal';
import Image from 'react-bootstrap/Image';
import Spinner from 'react-bootstrap/Spinner';
import Button from 'react-bootstrap/Button';


class Modal_member extends React.Component
{
  constructor(props)
  {
    super(props);
    this.state = {
      showModal: false,
      error: null,
      isLoaded: false,
      member_id: 21,
      member: {},
    };
  }

  close()
  {
    this.setState({ showModal: false });
  }

  open()
  {
    this.setState({ showModal: true });
  }

  componentDidUpdate()
  {
    fetch('//api.deepdaemon.org/members/' + this.state.member_id, {
      method: 'GET'
    })
      .then((res) => res.json())
      .then(
        (result) =>
        {
          this.setState({
            isLoaded: true,
            member: result
          });
        },
        // Note: it's important to handle errors here
        // instead of a catch() block so that we don't swallow
        // exceptions from actual bugs in components.
        (error) =>
        {
          this.setState({
            isLoaded: true,
            error
          });
        }
      );
  }
  render()
  {
    const { error, isLoaded, member } = this.state;
    if (error)
    {
      return null;
    }
    else if (!isLoaded)
    {
      return null;
    }
    else
    {
      return (
        <Modal show={this.state.showModal} onHide={this.close.bind(this)}>
          <Modal.Dialog>
            <Modal.Header closeButton>
              <Image style={{ width: "15rem" }}
                roundedCircle
                src={`${process.env.PUBLIC_URL}/static/img/team/${member.photo_filename}`}
                alt={member.photo_filename}
              />
              <Modal.Title>{member.name}</Modal.Title>
            </Modal.Header>
            <Modal.Body>{member.short_desc}</Modal.Body>
            <Modal.Footer>Footer</Modal.Footer>
          </Modal.Dialog>
        </Modal>
      );
    }
  }
}

export default Modal_member;
