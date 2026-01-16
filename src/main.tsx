import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './app/App'; // Double-check if 'app' is lowercase in GitHub!
import './styles/index.css';

ReactDOM.createRoot(document.getElementById('root')!).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
);
