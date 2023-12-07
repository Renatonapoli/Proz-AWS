-- Criação do Banco de Dados
CREATE DATABASE Biblioteca;

-- Seleciona o Banco de Dados
USE Biblioteca;

-- Criação da Tabela de Livros
CREATE TABLE Livros (
    LivroID INT PRIMARY KEY,
    Titulo VARCHAR(200),
    Autor VARCHAR(100),
    AnoPublicacao INT
);

-- Criação da Tabela de Estoque
CREATE TABLE Estoque (
    LivroID INT PRIMARY KEY,
    QuantidadeDisponivel INT
);

-- Inserção de Dados na Tabela de Livros
INSERT INTO Livros (LivroID, Titulo, Autor, AnoPublicacao)
VALUES (1, 'Dom Casmurro', 'Machado de Assis', 1899),
       (2, 'Orgulho e Preconceito', 'Jane Austen', 1813),
       (3, 'Cem Anos de Solidão', 'Gabriel Garcia Marquez', 1967);

-- Inserção de Dados na Tabela de Estoque
INSERT INTO Estoque (LivroID, QuantidadeDisponivel)
VALUES (1, 10),
       (2, 5),
       (3, 8);

-- Criação do Trigger
DELIMITER //

CREATE TRIGGER AfterInsertLivro
AFTER INSERT ON Livros
FOR EACH ROW
BEGIN
    DECLARE livroQuantidade INT;
    
    -- Obtém a quantidade disponível do livro no estoque
    SELECT QuantidadeDisponivel INTO livroQuantidade
    FROM Estoque
    WHERE LivroID = NEW.LivroID;

    -- Atualiza a quantidade disponível no estoque
    UPDATE Estoque
    SET QuantidadeDisponivel = livroQuantidade + 1
    WHERE LivroID = NEW.LivroID;
END //

DELIMITER ;

-- Inserção de um novo livro (ativará o trigger)
INSERT INTO Livros (LivroID, Titulo, Autor, AnoPublicacao)
VALUES (4, 'A Metamorfose', 'Franz Kafka', 1915);

-- Consulta para verificar o estoque após a inserção do novo livro
SELECT * FROM Estoque;