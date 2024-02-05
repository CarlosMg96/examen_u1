const express = require('express');
const app = express();
const cors = require('cors');
const routes = require('./router/index');

// Middleware de CORS
app.use(cors());

// Middleware para usar las rutas definidas en index.js
app.use('/api', routes);

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => {
  console.log(`Servidor en ejecución en el puerto ${PORT}`);
});
