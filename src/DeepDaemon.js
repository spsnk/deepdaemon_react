import React from 'react';
import logo from './assets/img/logo.png';
import './DeepDaemon.css';
import Navbar from './components/navbar';
import 'bootstrap/dist/css/bootstrap.css';
import './assets/icomoon/icomoon.css'

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
        <p>
          Comunidad de conocimiento
        </p>
      </header>
    </div> 
  );
}

export default DeepDaemon;
