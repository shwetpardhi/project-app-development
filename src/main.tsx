import React from 'react';
import ReactDOM from 'react-dom/client';
// Use ./app/App because App.tsx is inside the 'app' folder
import App from './app/App'; 
import './styles/index.css';

ReactDOM.createRoot(document.getElementById('root')!).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
);
