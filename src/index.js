import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import DeepDaemon from './DeepDaemon.js';
import 'bootstrap/dist/css/bootstrap.css';
import 'react-bootstrap/dist/react-bootstrap';
import * as serviceWorker from './serviceWorker';

ReactDOM.render(<DeepDaemon />, document.getElementById('root'));

serviceWorker.unregister();
