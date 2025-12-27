-- INSERTS PARA EL PROYECTO DE ALQUILER DE STANDS

-- 1. PAIS
INSERT INTO PAIS (nb_pais) VALUES ('Venezuela'), ('Colombia');

-- 2. CIUDAD
INSERT INTO CIUDAD (nb_ciudad, cod_pais) VALUES 
('Caracas', 1), 
('Valencia', 1),
('Bogotá', 2),
('Medellín', 2);

-- 3. SEDE
INSERT INTO SEDE (nb_sede, cod_ciudad) VALUES 
('Centro de Convenciones Caracas', 1),
('Sede Norte Valencia', 2),
('Corferias Bogotá', 3),
('Plaza Mayor Medellín', 4);

-- 4. TIPO_EVENTO
INSERT INTO TIPO_EVENTO (nb_tipo_evento) VALUES ('Feria'), ('Bazar'), ('Exposición');

-- 5. EVENTO
INSERT INTO EVENTO (nb_evento, fecha_inicio, fecha_fin, descripcion, cod_sede, email, cod_tipo_evento) VALUES 
('Feria del Libro 2025', '2025-03-01', '2025-03-10', 'Evento anual de literatura', 1, 'contacto@ferialibro.com', 1),
('Bazar Navideño', '2025-12-01', '2025-12-20', 'Venta de artículos navideños', 3, 'info@bazarnavidad.com', 2),
('Expo Tecnología', '2025-06-15', '2025-06-20', 'Lo último en tecnología', 4, 'tech@expo.com', 3);

-- 6. TIPO_STAND
INSERT INTO TIPO_STAND (nb_tipo_stand) VALUES ('Mínima'), ('Estándar'), ('Premium');

-- 7. EVENTO_STAND
INSERT INTO EVENTO_STAND (cod_evento, cod_tipo_stand, cantidad_estimada, mts2, precio) VALUES 
(1, 1, 50, 4.00, 200.00),
(1, 2, 30, 9.00, 450.00),
(2, 1, 100, 4.00, 150.00),
(2, 3, 20, 16.00, 800.00),
(3, 2, 40, 9.00, 500.00),
(3, 3, 15, 20.00, 1200.00);

-- 8. CATEGORIA
INSERT INTO CATEGORIA (nb_categoria) VALUES ('Alimentos'), ('Tecnología'), ('Hogar'), ('Moda');

-- 9. SUBCATEGORIA
INSERT INTO SUBCATEGORIA (nb_sub_categoria, cod_categoria) VALUES 
('Snacks', 1), 
('Bebidas', 1),
('Laptops', 2),
('Smartphones', 2),
('Muebles', 3),
('Ropa Casual', 4);

-- 10. CLIENTE
INSERT INTO CLIENTE (nb_cliente, ci_rif, telefono, direccion, email) VALUES 
('Juan Pérez', 'V-12345678', '0414-1112233', 'Av. Principal Caracas', 'juan@gmail.com'),
('Empresa Tech S.A.', 'J-98765432', '0212-5556677', 'Torre Empresarial Bogotá', 'ventas@techsa.com'),
('María García', 'V-87654321', '0424-9998877', 'Urb. El Viñedo Valencia', 'maria@hotmail.com'),
('Modas Express', 'J-11223344', '0212-4443322', 'C.C. Sambil Medellín', 'contacto@modasexpress.com'),
('Alimentos Polar', 'J-00011122', '0212-2221100', 'Los Cortijos Caracas', 'info@polar.com');

-- 11. CONTRATO
INSERT INTO CONTRATO (nro_stand, cod_evento, cod_tipo_stand, fecha_alquiler, cod_cliente, mts2, monto, cod_sub_categoria) VALUES 
(1, 1, 1, '2025-01-15', 1, 4.00, 200.00, 1),
(2, 1, 2, '2025-01-20', 5, 9.00, 450.00, 2),
(1, 2, 1, '2025-10-05', 3, 4.00, 150.00, 6),
(2, 2, 3, '2025-10-10', 4, 16.00, 800.00, 6),
(1, 3, 2, '2025-04-12', 2, 9.00, 500.00, 3),
(2, 3, 3, '2025-04-15', 2, 20.00, 1200.00, 4),
(3, 1, 1, '2025-01-25', 3, 4.00, 200.00, 5),
(4, 1, 2, '2025-01-28', 4, 9.00, 450.00, 6),
(3, 2, 1, '2025-10-15', 1, 4.00, 150.00, 1),
(5, 1, 1, '2025-02-01', 2, 4.00, 200.00, 3);

-- 12. LEYENDA_ESTRELLAS
INSERT INTO LEYENDA_ESTRELLAS (nb_descripcion) VALUES 
('Muy Malo'), 
('Malo'), 
('Regular'), 
('Bueno'), 
('Excelente');

-- 13. VISITANTE
INSERT INTO VISITANTE (cedula, nb_visitante, sexo, email) VALUES 
('10101010', 'Carlos Ruiz', 'M', 'carlos@gmail.com'),
('20202020', 'Ana López', 'F', 'ana@yahoo.com'),
('30303030', 'Pedro Picapiedra', 'M', 'pedro@gmail.com'),
('40404040', 'Luisa Lane', 'F', 'luisa@dailyplanet.com'),
('50505050', 'Miguel Indurain', 'M', 'miguel@ciclismo.com'),
('60606060', 'Elena de Troya', 'F', 'elena@grecia.com'),
('70707070', 'Roberto Gómez', 'M', 'chespirito@televisa.com'),
('80808080', 'Shakira Mebarak', 'F', 'shakira@waka.com'),
('90909090', 'Lionel Messi', 'M', 'leo@intermiami.com'),
('11112222', 'Karol G', 'F', 'bichota@medellin.com');

-- 14. ENTRADA
INSERT INTO ENTRADA (cod_evento, fecha_entrada, hora_entrada, cod_visitante, recomienda_amigo, calificacion, cod_leyenda_estrellas) VALUES 
(1, '2025-03-01', '10:00:00', 1, TRUE, 5, 5),
(1, '2025-03-01', '11:30:00', 2, TRUE, 4, 4),
(1, '2025-03-02', '14:00:00', 3, FALSE, 2, 2),
(1, '2025-03-02', '15:45:00', 4, TRUE, 5, 5),
(2, '2025-12-01', '09:00:00', 5, TRUE, 4, 4),
(2, '2025-12-01', '10:15:00', 6, TRUE, 5, 5),
(2, '2025-12-02', '12:00:00', 7, FALSE, 3, 3),
(2, '2025-12-05', '16:30:00', 8, TRUE, 5, 5),
(3, '2025-06-15', '10:00:00', 9, TRUE, 5, 5),
(3, '2025-06-15', '11:00:00', 10, TRUE, 4, 4),
(3, '2025-06-16', '13:00:00', 1, TRUE, 5, 5),
(3, '2025-06-17', '15:00:00', 2, FALSE, 1, 1),
(1, '2025-03-05', '10:00:00', 5, TRUE, 4, 4),
(1, '2025-03-05', '11:00:00', 6, TRUE, 5, 5),
(2, '2025-12-10', '14:00:00', 9, TRUE, 4, 4),
(2, '2025-12-10', '15:00:00', 10, TRUE, 5, 5),
(3, '2025-06-18', '10:00:00', 3, TRUE, 3, 3),
(3, '2025-06-18', '11:00:00', 4, TRUE, 4, 4),
(1, '2025-03-08', '16:00:00', 7, TRUE, 5, 5),
(2, '2025-12-15', '17:00:00', 8, TRUE, 4, 4);
