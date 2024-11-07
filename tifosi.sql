create database if not exists tifosi;


CREATE USER IF NOT EXISTS 'tifosi'@'localhost' IDENTIFIED BY 'tifosiadmin';
grant all privileges on tifosi.* to 'tifosiadmin';
flush privileges;

use tifosi;

create table client (
	id_client int primary key not null,
	nom_client varchar(45) not null,
	age int not null,
	cp_client int not null
);

create table marque (
	id_marque int primary key auto_increment not null,
	nom_marque varchar(45) unique not null
);

create table boisson (
	id_boisson int primary key auto_increment not null,
	nom_boisson varchar(45) not null,
	marqueId varchar(45) not null,
	foreign key(marqueId) references marque(id_marque)
);

create table ingredient (
	id_ingredient int primary key auto_increment not null,
	nom_ingredient varchar(45) not null
);

create table focaccia (
	id_focaccia int primary key auto_increment not null,
	nom_focaccia varchar(45) not null,
	prix_focaccia float not null
);

create table menu (
	id_menu int primary key not null,
	nom_menu varchar(45) not null,
	prix_menu float not null,
	boissonId int not null,
	focacciaId int not null,
	foreign key(boissonId) references boisson(id_boisson),
	foreign key(focacciaId) references focaccia(id_focaccia)
);

create table ClientFocaccia (
	clientId int not null,
	focacciaId int not null,
	foreign key(clientId) references client(id_client),
	foreign key(focacciaId) references focaccia(id_focaccia),
	jour DATE
);

create table ClientMenu (
	clientId int not null,
	menuId int not null,
	foreign key(clientId) references client(id_client),
	foreign key(menuId) references menu(id_menu),
	jour DATE
);

create table focacciaIngredient (
	focacciaId int not null,
	ingredientId int not null,
	primary key (focacciaId, ingredientId),
	foreign key (focacciaId) references focaccia(id_focaccia),
	foreign key (ingredientId) references ingredient(id_ingredient)
);

create view focacciaIngredientView AS 
SELECT 
	focaccia.nom_focaccia,
	focaccia.prix_focaccia, 
	GROUP_CONCAT(ingredient.nom_ingredient ORDER BY ingredient.nom_ingredient SEPARATOR ', ') AS ingredients 
FROM focaccia 
JOIN focacciaingredient ON focaccia.id_focaccia = focacciaingredient.focacciaId 
JOIN ingredient ON focacciaingredient.ingredientId = ingredient.id_ingredient 
GROUP BY focaccia.id_focaccia;