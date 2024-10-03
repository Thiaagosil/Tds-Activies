CREATE DATABASE sistema_escolar;
 USE sistema_escolar;
 
 SELECT * FROM turma;
 
 CREATE TABLE pessoa(
	id_pessoa INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    idade VARCHAR(2) NOT NULL,
    cpf VARCHAR(11) NOT NULL, 
    situacao CHAR(1) NOT NULL
);

CREATE TABLE endereco(
	id_endereco INT PRIMARY KEY AUTO_INCREMENT,
    cidade VARCHAR(45) NOT NULL,
    rua VARCHAR(25),
    bairro VARCHAR(25),
    cep VARCHAR(9) NOT NULL,
    uf CHAR(2) NOT NULL,
    situacao CHAR (1) NOT NULL,
    id_pessoa INT NOT NULL,
    FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
);

CREATE TABLE aluno (
	id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    matricula VARCHAR(20) NOT NULL,
    situacao CHAR(1) NOT NULL,
	id_pessoa INT NOT NULL,
    FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
);

CREATE TABLE professor (
	id_professor INT PRIMARY KEY AUTO_INCREMENT,
    matricula VARCHAR(20),
    situacao CHAR(1) NOT NULL,
	id_pessoa INT NOT NULL,
    FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
);

CREATE TABLE curso(
	id_curso INT PRIMARY KEY AUTO_INCREMENT,
	descricao VARCHAR(70) NOT NULL,
    carga_horaria VARCHAR(45) NOT NULL,
    data_inicio DATE,
	data_fim DATE,
    id_aluno INT NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
	situacao CHAR (1) NOT NULL
);


CREATE TABLE turma(
	id_turma INT PRIMARY KEY AUTO_INCREMENT,
    instrutores VARCHAR(45),
    data_inicio DATE NOT NULL,
    data_final DATE NOT NULL,
    carga_horaria INT(10) NOT NULL,
    
    id_aluno INT NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    
    id_professor INT NOT NULL,
    FOREIGN KEY (id_professor) REFERENCES professor(id_professor),
    
    id_curso INT NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso),
    
	situacao CHAR (1) NOT NULL
);




