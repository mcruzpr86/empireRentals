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
 `createdat` date,
 `updatedat` date,
 `categoryID` int,
 PRIMARY KEY ( `id` ) );
CREATE TABLE if not exists `categories` (
`category` varchar(255) NOT NULL,
`item_description` varchar(1000) NULL,  /* Set ID as primary key */
`createdat` date,
`updatedat` date,
PRIMARY KEY ( `category` ) );
insert into categories (category, createdat, updatedat)
values ("Weapons", current_timestamp(), current_timestamp()), ("Vehicles", current_timestamp(), current_timestamp()), ("Armor", current_timestamp(), current_timestamp());
insert into products (item_name, item_description, category, price, quantity, imgurl, createdat, updatedat)
values
-- Armors for rent
("Standard Issue Imperial", "Regular white armor developed on planet gilvaanen", "Armor", 100, 10, "https://vignette.wikia.nocookie.net/starwars/images/e/e4/Anovos_Stormtrooper_Armor.png/revision/latest?cb=20160407222252",  current_timestamp(),  current_timestamp()),
("Sand Trooper Armor", "Armor built to withstand the heat of the deserts of endor", "Armor", 120, 8, "https://vignette.wikia.nocookie.net/starwars/images/7/78/Sandtrooper_DICE.png/revision/latest?cb=20151107002620",  current_timestamp(),  current_timestamp()),
("Scout Trooper Armor", "Armor built for mobility on speed bikes and sharpshooting", "Armor", 125, 10, "https://vignette.wikia.nocookie.net/starwars/images/c/c4/Biker_Scout_DICE.png/revision/latest?cb=20151106042648",  current_timestamp(),  current_timestamp()),
("Death Trooper", "Elite armor designed for stealth missions, espionage, and lethality", "Armor", 100, 10, "https://vignette.wikia.nocookie.net/starwars/images/e/e3/Death_Trooper-Sideshow.png/revision/latest?cb=20160913102558",  current_timestamp(),  current_timestamp()),
("Crimson Trooper", "Armor designed to withstand the heat of a volcano", "Armor", 115, 10, "https://vignette.wikia.nocookie.net/starwars/images/4/4b/Crimson_stormtrooper-Rebelscum.jpg/revision/latest?cb=20170905164518",  current_timestamp(),  current_timestamp()),
("Incinerator Trooper", "Built to withstand heat, built in strength support", "Armor", 120, 10, "https://vignette.wikia.nocookie.net/starwars/images/f/ff/Incinerator_Stormtrooper_Sideshow.png/revision/latest?cb=20200121025506", current_timestamp(),  current_timestamp()),
-- weapons for rent
('F-11ABA Heavy Blaster Cannon', 'The F-11ABA is a deadly blaster rifle which utilized an amplifier barrel to produce a powerful explosive round.', 'Weapon', '150', '20', 'https://vignette.wikia.nocookie.net/starwars/images/5/50/F-11aba-TROSVD.jpg/revision/latest/scale-to-width-down/498?cb=20191231200915', current_timestamp(), current_timestamp()),
('F-11D blaster rifle', 'The F-11D blaster rifle is the standard issue weapon of the First Order stormtroopers. It is a blaster rifle manufactured by Sonn-Blas Corporation.', 'Weapon', '150', '20', 'https://vignette.wikia.nocookie.net/starwars/images/d/d5/Sonn-Blas_F-11D_blaster_rifle.png/revision/latest?cb=20151120012331', current_timestamp(), current_timestamp()),
('E-11 blaster rifle', 'The E-11 blaster rifle was a light but powerful blaster rifle manufactured by BlasTech Industries. It served as the standard issue weapon of Imperial stormtroopers.', 'Weapon', '150', '20', 'https://vignette.wikia.nocookie.net/starwars/images/2/20/E-11_blaster_rifle_DICE.png/revision/latest?cb=20151106030234', current_timestamp(), current_timestamp()),
('E-10 blaster rifle', 'The E-10 blaster rifle was a model of blaster rifle manufactured by BlasTech Industries used by Imperial Army soldiers of the Galactic Empire', 'Weapon', '150', '20', 'https://vignette.wikia.nocookie.net/starwars/images/6/6f/E-10.png/revision/latest?cb=20181125220049', current_timestamp(), current_timestamp()),
('DC-15A blaster carbine', 'The DC-15A blaster carbine was a blaster carbine model used by the Grand Army of the Republic.', 'Weapon', '150', '20', 'https://vignette.wikia.nocookie.net/starwars/images/3/33/DC-15A_blaster_-_SW_Card_Trader.png/revision/latest/scale-to-width-down/1000?cb=20160710015218', current_timestamp(), current_timestamp()),
('DLT-20A blaster rifle', 'The DLT-20A blaster rifle,[4] also known as the DLT-20A laser rifle,[1] was a model of laser rifle produced by BlasTech Industries. Members of the Galactic Empire\'s Stormtrooper Corps would use these.', 'Weapon', '150', '20', 'https://vignette.wikia.nocookie.net/starwars/images/8/8e/DTL20-A_Pulse_Cannon_DICE.png/revision/latest/scale-to-width-down/1000?cb=20151106043833',  current_timestamp(), current_timestamp()),
('T-21 light repeating blaster', 'The T-21 light repeating blaster, also known as the T-21 heavy blaster or simply the T-21 blaster rifle, was a model of light repeating blaster manufactured by BlasTech Industries[1] and used by some of the Galactic Empire\'s Stormtrooper Corps.', 'Weapon', '150', '20', 'https://vignette.wikia.nocookie.net/starwars/images/6/68/T-21_Blaster_DICE.png/revision/latest?cb=20151106042248',  current_timestamp(), current_timestamp()),
('DLT-19 heavy blaster rifle', 'The DLT-19 heavy blaster rifle was a model of blaster rifle manufactured by BlasTech Industries. They were used by stormtroopers of the Galactic Empire.', 'Weapon', '150', '20', 'https://vignette.wikia.nocookie.net/starwars/images/8/8e/DLT-19_DICE.png/revision/latest?cb=20161022005026',  current_timestamp(), current_timestamp()),
('Scatter gun', 'The scatter gun was a powerful slugthrower weapon that was used by the Galactic Republic and Galactic Empire.', 'Weapon', '150', '20', 'https://vignette.wikia.nocookie.net/starwars/images/f/fc/StarCardBig_ScatterGun_Upgrade_01-c30efad4.png/revision/latest?cb=20160516223530',  current_timestamp(), current_timestamp()),
-- Vehicles for rent
('74-Z speeder bike', 'The 74-Z speeder bike were usually piloted by scout troopers and were able to jam comlinks. ', 'Vehicles', '300', '10', 'https://vignette.wikia.nocookie.net/starwars/images/4/47/Speeder_Bike_DICE.png/revision/latest/scale-to-width-down/999?cb=20171102044625',  current_timestamp(), current_timestamp()),
('Combat speeder', 'During the rule of the Galactic Empire, the Imperial Army\'s Imperial Armor Corps made use of combat speeders.', 'Vehicles', '200', '20', 'https://vignette.wikia.nocookie.net/starwars/images/3/38/GrievousCombatSpeeder.png/revision/latest?cb=20160911012355',  current_timestamp(), current_timestamp()),
('BARC speeder', 'The Biker Advanced Recon Commando (BARC) speeder was a speeder bike manufactured by Aratech Repulsor Company. It was designed for use by the Galactic Republic\'s Grand Army during the Clone Wars.', 'Vehicles', '9500', '3', 'https://vignette.wikia.nocookie.net/starwars/images/4/4a/BARCspeeder-SWBFII.jpg/revision/latest?cb=20191030165446',  current_timestamp(), current_timestamp()),
('614-AvA speeder bike', 'The 614-AvA speeder bike, also known as the Lothal Speeder Bike, was an Imperial Military speeder bike model manufactured by Aratech Repulsor Company. The Galactic Empire utilized the vehicle most notably during its occupation of Lothal.', 'Vehicles', '4200', '5', 'https://vignette.wikia.nocookie.net/starwars/images/b/b5/Speeder_bike_disney_xd.jpg/revision/latest?cb=20151019032852',  current_timestamp(), current_timestamp()),
('CK-6 swoop bike', 'The CK-6 swoop bikes were swoop bikes specifically modified to operate in freezing weather. They were used by the clone troopers of the Galactic Republic.', 'Vehicles', '750', '4', 'https://vignette.wikia.nocookie.net/starwars/images/1/14/Freecobike.png/revision/latest/scale-to-width-down/1000?cb=20121215052810',  current_timestamp(), current_timestamp()),
('Longspur STAP', 'Longspur STAPs were a make of one-man hoverbike available during the Cold War between the Galactic Republic and the reconstituted Sith Empire.', 'Vehicles', '500', '30', 'https://vignette.wikia.nocookie.net/starwars/images/1/1c/Longspur_STAP.jpg/revision/latest?cb=20131209131858',  current_timestamp(), current_timestamp()),






