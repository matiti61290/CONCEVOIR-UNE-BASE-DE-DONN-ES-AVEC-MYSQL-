use tifosi;

insert into marque(id_marque, nom_marque) values
	(1, "Coca-cola"), (2, "Cristalline"), (3, "Monster"), (4, "Pepsico");

insert into boisson(id_boisson, nom_boisson) values
	(1, "Coca-cola zéro"), (2, "Coca-cola original"), (3, "Fanta citron"), (4, "Fanta orange"),
	(5,"Caprisune"), (6, "Pepsi"), (7,"Pepsi Max zéro"), (8, "Lipton zéro"), (9, "Lipton Peach"),
	(10, "Monster energy ultra gold"), (11, "Monster energy ultra blue"), (12, "Eau de source");

insert into ingredient(id_ingredient, nom_ingredient) values
	(1,"Ail"), (2, "Ananas"), (3, "Artichaut"), (4,"Bacon"), (5, "Base tomate"), (6, "Base crème"),
	(7, "Champignon"), (8, "Chevre"), (9, "Cresson"), (10, "Emmental"), (11, "Gorgonzola"),
	(12, "Jambon cuit"), (13, "Jambon fumé"), (14, "Mozarella"), (15, "Oeuf"), (16, "Oignon"), (17, "Olivenoir"),
	(18, "Olive verte"), (19, "Parmesan"), (20, "Piment"), (21, "Poivre"), (22, "Pomme de terre"),
	(23, "Raclette"), (24, "Salami"), (25, "Tomate cerise");

insert into focaccia(id_focaccia, nom_focaccia) values
	(1, "Mozaccia"), (2, "Gorgonzollaccia"), (3, "Raclaccia"), (4, "Emmentalaccia"),
	(5, "Tradizione"), (6, "Hawaienne"), (7, "Américaine"), (8, "Paysanne");

insert into focacciaIngredient(focacciaId, ingredientId) values
-- Mozaccia
	(1,5), (1,14), (1,9), (1,13), (1,1), (1,3) ,(1,7), (1,19), (1,21), (1,17),
-- Gorgonzollaccia
	(2,5), (2,11), (2,9), (2,1), (2,7), (2,19), (2,21), (2,17),
-- Raclaccia
	(3,5), (3,23), (3,9), (3,1), (3,7), (3,19), (3,21),
-- Emmentalaccia
	(4,6), (4,10), (4,9), (4,7), (4,19), (4,21), (4,16),
-- Tradizione
	(5,5), (5,14), (5,9), (5,12), (5,7), (5,19), (5,21), (5,17), (5,18), 
-- Hawaienne
	(6,5), (6,14), (6,9), (6,4), (6,2), (6,20), (6,19), (6,21), (6,17),
-- Americaine
	(7,5), (7,14), (7,9), (7,4), (7,22), (7,19), (7,21), (7,17),
-- Paysanne
	(8,6), (8,8), (8,9), (8,22), (8,13), (8,1), (8,3), (8,7), (8,19), (8,21), (8,17), (8,15);