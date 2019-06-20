import React from 'react';
import Container from 'react-bootstrap/Container';
import Col from 'react-bootstrap/Col';
import Row from 'react-bootstrap/Row';
import Image from 'react-bootstrap/Image'
import Button from 'react-bootstrap/Button';
import CardDeck from 'react-bootstrap/CardDeck';
import CardGroup from 'react-bootstrap/CardGroup';
import CardColumns from 'react-bootstrap/CardColumns';

import logo from './assets/img/logo.png';
import join from './assets/img/join_team.png';
import 'bootstrap/dist/css/bootstrap.css';
import './assets/icomoon/icomoon.css'; //https://icomoon.io/#preview-free

import './DeepDaemon.css';
import Navbar from './components/navbar';
import Projects from './components/project_card';
import Team from './components/team_card';

import projects_data from './data/projects.json';
import leader_data from './data/leaders.json';
import team_data from './data/team.json';

function DeepDaemon() {
  return (
    <div className="DeepDaemon" id="home">
      <Navbar/>
      <header className="dd_header">
        <img src={logo} className="ddlogo" alt="logo" />
        <h1>
          DeepDaemon
        </h1>
        <hr></hr>
        <h2>
          Comunidad de conocimiento
        </h2>
      </header>
      <Container className="section" id="about">
        <h1>Un poco sobre nosotros</h1>
        <hr/>
        <p>Somos un grupo de trabajo que busca vincular el desarrollo científico con el desarrollo 
          de soluciones industriales para generar tecnología de punta y capital humano de alto 
          impacto en el ámbito académico e industrial.
        </p>
      </Container>
      <Container className="section" >
        <Row>
          <Col>
            <span className="icon icon-eye "></span>
              <h2>Visión</h2>
              <p>
                Que el grupo de trabajo y sus integrantes sean un referente a nivel mundial en el
                desarrollo de tecnologías de punta a nivel científico, académico y comercial, 
                capacitando a capital humano de excelente calidad y desarrollando proyectos con 
                alto impacto comercial y social.
              </p>
          </Col>
          <Col>
          <span className="icon icon-quill"></span>
              <h2>Misión</h2>
              <p>
                Desarrollar sistemas inteligentes basados en redes neuronales profundas que puedan
                ser distribuidos a usuarios reales, con el objetivo de favorecer una educación integral
                a los estudiantes del grupo de trabajo.
              </p>
          </Col>
          <Col>
            <span className="icon icon-heart"></span>
            <h2>Valores</h2>
            <p>
              Intregridad, Confianza, Comunicaciones honestas y abiertas, Pasión por trabajar para 
              hacer un cambio en el mundo.
            </p>
          </Col>
        </Row>
      </Container>
      <Container fluid className="academy">
        <Container className="section white"> 
          <h1>La Investigación no solo es académica</h1>
          <hr/>
          <p>
            Por eso creamos un grupo de investigación que tiene como objetivo usar la inteligencia
            artificial para resolver problemas de la industria.
          </p>
        </Container>
      </Container>
      <Container className="section portfolio" id="portfolio">
        <h1>Proyectos increibles</h1>
        <hr/>
        <CardColumns>
          <Projects projects={projects_data}/>
        </CardColumns>
      </Container>
      <Container className="section" >
        <Row>
          <Col md="auto">
            <Image src={join} style={{height:"350px"}} fluid />
          </Col>
          <Col>
            <h1>Únete al equipo!</h1>
            <p>
              Si eres estudiante de Licenciatura o Posgrado en el IPN, o estás interesdo en 
              complementar tu educación con un postgrado en el Centro de Investigación en Computación,
              y quieres desarrollar proyectos de IA aplicados a problemas reales o industriales, 
              te estamos buscando.
            </p>
            <Button variant="secondary">Contáctanos</Button>
          </Col>
        </Row>
      </Container>
      <Container fluid className="team_separator">
        <Container className="section white"> 
          <h1>Inteligencia colectiva</h1>
          <hr/>
          <h2>
            Alumnos e Investigadores colaborando para resolver problemas multidisciplinarios.
          </h2>
        </Container>
      </Container>
      <Container className="section"  id="leaders">
        <h1>Los líderes</h1>
        <hr/>
        <CardDeck>
          <Team team={leader_data}/>
        </CardDeck>
      </Container>
      <Container fluid className="section" id="team">
        <h1>Las Promesas</h1>
        <hr/>
        <CardGroup>
          <Team team={team_data} sort/>
        </CardGroup>
      </Container>
      <Container fluid className="section contact white" id="contact">
        <h1>Hecho en la Ciudad de México</h1>
        <hr/>
        <p>
          <span className="icon icon-home"/> 
          Av. Juan de Dios Bátiz, Esq. Miguel Othón de Mendizábal,<br/> 
          Col. Nueva Industrial Vallejo, Delegación Gustavo A. Madero. CDMX
        </p>
        <p>
          <span className="icon icon-phone"/>
          57296000
        </p>
        <p> 
          <span className="icon icon-envelop"/> 
          <a href="mailto:contacto@deepdaemon.org">contacto@deepdaemon.org </a>
        </p>
        <p>
          <a href="https://twitter.com">
            <span className="icon icon-twitter"/> 
            </a> 
          | 
          <a href="https://www.facebook.com">
            <span className="icon icon-facebook"/> 
          </a>
        </p>
        <hr/>
      <footer>&copy; DeepDaemon 2019</footer>
      </Container>
    </div>
  );
};

export default DeepDaemon;
