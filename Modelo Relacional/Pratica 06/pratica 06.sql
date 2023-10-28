CREATE TABLE Personagem (
	personagem_id INT PRIMARY KEY
);

CREATE TABLE Professor (
	competencias VARCHAR(50),
	personagem_id INT, 
	FOREIGN KEY(personagem_id) REFERENCES Personagem(personagem_id)
);

CREATE TABLE Aluno (
	ano_escolar INT,
	personagem_id INT, 
	FOREIGN KEY(personagem_id) REFERENCES Personagem(personagem_id)
);

CREATE TABLE Bruxo_das_trevas (
	personagem_id INT, 
	FOREIGN KEY(personagem_id) REFERENCES Personagem(personagem_id)
);

CREATE TABLE Habilidade (
	habilidade_id INT PRIMARY KEY
);

CREATE TABLE prof_ensina_habilidade (
	personagem_id INT, 
	FOREIGN KEY(personagem_id) REFERENCES Personagem(personagem_id),
	habilidade_id INT,
	FOREIGN KEY (habilidade_id) REFERENCES Habilidade(habilidade_id)
);

CREATE TABLE personagem_usa_habilidade (
	personagem_id INT, 
	FOREIGN KEY(personagem_id) REFERENCES Personagem(personagem_id),
	habilidade_id INT,
	FOREIGN KEY (habilidade_id) REFERENCES Habilidade(habilidade_id)
);

CREATE TABLE personagem_familiar_personagem (
    personagem_id1 INT, 
    FOREIGN KEY(personagem_id1) REFERENCES Personagem(personagem_id),
    personagem_id2 INT, 
    FOREIGN KEY(personagem_id2) REFERENCES Personagem(personagem_id)
);

