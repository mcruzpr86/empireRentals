DROP DATABASE IF EXISTS `rebelrentals`;
CREATE DATABASE if not exists `rebelrentals`;
USE `rebelrentals`;
CREATE TABLE if not exists `products` ( 
 `id` int (11) AUTO_INCREMENT NOT NULL,     
 `item_name` VARCHAR(255) NOT NULL,     
 `item_description` varchar(1000),     
 `category` varchar(255) NOT NULL references categories(category),    
 `price` decimal(13,2) NOT NULL,  
 `quantity` int(11) NOT NULL,  
 `imgurl` varchar(1000),  /* Set ID as primary key */  
 PRIMARY KEY ( `id` ) );
 
CREATE TABLE if not exists `categories` (  
`category` varchar(255) NOT NULL,  
`item_description` varchar(1000) NOT NULL,  /* Set ID as primary key */  
PRIMARY KEY ( `category` ) );
insert into categories (category, item_description) 
values ("Weapons", "guns"), ("Vehicles", "Spacecrafts & land_vehicles"), ("Armor", "body_armor & helmets");
insert into products (item_name, item_description, category, price, quantity, imgurl)
values ("Standard Issue Imperial", "Regular white armor developed on planet gilvaanen", "Armor", 100, 10, "https://vignette.wikia.nocookie.net/starwars/images/e/e4/Anovos_Stormtrooper_Armor.png/revision/latest?cb=20160407222252"),   
("", "Regular white armor developed on planet gilvaanen", "Armor", 100, 10, "https://vignette.wikia.nocookie.net/starwars/images/e/e4/Anovos_Stormtrooper_Armor.png/revision/latest?cb=20160407222252"),   
("gsfdgs", "Regular white armor developed on planet gilvaanen", "Armor", 100, 10, "https://vignette.wikia.nocookie.net/starwars/images/e/e4/Anovos_Stormtrooper_Armor.png/revision/latest?cb=20160407222252"),    
("Standard Issue Imperial", "Regular white armor developed on planet gilvaanen", "Armor", 100, 10, "https://vignette.wikia.nocookie.net/starwars/images/e/e4/Anovos_Stormtrooper_Armor.png/revision/latest?cb=20160407222252")
