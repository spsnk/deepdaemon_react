import React from 'react';
import Container from 'react-bootstrap/Container';
import Col from 'react-bootstrap/Col';
import Row from 'react-bootstrap/Row';
import Image from 'react-bootstrap/Image'
import Button from 'react-bootstrap/Button';

import logo from './assets/img/logo.png';
import join from './assets/img/join_team.png';
import 'bootstrap/dist/css/bootstrap.css';
import './assets/icomoon/icomoon.css'; //https://icomoon.io/#preview-free

import './DeepDaemon.css';
import Navbar from './components/navbar';
import Section from './components/section';
import projects_data from './data/projects.json';
import Projects from './components/project_card';

function DeepDaemon() {
  return (
    <div className="DeepDaemon">
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
      <Section id="about">
        <h1>Un poco sobre nosotros</h1>
        <hr/>
        <p>Somos un grupo de trabajo que busca vincular el desarrollo científico con el desarrollo 
          de soluciones industriales para generar tecnología de punta y capital humano de alto 
          impacto en el ámbito académico e industrial.
        </p>
      </Section>
      <Section>
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
      </Section>
      <Container fluid className="academy">
        <Section className="white"> 
          <h1>La Investigación no solo es académica</h1>
          <hr/>
          <p>
            Por eso creamos un grupo de investigación que tiene como objetivo usar la inteligencia
            artificial para resolver problemas de la industria.
          </p>
        </Section>
      </Container>
      <Section className="portfolio" id="portfolio">
        <h1>Proyectos increibles</h1>
        <hr/>
        <Projects projects={projects_data}/>
      </Section>
      <Section>
        <Row>
          <Col md="auto">
            <Image src={join} style={{height:"350px"}} fluid />
          </Col>
          <Col>
            <h1>Unete al equipo!</h1>
            <p>
              Si eres estudiante de Licenciatura o Posgrado en el IPN, o estás interesdo en 
              complementar tu educación con un postgrado en el Centro de Investigación en Computación,
              y quieres desarrollar proyectos de IA aplicados a problemas reales o industriales, 
              te estamos buscando.
            </p>
            <Button variant="secondary">Contáctanos</Button>
          </Col>
        </Row>
      </Section>
      <Container fluid className="team">
        <Section className="white"> 
          <h1>Inteligencia colectiva</h1>
          <hr/>
          <h2>
            Alumnos e Investigadores colaborando para resolver problemas multidisciplinarios.
          </h2>
        </Section>
      </Container>

    </div>
  );
};

export default DeepDaemon;
