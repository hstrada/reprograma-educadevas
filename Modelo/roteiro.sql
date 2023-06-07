--
-- BANCO DE DADOS
--

-- Criando o banco de dados
CREATE DATABASE Shopping

-- Colocando-o em uso
USE Shopping

--
-- CATEGORIAS
--

-- Criando a tabela de categorias (categories) com Id e Nome da categoria
CREATE TABLE Categories (
    Id      INT IDENTITY PRIMARY KEY,
    Title   VARCHAR(64) NOT NULL UNIQUE
)

-- Inserindo registro com a coluna nomeada
INSERT INTO Categories (Title) VALUES ('Camisetas')

-- Inserindo registro com a omissão da coluna
INSERT INTO Categories VALUES ('Tênis')

-- Inserindo mais de um registro em uma mesma instrução
INSERT INTO Categories (Title) VALUES ('Blusas'), ('Jaquetas')

-- Selecionando todos os registros
SELECT * FROM Categories

-- Selecionando as colunas nomeadas
SELECT Id, Title FROM Categories

-- Selecionando com filtro de categoria
SELECT Id, Title FROM Categories WHERE Id = 2

--
-- PRODUTOS
-- 

CREATE TABLE Products ( 
    Id              INT IDENTITY PRIMARY KEY,
    Name           VARCHAR(64),
    Description     TEXT, 
    Price           DECIMAL(12,2),
    CategoryId      INT FOREIGN KEY REFERENCES Categories(Id)
)

SELECT * FROM Products

INSERT INTO Products (Name, Description, Price, CategoryId) 
    VALUES ('Camiseta A', 'Breve descrição sobre a Camiseta A.', 59.90, 1)

--
-- REALIZANDO A CONSULTA DE PRODUTOS
-- 

SELECT C.Id, C.Title, P.*
FROM Categories C
LEFT JOIN Products P
ON C.Id = P.CategoryId
WHERE C.Id = 1
