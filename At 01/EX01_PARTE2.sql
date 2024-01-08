USE servico_rh;

CREATE TABLE tb_informacoes(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	idade INT,
    dataadmissao DATE,
    funcao VARCHAR (255) NOT NULL,
	salario DECIMAL NOT NULL,
	PRIMARY KEY (id)
);