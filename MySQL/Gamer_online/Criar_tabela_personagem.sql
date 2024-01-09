CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
    pontosdevida INT NOT NULL,
    nivel INT NOT NULL,
    habilidadeespecial VARCHAR(255) NOT NULL,
    poderdeataque INT NOT NULL, 
    poderdedefesa INT NOT NULL, 
    id_classe BIGINT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
	);
    
    
    SELECT * FROM tb_personagens;

