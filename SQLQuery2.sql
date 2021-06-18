CREATE DATABASE Recuperação;

USE Recuperação;

CREATE TABLE Usuario(
	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome CHAR(30) NOT NULL,
	CPF CHAR(11)NOT NULL,
	Cargo CHAR(20)NOT NULL,
	Tipo CHAR(20)NOT NULL,
	);

	CREATE TABLE Sala(
	IdSala INT PRIMARY KEY IDENTITY NOT NULL,
	Andar INT,
	MetragemSala float,
	NomeSala CHAR(20),
	
);

CREATE TABLE Equipamento(
	IdEquipamento INT PRIMARY KEY IDENTITY NOT NULL,
	NumeroSerie INT,
	Marca CHAR(20),
	Descricao CHAR(100),
	AtivoInativo BINARY DEFAULT 0 ,
	Tipo CHAR(20),
	NumeroPatrimonio INT,
	-- FK
	IdSala INT FOREIGN KEY REFERENCES Sala (IdSala)
	
);
DROP TABLE Equipamento;


Select
convert ( BINARY , 0)  