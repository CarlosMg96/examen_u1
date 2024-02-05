const express = require('express');
const router = express.Router();
const { getAllCars } = require('../autos/autos');

// Definir rutas para obtener datos de carros
router.get('/cars', async (req, res) => {
  try {
    const cars = await getAllCars();
    res.json(cars);
  } catch (error) {
    console.error('Error al obtener los datos de la tabla car:', error);
    res.status(500).send('Error interno del servidor');
  }
});

// Agregar más rutas según sea necesario

module.exports = router;
