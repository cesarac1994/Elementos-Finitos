--PONTOS DE REFERENCIA DO PROJETO
ref_x = 0 -- ponto de referencia x
ref_y = 0 -- ponto de referencia y

--caracteristicas entreferro
l_ef_y = 1 -- largura_ef_y
l_ef_x = 1 -- largura_ef_x
alt = 10 -- altura trafo
lg = 10 -- largura trafo

--caracteristicas bobina 1
lg_bit_1 = 0.3
alt_bit_1 = 5

--caracteristicas bobina 2
lg_bit_2 = 0.4
alt_bit_2 = 6

-- espaçamento entre o entreferro (ef) e a bobina (bN) 
esp_ef_b1_x = 0.1
esp_ef_b2_x = 0.2
esp_ef_b1_y = ref_y + alt/2 - l_ef_y - alt_bit_1
esp_ef_b2_y = ref_y + alt/2 - l_ef_y - alt_bit_1

------------ENTREFERRO------------------
--coordenadas nós do entreferro
x1 = ref_x
x2 = ref_x + l_ef_x
x3 = ref_x + lg - l_ef_x
x4 = ref_x + lg
y1 = ref_y
y2 = ref_y + l_ef_y
y3 = ref_y + alt - l_ef_y
y4 = ref_y + alt

--Nós do entreferro
mi_addnode(x1, y1)
mi_addnode(x1, y4)
mi_addnode(x2, y2)
mi_addnode(x2, y3)
mi_addnode(x3, y3)
mi_addnode(x3, y2)
mi_addnode(x4, y4)
mi_addnode(x4, y1)

--Segmentos do entreferro
mi_addsegment(x1,y1,x4,y1)
mi_addsegment(x2,y2,x3,y2)
mi_addsegment(x3,y2,x3,y3)
mi_addsegment(x4,y1,x4,y4)
mi_addsegment(x4,y4,x1,y4)
mi_addsegment(x2,y3,x3,y3)
mi_addsegment(x2,y3,x2,y2)
mi_addsegment(x1,y1,x1,y4)

------------BOBINA 1------------------
--referencia = entrada da corrente esquerda
--               saida da corrente direita
--coordenadas entrada
x1_bi1 = ref_x - esp_ef_b1_x - lg_bit_1
x2_bi1 = ref_x - esp_ef_b1_x
y1_bi1 =  
y2_bi1 = 

--coordenadas saida
x1_bo1 = 
x2_bo1 = 
y1_bo1 =  
y2_bo1 = 

------------BOBINA 2------------------
--referencia = entrada da corrente esquerda
--               saida da corrente direita
--coordenadas entrada
x1_bi2 = 
x2_bi2 = 
y1_bi2 =  
y2_bi2 = 

--coordenadas saida
x1_bo2 = 
x2_bo2 = 
y1_bo2 =  
y2_bo2 = 