('Sandcrawler', 'Sandcrawlers, originally called digger crawlers, were huge mobile fortresses used by the Jawas as their transport and shelter in the deserts of Tatooine and Arvala-7.', 'Vehicles', '500', '1', 'https://vignette.wikia.nocookie.net/starwars/images/f/ff/Sandcrawler.png/revision/latest/scale-to-width-down/1000?cb=20130812001443',  current_timestamp(), current_timestamp()),
('IG-227 Hailfire-class droid tank', 'The IG-227 Hailfire-class droid tank was a model of droid tank manufactured by Haor Chall Engineering that was used by the InterGalactic Banking Clan and Confederacy of Independent Systems during the Clone Wars as well as the Alliance to Restore the Republic during the Galactic Civil War.', 'Vehicles', '60000', '5', 'https://vignette.wikia.nocookie.net/starwars/images/6/67/Hailfire_Droid_Tank_WotF.png/revision/latest/scale-to-width-down/999?cb=20190616223924', current_timestamp(), current_timestamp()),
('Elite AT-AT', 'A modified AT-AT, the Elite AT-AT was armed with thicker and darker armor, and heavier laser cannons. It was piloted by an elite vehicle crew who were among the best pilots in the Galactic Empire.', 'Vehicles', '160000', '5', 'https://vignette.wikia.nocookie.net/starwars/images/1/11/SWC_Elite_AT-AT.png/revision/latest?cb=20161016223101',  current_timestamp(), current_timestamp()),
('AT-AT', 'The All Terrain Armored Transport (AT-AT) was a four-legged combat walker used by the ground forces of the Galactic Empire, and the First Order.', 'Vehicles', '1500', '8', 'https://vignette.wikia.nocookie.net/starwars/images/1/16/AT-AT_2_Fathead.png/revision/latest/scale-to-width-down/1000?cb=20161108042721',  current_timestamp(), current_timestamp()),
('Imperial-class Star Destroyer', 'The Imperial-class Star Destroyer (ISD) known generally as the Imperial Star Destroyer or as an Impstar, was a product line of massive dagger-shaped capital ships of the Imperial Navy and later the Navy of the First Order.', 'Vehicles', '150000000', '0', 'https://vignette.wikia.nocookie.net/starwars/images/2/2a/ISD-SWE.png/revision/latest?cb=20140718023302',  current_timestamp(), current_timestamp()),
('TIE fighter', 'The TIE/ln starfighter was a small, short-range fighter developed, manufactured, and mass produced by Sienar Fleet Systems (SFS). Developed by SFS company head Raith Sienar', 'Vehicles', '400', '15', 'https://vignette.wikia.nocookie.net/starwars/images/d/d1/TIE_Fighter_DICE.png/revision/latest/scale-to-width-down/999?cb=20161021230639',  current_timestamp(), current_timestamp()),
('Alpha-3 Nimbus-class V-wing starfighter', 'The Alpha-3 Nimbus-class V-wing starfighter, also known as the Alpha-3 Nimbus or V-wing starfighter, was a starfighter model manufactured by Kuat Systems Engineering', 'Vehicles', '120000', '2', 'https://vignette.wikia.nocookie.net/starwars/images/a/a9/V-wing_BF2.png/revision/latest/scale-to-width-down/1000?cb=20170825000555', current_timestamp(), current_timestamp()),
('Armored Assault Tank', 'The Armored Assault Tank, also known as the AAT battle tank or the AAT-1 Hover Tank, was a tank vehicle used by the Trade Federation.', 'Vehicles', '750', '4', 'https://vignette.wikia.nocookie.net/starwars/images/c/c9/AAT_BF2.png/revision/latest/scale-to-width-down/1000?cb=20170825000512', current_timestamp(), current_timestamp()),
('All Terrain MegaCaliber Six (AT-M6)', 'The All Terrain MegaCaliber Six (AT-M6), also known as the Gorilla Walker or First Order Heavy Assault Walker, was a mobile heavy artillery walker used by the First Order during their war with the Resistance.', 'Vehicles', '175000', '6', 'https://vignette.wikia.nocookie.net/starwars/images/c/cf/AT-M6.png/revision/latest/scale-to-width-down/1000?cb=20180107171850',  current_timestamp(), current_timestamp());
update products set categoryID=3 where category="Armor";
update products set categoryID=2 where category="Vehicles";
update products set categoryID=1 where category="Weapon";
select * from products;
select * from categories;