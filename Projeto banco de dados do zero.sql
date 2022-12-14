
-- Mecânica

CREATE DATABASE Oficina;
USE Oficina;

-- Tabela Oficina
CREATE TABLE oficina (
idOficina INT AUTO_INCREMENT PRIMARY KEY,
cnpj CHAR(14) NOT NULL,
razao_social VARCHAR(45) NOT NULL,
endereço VARCHAR(65),
telefone VARCHAR(10)
);

-- Tabela Ciente
CREATE TABLE cliente (
idCliente	INT AUTO_INCREMENT PRIMARY KEY,
pnome VARCHAR(25),
cpf			CHAR(11),
cnpj		CHAR(14),
telefone	VARCHAR(14),
endereço	VARCHAR(65)
);

-- Tabela Veículo
CREATE TABLE veiculo (
idVeiculo	INT AUTO_INCREMENT PRIMARY KEY,
placa		CHAR(8) NOT NULL,
marca		VARCHAR(15),
modelo		VARCHAR(20),
servico		VARCHAR(250)
);

-- Tabela Mecânico
CREATE TABLE mecanico (
idMecanico		INT AUTO_INCREMENT PRIMARY KEY,
pnome			VARCHAR(25),
cpf				CHAR(11),
telefone		VARCHAR(14),
especialidade	ENUM('Pintura', 'Funilaria', 'Mecânica', 'Elétrica')	
);

-- Tabela Peças
CREATE TABLE pecas (
idPecas		INT AUTO_INCREMENT PRIMARY KEY,
peca		VARCHAR(30),
descricao	VARCHAR(250),
custo		FLOAT
);

-- Tabela Serviços 
CREATE TABLE servicos (
idServicos	INT AUTO_INCREMENT PRIMARY KEY,
servico		ENUM('Pintura', 'Funilaria', 'Mecânica', 'Elétrica'),
descricao	VARCHAR(250),
vlrServico	FLOAT
);

-- Tabela Avaliação
CREATE TABLE avaliacao (
idAvaliacao		INT AUTO_INCREMENT PRIMARY KEY,
avlIdOficina	INT,
avlIdCliente	INT,
avlIdMecanico	INT,
avlIdveiculo	INT,
avlIdpecas		INT,
avlIdservicos	INT,
avlVeiPlaca		CHAR(8) NOT NULL,
avOrcamento		VARCHAR(250),
avlAutorizacao	BOOLEAN DEFAULT 0,
avEntrada		DATE,
avPrevEntrega	DATE,
CONSTRAINT fk_aval_oficina FOREIGN KEY (avlIdOficina) REFERENCES oficina (idOficina),
CONSTRAINT fk_aval_cliente FOREIGN KEY (avlIdCliente) REFERENCES cliente (idCliente),
CONSTRAINT fk_aval_mecanico FOREIGN KEY (avlIdMecanico) REFERENCES mecanico (idMecanico),
CONSTRAINT fk_aval_veiculo FOREIGN KEY (avlIdveiculo) REFERENCES veiculo (idVeiculo),
CONSTRAINT fk_aval_pecas FOREIGN KEY (avlIdpecas) REFERENCES pecas (idPecas),
CONSTRAINT fk_aval_servicos FOREIGN KEY (avlIdservicos) REFERENCES servicos (idServicos)

);

-- Tabela Ordem de Serviço
CREATE TABLE os	(
idOs			INT AUTO_INCREMENT PRIMARY KEY,
idOsAvaliacao	INT,
osValor			FLOAT,
osPaga			BOOLEAN DEFAULT 0,
observacoes		VARCHAR(250),
CONSTRAINT fk_os_avaliacao FOREIGN KEY (idOsAvaliacao) REFERENCES avaliacao (idAvaliacao)
);

SHOW TABLES;