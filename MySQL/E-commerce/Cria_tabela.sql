USE ecommerce;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantestoque INT,
    tipo VARCHAR (200) NOT NULL,
	preco DECIMAL NOT NULL,
    datacadastro DATE,
    PRIMARY KEY (id)
);