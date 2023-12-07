-- Criação do Banco de Dados (caso não exista)
CREATE DATABASE IF NOT EXISTS Loja;

-- Seleciona o Banco de Dados
USE Loja;

-- Criação da Tabela de Clientes
CREATE TABLE IF NOT EXISTS Clientes (
    ClienteID INT PRIMARY KEY,
    NomeCliente VARCHAR(100),
    DataCadastro DATE
);

-- Inserção de Dados para Teste
INSERT INTO Clientes (ClienteID, NomeCliente, DataCadastro)
VALUES (1, 'Cliente A', '2023-12-01'),
       (2, 'Cliente B', '2023-12-01'),
       (3, 'Cliente C', '2023-12-02'),
       (4, 'Cliente D', '2023-12-02');

-- Criação da Função
DELIMITER //

CREATE FUNCTION TotalClientesCadastradosEmUmDia(dataConsulta DATE)
RETURNS INT
BEGIN
    DECLARE totalClientes INT;

    SELECT COUNT(*) INTO totalClientes
    FROM Clientes
    WHERE DataCadastro = dataConsulta;

    RETURN totalClientes;
END //

DELIMITER ;

-- Chama a Função
SELECT TotalClientesCadastradosEmUmDia('2023-12-01') AS TotalClientesEm01DeDezembro;