CREATE DATABASE construtora;

USE construtora;

SELECT * FROM pessoa;

CREATE TABLE pessoa(
	id_pessoa INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(70) NOT NULL,
    cnpj_cpf VARCHAR(11),
    nome_fantasia VARCHAR(45),
    telefone VARCHAR(11) NOT NULL,
    email VARCHAR(75)NOT NULL,
    situacao CHAR(1)NOT NULL
	);
    
CREATE TABLE endereco(
	id_endereco INT PRIMARY KEY AUTO_INCREMENT,
    rua VARCHAR(45),
    cidade VARCHAR(45) NOT NULL,
    uf VARCHAR(2) NOT NULL,
    bairro VARCHAR(45),
    cep VARCHAR(11),
    situacao CHAR(1),
    
    id_pessoa INT NOT NULL,
    FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
    
);
    
    
    
CREATE TABLE colaborador(
	id_colaborador INT PRIMARY KEY AUTO_INCREMENT,
    funcao VARCHAR(45) NOT NULL,
    matricula VARCHAR(45),
    salario DECIMAL(10, 2),
    tipo_contrato VARCHAR(45) NOT NULL,
    situacao CHAR(1),
	
    id_pessoa INT NOT NULL,
    FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
    );
    
CREATE TABLE projeto(
	id_projeto INT PRIMARY KEY AUTO_INCREMENT, 
    valor DECIMAL(10, 2) NOT NULL,
    tipo_projeto VARCHAR(45),
    nome_projeto VARCHAR(45),
    data_inicio DATE,
    previsao DATE NOT NULL,
    data_fim DATE,
    status VARCHAR(45) NOT NULL,
    
    id_colaborador INT NOT NULL,
    FOREIGN KEY (id_colaborador) REFERENCES colaborador(id_colaborador)
    
	);
    
    
CREATE TABLE empreiteira(
	id_empreiteira INT PRIMARY KEY AUTO_INCREMENT,
    area_atuacao VARCHAR(45) NOT NULL,
    tipo_contrato VARCHAR(45) NOT NULL,
    situacao CHAR(1),
    
	id_pessoa INT NOT NULL,
    FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
    
);


CREATE TABLE obra(
	id_obra INT PRIMARY KEY AUTO_INCREMENT, 
    valor DECIMAL(10, 2) NOT NULL,
    data_inicio DATE,
    previsao DATE NOT NULL,
    data_fim DATE,
    status VARCHAR(45) NOT NULL,

    id_colaborador INT NOT NULL,
    FOREIGN KEY (id_colaborador) REFERENCES colaborador(id_colaborador),
  
	id_projeto INT NOT NULL,
    FOREIGN KEY (id_projeto) REFERENCES projeto(id_projeto),
	
    id_empreiteira INT NOT NULL,
    FOREIGN KEY (id_empreiteira) REFERENCES empreiteira(id_empreiteira)
);



 
 -- PESSOA -- 
SELECT * FROM pessoa;
INSERT INTO pessoa(nome, cnpj_cpf, nome_fantasia, telefone, email, situacao)
VALUES
('João Silva', '11111111111', NULL, '11911111111', 'joao@empresa.com', 'A'),
('Carlos Souza', '22222222222', NULL, '11922222222', 'carlos@empresa.com', 'A'),
('Maria Oliveira', '33333333333', NULL, '21933333333', 'maria@empresa.com', 'A'),
('Ana Lima', '44444444444', NULL, '21944444444', 'ana@empresa.com', 'A'), 
('Pedro Santos', '55555555555', NULL, '31955555555', 'pedro@empresa.com', 'A'), 
('Lucas Almeida', '66666666666', NULL, '31966666666', 'lucas@empresa.com', 'A');
 
 
 
 
 
 
 
  -- EMPRESA (PESSOA) --
INSERT INTO pessoa(nome, cnpj_cpf, nome_fantasia, telefone, email, situacao)
VALUES
('Constução do BOB', '12.345.678/0001-90', 'Bob Construções', '(11) 91234-5678', 'construbob@empresaa.com', 'A'),
('construtora ferraZ', '98.765.432/0001-01', 'Ferraz Construções', '(21) 98765-4321', 'ferrazconstru@empresab.com', 'A'),
('Borges Construtora', '11.223.344/0001-12', 'Borges Building', '(31) 99876-5432', 'borgesbuilding@empresac.com', 'A');






 -- ENDERECO -- 

SELECT * FROM endereco;
INSERT INTO endereco(rua, cidade, uf, bairro, cep, situacao, id_pessoa)
VALUES
('Rua A, 123', 'São Paulo', 'SP', 'Bairro A', '01000-000', 'A', 1),
('Rua B, 456', 'Rio de Janeiro', 'RJ', 'Bairro B', '02000-000', 'A', 2),
('Rua C, 789', 'Belo Horizonte', 'MG', 'Bairro C', '03000-000', 'A', 3),
('Rua D, 101', 'Curitiba', 'PR', 'Bairro D', '04000-000', 'A' , 4),
('Rua E, 202', 'Fortaleza', 'CE', 'Bairro E', '05000-000', 'A' , 5),
('Rua F, 303', 'Salvador', 'BA', 'Bairro F', '06000-000', 'A' , 6);


 
 -- COLABORADOR --
SELECT * FROM colaborador;
INSERT INTO colaborador(funcao, matricula, salario, tipo_contrato, situacao, id_pessoa)
VALUES
('Arquiteto', 'MAT001', 8000.00, 'CLT', 'A', 1),  
('Mestre de Obra', 'MAT002', 6000.00, 'CLT', 'A', 2),
('Engenheiro', 'MAT003', 7000.00, 'CLT', 'A', 3),
('Técnica', 'MAT004', 4000.00, 'CLT', 'A', 4),
('Auxiliar de Escritório', 'MAT005', 3000.00, 'CLT', 'A', 5),
('Estagiário', 'MAT006', 1500.00, 'Estágio', 'A', 6);
 
 
 
 -- PROJETO --
 SELECT * FROM projeto;
 INSERT INTO projeto(valor, tipo_projeto, nome_projeto, data_inicio, previsao, data_fim, status, id_colaborador)
 VALUES
(150000.00, 'Residencial', 'Construção de Uma Residência', '2024-01-01', '2024-06-01', null, 'Em andamento', 1),
(250000.00, 'Comercial', 'Construção de um Alojamento', '2024-02-01', '2024-07-01', null, 'Planejado', 1),
(300000.00, 'Industrial', 'Construção de Uma Industria ', '2024-03-01', '2024-08-01', null, 'Em andamento', 1);



-- EMPREITEIRA --
SELECT * FROM empreiteira;
INSERT INTO empreiteira(area_atuacao, tipo_contrato, situacao, id_pessoa)
VALUES 
('Construção Civil', 'CLT', 'A', 1),
('Serviços Gerais', 'Autônomo', 'A', 2),
('Obras Públicas', 'CLT', 'A', 3);

-- OBRA --
SELECT * FROM obra;
INSERT INTO obra(valor, data_inicio, previsao, data_fim, status, id_empreiteira, id_projeto, id_colaborador)
VALUES 
(500000.00, '2024-01-15', '2024-06-15', '2024-06-30', 'Em andamento', 1, 1, 2),
(750000.00, '2024-02-10', '2024-07-10', '2024-07-31', 'Planejado', 2, 2, 1),
(200000.00, '2024-04-20', '2024-09-20', '2024-09-30', 'Concluído', 3, 3, 3); 


