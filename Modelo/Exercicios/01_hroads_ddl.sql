CREATE DATABASE SENAI_HROADS;

USE SENAI_HROADS;

CREATE TABLE TIPOS_HABILIDADES (
    ID INT NOT NULL IDENTITY PRIMARY KEY
    , NOME VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE HABILIDADES (
    ID INT IDENTITY PRIMARY KEY
    , NOME VARCHAR(200) UNIQUE NOT NULL
    , ID_TIPO_HABILIDADE INT FOREIGN KEY REFERENCES TIPOS_HABILIDADES (ID)
);

CREATE TABLE CLASSES (
    ID INT IDENTITY PRIMARY KEY
    , NOME VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE CLASSES_HABILIDADES (
    ID_CLASSE INT FOREIGN KEY REFERENCES CLASSES (ID)
    , ID_HABILIDADE INT FOREIGN KEY REFERENCES HABILIDADES (ID)
);

CREATE TABLE PERSONAGENS (
     ID INT IDENTITY PRIMARY KEY
    , NOME VARCHAR(200) UNIQUE NOT NULL
    , CAP_MAX_VIDA INT
    , CAP_MAX_MANA INT
    , DT_CRIACAO DATETIME
    , DT_ATUALIZACAO DATETIME
    , ID_CLASSE INT FOREIGN KEY REFERENCES CLASSES (ID)
);