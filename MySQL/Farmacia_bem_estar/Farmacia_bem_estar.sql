CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    valor DECIMAL(6, 2) NOT NULL,
    descricao TEXT,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
("Medicamentos", "Produtos para tratamentos de saúde"),
("Cosméticos", "Produtos de beleza e cuidados pessoais"),
("Higiene", "Produtos para higiene pessoal e cuidados diários"),
("Vitaminas", "Suplementos vitamínicos para a saúde"),
("Bebidas", "Bebidas diversas");

INSERT INTO tb_produtos (nome, valor, descricao, id_categoria) VALUES
("Paracetamol", 15.99, "Analgésico e antitérmico", 1),
("Shampoo Revitalizante", 62.45, "Para cabelos saudáveis e brilhantes", 2),
("Escova de Dentes Ultramacia", 7.90, "Cerdas suaves para uma escovação delicada", 3),
("Multivitamínico A-Z", 49.99, "Vitaminas essenciais para a saúde", 4),
("Loção Hidratante Corporal", 25.00, "Para pele macia e hidratada", 2),
("Fio Dental Antiplaca", 8.50, "Protege contra a formação de placa bacteriana", 3),
("Energetico", 17.95, "Desperte sua energia", 5),
("Creme Anti-Idade", 55.00, "Reduz rugas e linhas de expressão", 2);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.*, tb_categorias.nome
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT tb_produtos.*, tb_categorias.nome
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = 'Cosméticos';





