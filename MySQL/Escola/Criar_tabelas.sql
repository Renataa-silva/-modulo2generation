USE db_edutech;

CREATE TABLE tb_estudantes(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	rg INT,
    cpf INT,
    datamatricula DATE,
    curso VARCHAR(255) NOT NULL,
	nota DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
);