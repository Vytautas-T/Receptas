1-SELECT kaina FROM iingredientas
2-SELECT pavadinimas, kalorijos_per100g FROM `iingredientas` WHERE kalorijos_per100g < 90
3-SELECT pavadinimas, kaina FROM `iingredientas` WHERE kaina > 2.20 AND kaina < 5.80
4-SELECT * FROM `iingredientas` WHERE id > 6 AND kaina < 10
5-SELECT MAX(kaina) FROM `iingredientas` 
6-SELECT id,pavadinimas FROM `receptas`
7-SELECT AVG(kaina) FROM `receptas`
8-SELECT SUM(kaina) FROM `receptas`
9-SELECT id,pavadinimas FROM `receptas` WHERE id > 3 and id < 8 and Kalorijos > 500
10-SELECT id,pavadinimas FROM `receptas` WHERE kaina < 10 and Kalorijos < 350
11-SELECT AVG(Kalorijos) FROM `receptas` WHERE id > 1 and id < 5
12-SELECT id,pavadinimas, MAX(kaina) FROM `receptas`
13-SELECT pavadinimas,nurodymai, MAX(Kalorijos) FROM `receptas`
14-SELECT SELECT kaina FROM `receptas`ORDER BY kaina DESC LIMIT 3;
15-SELECT kaina FROM `receptas` ORDER BY kaina LIMIT 5;
SELECT Uzduotys su JOIN:
1-Select i.id, i.pavadinimas
From receptas r
Join receptai_igredientai_sujungimas s ON s.recepto_id = r.id
Join iingredientas i ON i.id = s.igrediento_id
Where r.id = 1
2-Select i.kaina, i.kalorijos_per100g
From receptas r
Join receptai_igredientai_sujungimas s ON s.recepto_id = r.id
Join iingredientas i ON i.id = s.igrediento_id
Where r.id = 2
3-select sum(i.kaina)
from receptai_igredientai_sujungimas ris 
join receptas r on r.id = ris.recepto_id
join iingredientas i on i.id = ris.igrediento_id
where r.id = 3
4-select a.id, a.alergeno_pavadinimas
from receptai_alergijos ris
join receptas r on r.id = ris.recepto_id
join alergijos a on a.id = ris.alergijos_id
where r.id = 4
5-select a.*
from receptai_alergijos ris
join receptas r on r.id = ris.recepto_id
join alergijos a on a.id = ris.alergijos_id
where r.kaina < 7.2
6-select DISTINCT a.* 
from receptai_igredientai_sujungimas ris
join receptas r on r.id = ris.recepto_id
join iingredientas a on a.id = ris.igrediento_id
where a.id in (1,2,3)
7-
LABAI SUNKIOS UŽKLAUSOS:
1 - select r.*
from receptas r
inner join (
	select r.id, count(i.id) as maxas
	FROM receptai_igredientai_sujungimas ris
	join receptas r on ris.recepto_id = r.id
	join iingredientas i on ris.igrediento_id = i.id
	group by r.id
	order by maxas desc
	limit 1
) j on r.id = j.id