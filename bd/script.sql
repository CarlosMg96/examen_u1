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

INSERT INTO car (marca, modelo, anio_fabricacion, numero_serie) VALUES
('Hyundai', 'Elantra', 2015, 'MNOP000-00QR'),
('Volkswagen', 'Golf', 2014, 'UVWX000-00YZ'),
('Mercedes-Benz', 'C-Class', 2013, 'EFGH000-00AB'),
('BMW', '3 Series', 2012, 'IJKL000-00CD'),
('Audi', 'A4', 2011, 'PQRS000-00EF'),
('Kia', 'Optima', 2010, 'TUVW000-00GH'),
('Subaru', 'Impreza', 2009, 'YZAB000-00IJ'),
('Mazda', 'Mazda3', 2008, 'CDEF000-00KL'),
('Volvo', 'S40', 2007, 'GHIJ000-00MN'),
('Lexus', 'IS', 2006, 'KLMN000-00OP'),
('Jaguar', 'XF', 2005, 'OPQR000-00ST'),
('Chrysler', '300', 2004, 'UVWX000-00YZ'),
('Buick', 'LaCrosse', 2003, 'YZAB000-00IJ'),
('Acura', 'TL', 2002, 'CDEF000-00KL'),
('Infiniti', 'G35', 2001, 'GHIJ000-00MN'),
('Cadillac', 'CTS', 2000, 'KLMN000-00OP'),
('Porsche', 'Panamera', 1999, 'OPQR000-00ST'),
('Tesla', 'Model S', 1998, 'UVWX000-00YZ'),
('Fiat', '500', 1997, 'YZAB000-00IJ'),
('Land Rover', 'Range Rover', 1996, 'CDEF000-00KL');

