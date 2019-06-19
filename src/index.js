import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import DeepDaemon from './DeepDaemon.js';
import * as serviceWorker from './serviceWorker';
import 'bootstrap/dist/css/bootstrap.css';

ReactDOM.render(<DeepDaemon />, document.getElementById('root'));

serviceWorker.unregister();
