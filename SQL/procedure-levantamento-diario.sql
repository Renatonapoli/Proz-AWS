-- Criação do Banco de Dados (caso não exista)
CREATE DATABASE IF NOT EXISTS EmpresaVendas;

-- Seleciona o Banco de Dados
USE EmpresaVendas;

-- Criação da Tabela de Produtos
CREATE TABLE IF NOT EXISTS Produtos (
    ProdutoID INT PRIMARY KEY,
    NomeProduto VARCHAR(100),
    PrecoUnitario DECIMAL(10, 2)
);

-- Criação da Tabela de Vendas
CREATE TABLE IF NOT EXISTS Vendas (
    VendaID INT PRIMARY KEY,
    DataVenda DATE,
    ProdutoID INT,
    QuantidadeVendida INT,
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);

-- Inserção de Dados para Teste
INSERT INTO Produtos (ProdutoID, NomeProduto, PrecoUnitario)
VALUES (1, 'Produto A', 10.00),
       (2, 'Produto B', 15.00);

INSERT INTO Vendas (VendaID, DataVenda, ProdutoID, QuantidadeVendida)
VALUES (1, '2023-12-01', 1, 5),
       (2, '2023-12-01', 2, 3),
       (3, '2023-12-02', 1, 2),
       (4, '2023-12-02', 2, 4);

-- Criação da Procedure
DELIMITER //

CREATE PROCEDURE LevantamentoDiario()
BEGIN
    SELECT
        DataVenda,
        ProdutoID,
        SUM(QuantidadeVendida) AS QuantidadeTotal
    FROM Vendas
    GROUP BY DataVenda, ProdutoID;
END //

DELIMITER ;

-- Chama a Procedure
CALL LevantamentoDiario();