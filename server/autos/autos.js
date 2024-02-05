const db = require('../db/connection');

function getAllCars() {
  return new Promise((resolve, reject) => {
    const query = 'SELECT * FROM car';
    
    // Ejecuta la consulta
    db.query(query, (error, results) => {
      if (error) {
        reject(error);
      } else {
        resolve(results);
      }
    });
  });
}

module.exports = { getAllCars };
