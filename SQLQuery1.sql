create database Recuperacao

use Recuperacao

CREATE TABLE Usuario(
	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome CHAR(30) NOT NULL,
	CPF CHAR(11)NOT NULL,
	Cargo CHAR(20)NOT NULL,
	Email CHAR(40)NOT NULL,
	Senha CHAR(40) NOT NULL,
	IdAcesso INT FOREIGN KEY REFERENCES Acesso (IdAcesso)
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

CREATE TABLE Acesso(
IdAcesso INT PRIMARY KEY IDENTITY NOT NULL,
TipoUsario CHAR(20) NOT NULL
);

INSERT INTO Acesso(TipoUsario) VALUES
	('Administrador'),
	('Empregado')
	;

	INSERT INTO Usuario (Nome, CPF, Cargo, Email, Senha, IdAcesso) VALUES
	('pedro', '12345678912', 'estilizador', 'email@email.com', '12345678', '3');

	drop table Acesso
	drop table Usuario
	
	select * from Usuario
	select * from Sala


	insert into Sala (Andar, MetragemSala, NomeSala) values
	('1', '80', 'Redes');

	INSERT INTO Equipamento (NumeroSerie, Marca, Descricao, Tipo, NumeroPatrimonio, IdSala) VALUES
	('4', 'Beta', 'Boa', 'chave inglesa', '2', '1');


select  Equipamento.*, Sala.Andar AS EquipamentoSala, Andar from Sala
 inner join Equipamento on Sala.IdSala = Equipamento.IdEquipamento;

 




select * from Equipamento where IdSala = 2
go

