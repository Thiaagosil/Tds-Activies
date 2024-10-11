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
INSERT INTO pessoa (nome, cnpj_cpf, nome_fantasia, telefone, email, situacao)
VALUES
('Empresa 01', '12345678190', 'Bob Construções', '91234-5678', 'construbob@empresaa.com', 'A'),
('Empresa 02', '98765432101', 'Ferraz Construções', ' 98765-4321', 'ferrazconstru@empresab.com', 'A'),
('Empresa 03', '11223344112', 'Borges Building', ' 99876-5432', 'borgesbuilding@empresac.com', 'A');
-





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


 -- ENDERECO EMPRESA -- 
 
INSERT INTO endereco(rua, cidade, uf, bairro, cep, situacao, id_pessoa)
VALUES
('Avenida Empresarial, 100', 'Brasília', 'DF', 'Centro', '01001-000', 'A', 7),
('Rua Corporativa, 200', 'Brasilia', 'DF', 'Botafogo', '02001-000', 'A', 8),
('Estrada das Empresas, 300', 'Brasilia', 'DF', 'Savassi', '03001-000', 'A', 12);


 
 -- COLABORADOR --
 
SELECT * FROM colaborador;
INSERT INTO colaborador(funcao, matricula, salario, tipo_contrato, situacao, id_pessoa)
VALUES
('Arquiteto', 'MAT001', 8000.00, 'CLT', 'A', 1),  
('Mestre de Obra', 'MAT002', 6000.00, 'CLT', 'A', 2),
('Arquiteto', 'MAT003', 7000.00, 'CLT', 'A', 3),
('Mestre de Obra', 'MAT004', 4000.00, 'CLT', 'A', 4),
('Arquiteto', 'MAT005', 3000.00, 'CLT', 'A', 5),
('Mestre de Obra', 'MAT006', 1500.00, 'Estágio', 'A', 6);
 
 
 
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
('Construção Civil', 'CLT', 'A', 7),
('Serviços Gerais', 'Autônomo', 'A', 8),
('Obras Públicas', 'CLT', 'A', 12);

-- OBRA --
SELECT * FROM obra;
INSERT INTO obra(valor, data_inicio, previsao, data_fim, status, id_empreiteira, id_projeto, id_colaborador)
VALUES 
(500000.00, '2024-01-15', '2024-06-15', '2024-06-30', 'Em andamento', 1, 1, 2),
(750000.00, '2024-02-10', '2024-07-10', '2024-07-31', 'Planejado', 2, 2, 1),
(200000.00, '2024-04-20', '2024-09-20', '2024-09-30', 'Concluído', 3, 3, 3); 


    -- UC06 - Exercício Responsável pelo projeto




    SELECT 
p.nome,
c.matricula,
c.salario,
pj.nome_projeto,
pj.tipo_projeto,
pj.valor,
pj.data_inicio,
pj.previsao,
(data_inicio + INTERVAL previsao DAY) AS data_prevista_entrega,
pj.data_fim,
pj.status
FROM projeto pj
INNER JOIN colaborador c ON c.id_colaborador = pj.id_colaborador
INNER JOIN pessoa p ON p.id_pessoa = c.id_pessoa;




-- UC06 - Exercício gerar relatório Banco de dados Empreiteira.
   
 SELECT
	o.valor,
    o.data_inicio,
    o.previsao,
    (data_inicio + INTERVAL previsao DAY) AS data_entrega,
    o.data_fim AS "previsao_entrega",
    o.status,
    p.telefone,
    en.rua,
    en.cidade,
    en.uf
    FROM obra o  
    INNER JOIN empreiteira ep ON ep.id_empreiteira = o.id_empreiteira
    INNER JOIN pessoa p ON p.id_pessoa = ep.id_pessoa
    INNER JOIN endereco en ON en.id_pessoa = p.id_pessoa;

-- UC06 - Exercício trazer os dados para o relatorio.

SELECT 
pe.nome AS nome_empresa,
pm.nome AS nome_mestre_obra,
p.nome AS nome_arquiteto,
pj.nome_projeto,
pj.valor AS valor_projeto,
o.valor AS valor_obra,
o.data_inicio AS data_inicio_obra

 FROM obra o #id_empreiteira id_projeto id_colaborador
INNER JOIN projeto pj ON pj.id_projeto = o.id_projeto # id_colaborador
INNER JOIN colaborador c ON c.id_colaborador = pj.id_colaborador # id_pessoa
INNER JOIN pessoa p ON p.id_pessoa = c.id_pessoa
INNER JOIN empreiteira ep ON ep.id_empreiteira = o.id_empreiteira # id_pessoa
INNER JOIN pessoa pe ON pe.id_pessoa = ep.id_pessoa
INNER JOIN colaborador cm ON cm.id_colaborador = o.id_colaborador
INNER JOIN pessoa pm ON pm.id_pessoa = cm.id_pessoa;



-- UC06 - Exercício trazer os dados do endereço de  Empreiteira, Mestre de Obra e o Arquiteto..
SELECT
    pm.nome AS nome_mestre_obra,
    p.nome AS nome_arquiteto,
    
    ed.rua AS rua_empresa,
    ed.cep AS cep_empresa,
    ed.cidade AS cidade_empresa,
    ed.uf AS uf_empresa,
    
    em.rua AS rua_mestre_obra,
    em.cep AS cep_mestre_obra,
    em.cidade AS cidade_mestre_obra,
    em.uf AS uf_mestre_obra,
    
    e.rua AS rua_arquiteto,
    e.cep AS cep_arquiteto,
    e.cidade AS cidade_arquiteto,
    e.uf AS uf_arquiteto
FROM
    projeto pj
INNER JOIN obra o ON pj.id_projeto = o.id_projeto 
INNER JOIN colaborador c ON c.id_colaborador = pj.id_colaborador
INNER JOIN pessoa p ON p.id_pessoa = c.id_pessoa
INNER JOIN empreiteira ep ON ep.id_empreiteira = o.id_empreiteira
INNER JOIN pessoa pe ON pe.id_pessoa = ep.id_pessoa
INNER JOIN colaborador cm ON cm.id_colaborador = o.id_colaborador
INNER JOIN pessoa pm ON pm.id_pessoa = cm.id_pessoa
INNER JOIN endereco ed ON ed.id_pessoa = pe.id_pessoa
INNER JOIN endereco em ON em.id_pessoa = pm.id_pessoa
INNER JOIN endereco e ON e.id_pessoa = p.id_pessoa;


