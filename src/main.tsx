import React from 'react';
import ReactDOM from 'react-dom/client';
// Use ./ instead of @/ to point to the current folder
import App from './app/App'; 
import './styles/index.css';

ReactDOM.createRoot(document.getElementById('root')!).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
);
