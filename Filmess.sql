CREATE TABLE Usuario (
id INT NOT NULL,
nome VARCHAR(45) NOT NULL,
/* OUTROS DADOS DO USUARIO */
PRIMARY KEY(id)
);

CREATE TABLE FilmeVistos(
id INT NOT NULL,
FOREIGN KEY (idUsuario) REFERENCES Usuario(id),
FOREIGN KEY (idFilme) REFERENCES Filmes(id)
);


CREATE TABLE Filmes (
id INT NOT NULL,
nome VARCHAR(45) NOT NULL,
/* OUTROS DADOS DO Filme */
PRIMARY KEY(id),
FOREIGN KEY (idGenero) REFERENCES Genero(id)
);

CREATE TABLE Genero (
id INT NOT NULL,
nome VARCHAR(30) NOT NULL,
/* OUTROS DADOS DO Genero */
PRIMARY KEY(id)
);

/* apareça os filmes cadastrados */
SELECT * FROM Filmes;