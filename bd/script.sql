create database autos;

use autos;

CREATE TABLE car (
    id INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    anio_fabricacion INT,
    numero_serie VARCHAR(20)
);

INSERT INTO car (marca, modelo, anio_fabricacion, numero_serie) VALUES
('Toyota', 'Corolla', 2020, 'ABCD000-00EF'),
('Honda', 'Civic', 2019, 'WXYZ000-00LM'),
('Ford', 'Mustang', 2018, 'PQRS000-00TU'),
('Chevrolet', 'Camaro', 2017, 'IJKL000-00OP'),
('Nissan', 'Altima', 2016, 'FGHI000-00UV');
