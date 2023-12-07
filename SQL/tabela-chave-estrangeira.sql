CREATE DATABASE Biblioteca;

-- Seleciona o Banco de Dados
USE Biblioteca;

-- Criação da Tabela de Autores
CREATE TABLE Autores (
    AutorID INT PRIMARY KEY,
    NomeAutor VARCHAR(100),
    Nacionalidade VARCHAR(50)
);

-- Criação da Tabela de Editoras
CREATE TABLE Editoras (
    EditoraID INT PRIMARY KEY,
    NomeEditora VARCHAR(100),
    Localizacao VARCHAR(50)
);

-- Criação da Tabela de Livros
CREATE TABLE Livros (
    LivroID INT PRIMARY KEY,
    Titulo VARCHAR(200),
    AnoPublicacao INT,
    AutorID INT,
    EditoraID INT,
    FOREIGN KEY (AutorID) REFERENCES Autores(AutorID),
    FOREIGN KEY (EditoraID) REFERENCES Editoras(EditoraID)
);

-- Inserção de Dados na Tabela de Autores
INSERT INTO Autores (AutorID, NomeAutor, Nacionalidade)
VALUES (1, 'Machado de Assis', 'Brasileiro'),
       (2, 'Jane Austen', 'Inglesa'),
       (3, 'Gabriel Garcia Marquez', 'Colombiano');

-- Inserção de Dados na Tabela de Editoras
INSERT INTO Editoras (EditoraID, NomeEditora, Localizacao)
VALUES (1, 'Companhia das Letras', 'São Paulo'),
       (2, 'Penguin Books', 'Londres'),
       (3, 'Random House', 'Nova York');

-- Inserção de Dados na Tabela de Livros
INSERT INTO Livros (LivroID, Titulo, AnoPublicacao, AutorID, EditoraID)
VALUES (1, 'Dom Casmurro', 1899, 1, 1),
       (2, 'Orgulho e Preconceito', 1813, 2, 2),
       (3, 'Cem Anos de Solidão', 1967, 3, 3);

-- Consulta utilizando JOIN para obter informações sobre livros, autores e editoras
SELECT Livros.Titulo, Livros.AnoPublicacao, Autores.NomeAutor, Editoras.NomeEditora
FROM Livros
JOIN Autores ON Livros.AutorID = Autores.AutorID
JOIN Editoras ON Livros.EditoraID = Editoras.EditoraID;