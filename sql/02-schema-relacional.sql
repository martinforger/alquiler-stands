CREATE TABLE PAIS (
    cod_pais SERIAL PRIMARY KEY,
    nb_pais VARCHAR(100) NOT NULL
);

CREATE TABLE CIUDAD (
    cod_ciudad SERIAL PRIMARY KEY,
    nb_ciudad VARCHAR(100) NOT NULL,
    cod_pais INT REFERENCES PAIS(cod_pais)
);

CREATE TABLE SEDE (
    cod_sede SERIAL PRIMARY KEY,
    nb_sede VARCHAR(100) NOT NULL,
    cod_ciudad INT REFERENCES CIUDAD(cod_ciudad)
);

CREATE TABLE TIPO_EVENTO (
    cod_tipo_evento SERIAL PRIMARY KEY,
    nb_tipo_evento VARCHAR(50) NOT NULL -- Ej: Feria, Bazar
);

CREATE TABLE EVENTO (
    cod_evento SERIAL PRIMARY KEY,
    nb_evento VARCHAR(150) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    descripcion TEXT,
    cod_sede INT REFERENCES SEDE(cod_sede),
    email VARCHAR(100),
    cod_tipo_evento INT REFERENCES TIPO_EVENTO(cod_tipo_evento)
);

CREATE TABLE TIPO_STAND (
    cod_tipo_stand SERIAL PRIMARY KEY,
    nb_tipo_stand VARCHAR(50) NOT NULL -- Ej: Mínima, Estándar
);

CREATE TABLE EVENTO_STAND (
    cod_evento INT REFERENCES EVENTO(cod_evento),
    cod_tipo_stand INT REFERENCES TIPO_STAND(cod_tipo_stand),
    cantidad_estimada INT,
    mts2 DECIMAL(10,2),
    precio DECIMAL(12,2),
    PRIMARY KEY (cod_evento, cod_tipo_stand)
);

CREATE TABLE CATEGORIA (
    cod_categoria SERIAL PRIMARY KEY,
    nb_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE SUBCATEGORIA (
    cod_sub_categoria SERIAL PRIMARY KEY,
    nb_sub_categoria VARCHAR(100) NOT NULL,
    cod_categoria INT REFERENCES CATEGORIA(cod_categoria)
);

CREATE TABLE CLIENTE (
    cod_cliente SERIAL PRIMARY KEY,
    nb_cliente VARCHAR(150) NOT NULL,
    ci_rif VARCHAR(20) UNIQUE NOT NULL,
    telefono VARCHAR(20),
    direccion TEXT,
    email VARCHAR(100)
);

CREATE TABLE CONTRATO (
    nro_stand INT,
    cod_evento INT,
    cod_tipo_stand INT,
    fecha_alquiler DATE DEFAULT CURRENT_DATE,
    cod_cliente INT REFERENCES CLIENTE(cod_cliente),
    mts2 DECIMAL(10,2),
    monto DECIMAL(12,2),
    cod_sub_categoria INT REFERENCES SUBCATEGORIA(cod_sub_categoria),
    PRIMARY KEY (nro_stand, cod_evento, cod_tipo_stand),
    FOREIGN KEY (cod_evento, cod_tipo_stand) REFERENCES EVENTO_STAND(cod_evento, cod_tipo_stand)
);

CREATE TABLE LEYENDA_ESTRELLAS (
    cod_leyenda_estrellas SERIAL PRIMARY KEY,
    nb_descripcion VARCHAR(50) NOT NULL -- Ej: Excelente, Bueno
);

CREATE TABLE VISITANTE (
    cod_visitante SERIAL PRIMARY KEY,
    cedula VARCHAR(20) UNIQUE NOT NULL,
    nb_visitante VARCHAR(150) NOT NULL,
    sexo CHAR(1) CHECK (sexo IN ('M', 'F', 'O')),
    email VARCHAR(100)
);

CREATE TABLE ENTRADA (
    nro_entrada SERIAL PRIMARY KEY,
    cod_evento INT REFERENCES EVENTO(cod_evento),
    fecha_entrada DATE NOT NULL,
    hora_entrada TIME NOT NULL,
    cod_visitante INT REFERENCES VISITANTE(cod_visitante),
    recomienda_amigo BOOLEAN,
    calificacion INT,
    cod_leyenda_estrellas INT REFERENCES LEYENDA_ESTRELLAS(cod_leyenda_estrellas)
);