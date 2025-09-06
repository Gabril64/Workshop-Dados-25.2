CREATE SCHEMA Desafio;
USE Desafio;

CREATE TABLE Livros (
    ID_livros INT NOT NULL,
    Nome_livro VARCHAR(45) NULL,
    Genero_livro VARCHAR(45) NULL,
    Paginas INT NULL,
    PRIMARY KEY (ID_livros)
);

CREATE TABLE Produtos (
    ID_produtos INT NOT NULL,
    Nome_produto VARCHAR(45) NULL,
    Genero_produto VARCHAR(45) NULL,
    Preco DECIMAL(10, 2) NULL,
    PRIMARY KEY (ID_produtos)
);

INSERT INTO Livros (ID_livros, Nome_livro, Genero_livro, Paginas)
VALUES
    (1, 'Aventuras na Selva', 'Aventura', 350),
    (2, 'O Mistério da Mansão', 'Suspense', 280),
    (3, 'O Código Perdido', 'Ficção Científica', 410),
    (4, 'Receitas da Vovó', 'Culinária', 150),
    (5, 'Guia de Viagem', 'Não-Ficção', 220),
    (6, 'Histórias de Ninar', 'Infantil', 80),
    (7, 'O Segredo da Floresta', 'Fantasia', 500),
    (8, 'Curso de Python', 'Programação', 650),
    (9, 'Romance na Cidade', 'Romance', 300),
    (10, 'A Vida no Campo', 'Drama', 180);

INSERT INTO Produtos (ID_produtos, Nome_produto, Genero_produto, Preco)
VALUES
    (1, 'Câmera Fotográfica', 'Eletrônicos', 1250.00),
    (2, 'Fone de Ouvido', 'Acessórios', 180.50),
    (3, 'Tênis de Corrida', 'Esportes', 320.99),
    (4, 'Cafeteira', 'Utensílios Domésticos', 95.75),
    (5, 'Mochila de Couro', 'Acessórios', 450.00),
    (6, 'Mouse Sem Fio', 'Informática', 75.30),
    (7, 'Livro de Receitas', 'Livros', 55.00),
    (8, 'Jogo de Tabuleiro', 'Jogos', 110.00),
    (9, 'Jaqueta de Inverno', 'Vestuário', 280.00),
    (10, 'Garrafa Térmica', 'Utensílios Domésticos', 45.50);

UPDATE Produtos
SET Preco = 899.99
WHERE ID_produtos = 1;

SELECT *
FROM Livros
WHERE ID_livros BETWEEN 3 AND 8;

SELECT COUNT(*) AS total_de_livros
FROM Livros;

SELECT FORMAT(AVG(Preco), 2) AS preco_medio_produtos
FROM Produtos;

SELECT MAX(Paginas) AS maior_numero_paginas
FROM Livros;

SELECT Genero_livro, COUNT(*) AS total_livros
FROM Livros
GROUP BY Genero_livro;

SELECT Genero_produto, FORMAT(AVG(Preco), 2) AS preco_medio
FROM Produtos
GROUP BY Genero_produto;

SELECT p.Nome_produto, p.Preco, l.Nome_livro, l.Paginas
FROM Produtos p
JOIN Livros l
    ON p.Nome_produto LIKE '%Receitas%'
   AND l.Nome_livro LIKE '%Receitas%';
