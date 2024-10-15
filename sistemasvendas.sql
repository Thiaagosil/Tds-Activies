CREATE DATABASE sistemavendas;

USE sistemavendas;

CREATE TABLE pessoa(
id_pessoa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(70) NOT NULL,
idade INT,
cpf VARCHAR(11) NOT NULL,
situacao CHAR(1)
);



CREATE TABLE atendente (
	id_atendente INT PRIMARY KEY AUTO_INCREMENT,
    matricula VARCHAR(30) NOT NULL,
	salario DECIMAL(10, 2) NOT NULL,
    situacao CHAR(1),
    
	id_pessoa INT,
    FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
);

CREATE TABLE cliente(
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
	telefone VARCHAR(11) NOT NULL,
    saldo DECIMAL(10, 2),
    email VARCHAR(75) NOT NULL,
    situacao CHAR(1),
    
	id_pessoa INT,
    FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
    
);

CREATE TABLE categoria_produto (
	id_categoria_produto INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(75) NOT NULL
);

CREATE TABLE produto (
	id_produto INT PRIMARY KEY AUTO_INCREMENT,
    codigo VARCHAR(20) NOT NULL,
    descricao VARCHAR(75) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
	situacao CHAR(1),
	quantidade_estoque INT NOT NULL,

    id_categoria_produto INT,
    FOREIGN KEY (id_categoria_produto) REFERENCES categoria_produto(id_categoria_produto)
);




CREATE TABLE venda (
	id_venda INT PRIMARY KEY AUTO_INCREMENT,
	desconto VARCHAR(45),
    acrescimo VARCHAR(45),
    valor_bruto DECIMAL(10, 2) NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,
	situacao CHAR(1),
    
	id_atendente INT,
    id_cliente INT,
    FOREIGN KEY (id_atendente) REFERENCES atendente(id_atendente),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);





CREATE TABLE itens_venda (
	id_itens_venda INT PRIMARY KEY AUTO_INCREMENT,
    desconto VARCHAR(45),
    acrescimo VARCHAR(45),
    quantidade INT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
	valor_bruto DECIMAL(10, 2) NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,
    cancelado CHAR(1),

	id_venda INT,
    FOREIGN KEY (id_venda) REFERENCES venda(id_venda),

	id_produto INT,
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);


 
 -- PESSOA -- 
SELECT * FROM pessoa;
INSERT INTO pessoa(nome, idade ,cpf, situacao)
VALUES
 ('Alice Silva', 30, '12345678901', 'A'),
('Bruno Santos', 25, '10987654321', 'A'),
('Carlos Oliveira', 40, '12345098765', 'A'),
('Diana Costa', 28, '98765123456', 'A'),
('Elena Martins', 35, '45678912300', 'A'),
('Fernando Lima', 22, '32165498710', 'A');


 -- ATENDENTE -- 
SELECT * FROM atendente;
INSERT INTO atendente(matricula, salario ,situacao, id_pessoa)
VALUES
('MAT001', 2500.00, 'A', 1),
('MAT002', 3000.00, 'A', 2), 
('MAT003', 2800.00, 'A', 3);


 -- CLIENTE -- 
SELECT * FROM cliente;
INSERT INTO cliente(telefone, saldo ,email , situacao ,id_pessoa)
VALUES
('61987654321', 1000.00, 'alice@gmail.com', 'A', 4),
('61876543210', 500.50, 'bruno@gmail.com', 'A', 5),   
('61765432109', 2500.00, 'carlos@gmail.com', 'A', 6);  



 -- CATEGORIA PRODUTO -- 
SELECT * FROM categoria_produto;
INSERT INTO categoria_produto(descricao)
VALUES
	  ('Eletrônicos'),
	  ('Roupas'),
	  ('Alimentos'),
	  ('Móveis'),
	  ('Brinquedos'),
	  ('Cosméticos');
      
	
 -- PRODUTO -- 
SELECT * FROM produto;
INSERT INTO produto(codigo, descricao, preco, situacao, quantidade_estoque, id_categoria_produto)
VALUES
		('P001', 'Smartphone', 1500.00, 'A', 10, 1),
		('P002', 'Camiseta', 49.90, 'A', 50, 2),
		('P003', 'Pizza', 100.00, 'A', 15, 3),
		('P004', 'Mesa de Jantar', 800.00, 'A', 5, 4),
		('P005', 'Boneca', 25.50, 'A', 100, 5),
		('P006', 'Creme Hidratante', 35.00, 'A', 200, 6);

 -- VENDAS -- 
SELECT * FROM atendente;
SELECT * FROM cliente;
SELECT * FROM venda;
INSERT INTO venda(Desconto, Acrescimo, valor_bruto, valor_total, situacao, id_atendente, id_cliente)	
VALUES
		('50.00', NULL, 1500.00, 1450.00, 'A', 1, 4), 
		('100.00', NULL, 3000.00, 2900.00, 'A', 2, 5), 
		('50.00', NULL, 800.00, 750.00, 'A', 3, 6);




-- ITENS VENDAS -- 

SELECT * FROM itens_venda;
INSERT INTO itens_venda(desconto, acrescimo, quantidade, preco,  valor_bruto, valor_total, cancelado, id_venda, id_produto)
VALUES
		(NULL, NULL, 2, 1500.00, 3000.00, 2900.00, 'N', 1, 1), 
		(NULL, NULL, 1, 800.00, 800.00, 780.00, 'N', 2, 2),    
		(NULL, NULL, 5, 50.00, 250.00, 240.00, 'S', 3, 3);  
