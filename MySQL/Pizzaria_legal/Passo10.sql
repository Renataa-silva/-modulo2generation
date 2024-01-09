SELECT tb_pizzas.*, tb_categorias.massa
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id
WHERE tb_categorias.massa = "Pan";