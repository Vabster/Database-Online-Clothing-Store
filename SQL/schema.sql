--  -------------------CLOTHING TABLE-----------------------
-- PRIMARY KEY: id
-- FOREIGN KEY(S): None 
CREATE DATABASE sampledb;
use sampledb;

CREATE TABLE `Clothing` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `imagePath` varchar(255) default NULL,
  `productName` varchar(255) default NULL,
  `price` varchar(100) default NULL,
  `Color` varchar(255) default NULL,
  `ClothingType` varchar(10) default NULL,
  PRIMARY KEY (`id`)
)ENGINE = InnoDB;


--  -------------------USERS TABLE-----------------------
-- PRIMARY KEY: username
-- FOREIGN KEY(S): None 

CREATE TABLE `users` (
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `userType` varchar(10) NOT NULL,
  `state` varchar(10) NOT NULL,
  `city` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `regdate` date NOT NULL,
  PRIMARY KEY  (`username`)
);

--  -------------------SHIPPING TABLE-----------------------
-- PRIMARY KEY: CompanyName
-- FOREIGN KEY(S): productID = id from CLOTHING TABLE 
CREATE TABLE `Supplier` (
  `CompanyName` varchar(255) default NULL,
  `productID` mediumint(8) unsigned NOT NULL,
  `city` varchar(100) default NULL,
  `state` varchar(255) default NULL,
  `zip` varchar(10) default NULL,
  PRIMARY KEY (`CompanyName`),
  CONSTRAINT `PTC` Foreign Key (`productID`) REFERENCES Clothing (`id`)
)ENGINE = InnoDB;

--  -------------------PURCHASED ITEMS TABLE-----------------------
-- PRIMARY KEY: id
-- FOREIGN KEY(S): username = username from USERS TABLE AND productID = id from CLOTHING TABLE 
CREATE TABLE PurchasedItems(
	`id` mediumint(8) unsigned NOT NULL auto_increment,
	`username` varchar(45) NOT NULL,
	`productID` mediumint(8) unsigned NOT NULL, 
    `price` DOUBLE NOT NULL,
    PRIMARY KEY (id),
    Foreign Key (`username`) REFERENCES users (`username`),
    Foreign Key (`productID`) REFERENCES Clothing (`id`)
)ENGINE=INNODB;


--  -------------------SHOPPING CART TABLE-----------------------
-- PRIMARY KEY: id
-- FOREIGN KEY(S): username = username from USERS TABLE AND productID = id from CLOTHING TABLE
CREATE TABLE ShoppingCart(
	`id` mediumint(8) unsigned NOT NULL auto_increment,
	`username` varchar(45) NOT NULL,
	`imagePath` VARCHAR(100) NOT NULL, 
	`productName` VARCHAR(100) NOT NULL, 
    `price` DOUBLE NOT NULL,
    `productID` mediumint(8) unsigned NOT NULL,
    PRIMARY KEY (`id`),
    Foreign Key (`username`) REFERENCES users (`username`),
    Foreign Key (`productID`) REFERENCES Clothing (`id`)
    )ENGINE=INNODB;
    
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt1.jpg", "Sonic Youth - White Goo", 24.99, "White", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt2.jpg", "The Joy Division - Part 4", 27.99, "Gray", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt3.jpg", "Property of GCU - Gotham City", 24.99, "Gray", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt4.jpg", "2Pug Shakur - The Greatest", 19.99, "Black", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt5.jpg", "Coca-Cola - Oooh Simple", 21.99, "Red", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt6.jpg", "The Velvet Underground", 13.98, "White", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt7.jpg", "Despicable Me 2 - Big Face", 21.99, "Yellow", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt8.jpg", "Alice in Wonderland - The Shirt", 21.99, "Black", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt9.jpg", "Woodstock - Aquarian Experience", 9.99, "Black", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt10.jpg", "Captain America - The Shield", 12.99, "Blue", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt11.jpg", "Misfits - Distressed Skulls", 33.99, "Gray", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt12.jpg", "Grateful Dead - Space Face", 27.99, "Gray", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt13.jpg", "The Lord of the Rings - Tree", 24.99, "Blue", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt14.jpg", "Friends - Central Park Logo", 37.99, "Brown", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt15.jpg", "The Cute Reptile Face Shirt", 24.99, "Green", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt16.jpg", "My Little Pony - Out of the Blue", 12.99, "Black", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt17.jpg", "Vampire Weekend - Floral", 8.99, "White", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt18.jpg", "The Chubby Unicorn - Purple", 21.99, "Purple", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt19.jpg", "The Very Very Witty Kitty", 14.99, "White", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt20.jpg", "Siracha - The Bottle Label", 35.99, "Red", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt21.jpg", "Guinness - About Me Toucan", 24.99, "Green", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt22.jpg", "New Standard - French Toast", 19.99, "Blue", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt23.jpg", "Warning - I Have An Attitude", 23.99, "Pink", "WS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenShirt/shirt24.jpg", "I Love Lucy - Chocolate Factory", 22.99, "Pink", "WS");

INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt1.jpg", "Green Lantern - Distressed Logo", 24.99, "Green", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt2.jpg", "The Beatles - Walking Down the Street", 27.99, "Black", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt3.jpg", "The Flash - Distressed Logo", 24.99, "Red", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt4.jpg", "Pink Floyd - Carnegie Hall", 19.99, "Gray", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt5.jpg", "Fantasy - All the Way Plugged In", 21.99, "Gray", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt6.jpg", "Joy Division - Ian Curtis", 13.98, "Blue", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt7.jpg", "The Hangover - Baby Bjorn", 21.99, "Blue", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt8.jpg", "Guinness - The Toucan Logo", 21.99, "Green", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt9.jpg", "Woodstock - Uptake 1969", 9.99, "Red", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt10.jpg", "The Rolling Stones - Classic Tongue", 12.99, "Black", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt11.jpg", "Captain America - Good 'Ol Steve", 23.99, "Blue", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt12.jpg", "Breaking Bad - HeisenBerg", 27.99, "White", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt13.jpg", "Joy Division - Unknown Pleasures", 24.99, "Gray", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt14.jpg", "White Tiger - The Tiger's Face", 24.99, "Gray", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt15.jpg", "Back to the Future - The Rainbow", 24.99, "White", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt16.jpg", "Red Hot Chili Peppers - Asterisk", 12.99, "Black", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt17.jpg", "Animal House - Faber Phys. Ed", 14.99, "Blue", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt18.jpg", "X-Men - Wolverine Blood n Steel", 21.99, "Black", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt19.jpg", "Forest Gump - Cross Country", 14.99, "Red", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt20.jpg", "Star Wars - Star Logo", 25.99, "Blue", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt21.jpg", "Jaws - Poster Blue Ringer", 24.99, "White", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt22.jpg", "Star Wars - New Tatooine", 19.99, "Yellow", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt23.jpg", "Dodgeball - Average Joe's", 23.99, "Yellow", "MS");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenShirt/shirt24.jpg", "Big Bang Theory - Bazinga", 22.99, "Red", "MS");

INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt1.jpg", "Alfani Two-Button Curvy-Fit Pants", 24.99, "Black", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt2.jpg", "JM Collection Twill Straight-Leg", 27.99, "Blue", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt3.jpg", "Style&co. Cargo Capri Pants", 24.99, "White", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt4.jpg", "Alfani Tummy-Control Skinny Pants", 39.99, "Gray", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt5.jpg", "INC International Concepts Curvy-Fit", 44.99, "Gray", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt6.jpg", "Karen Scott Denim Skimmer Pants", 39.98, "Blue", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt7.jpg", "Style&co. Top-Stitched Buttoned-Hem ", 28.99, "Black", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt8.jpg", "Jones Signature Ankle Straight-Leg", 21.99, "White", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt9.jpg", "Bar III Crepe Gaucho Pants", 40.99, "White", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt10.jpg", "Calvin Klein Performance Cropped", 39.99, "Green", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt11.jpg", "International Concepts Curvy-Fit ", 33.99, "Yellow", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt12.jpg", "International Concepts Paisley-Print", 27.99, "Pink", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt13.jpg", "Ideology Cropped Drawstring Pants", 44.99, "Gray", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt14.jpg", "Jones New York Straight-Leg Trousers", 44.99, "White", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt15.jpg", "Charter Club Straight-Leg Pull-On Pants", 34.99, "Black", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt16.jpg", "Alfani Printed Straight-Leg Soft Pants", 42.99, "Black", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt17.jpg", "Performance Cropped Active Pants", 34.99, "Green", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt18.jpg", "Tahari ASL Straight-Leg Trousers", 41.99, "White", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt19.jpg", "Ideology Harem Long Sweatpants", 38.99, "Gray", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt20.jpg", "Sanctuary Printed Jogger Pants", 25.99, "Purple", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt21.jpg", "Alfani Printed Knit Palazzo Pants", 24.99, "Blue", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt22.jpg", "JM Collection Zig-Zag-Printed", 40.99, "Blue", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt23.jpg", "Sanctuary Surplus Culotte Pants", 43.99, "White", "WP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/WomenPants/shirt24.jpg", "Sport Straight-Leg Capri Pants", 32.99, "Red", "WP");

INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt1.jpg", "Calvin Klein Solid Slim-Fit Dress Pants", 47.99, "Gray", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt2.jpg", "Lauren Ralph Lauren Dress Pants", 37.99, "Blue", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt3.jpg", "Alfani RED Slim-Fit Tonal Striped Pants", 34.99, "Black", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt4.jpg", "Dockers D4 Relaxed Fit Iron Pants", 39.99, "Gray", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt5.jpg", "Michael Kors Flat-Front Dress Pants", 44.99, "Green", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt6.jpg", "Classic-Fit Flat-Front Corduroy Pants", 39.98, "Brown", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt7.jpg", "Flat-Front Sharkskin Slim-Fit Dress Pants", 38.99, "Gray", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt8.jpg", "Jones Signature Ankle Straight-Leg", 31.99, "Black", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt9.jpg", "Double Pleat No-Iron Melange Dress Pants", 40.99, "Gray", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt10.jpg", "Ralph Lauren 100% Wool Dress Pants", 39.99, "Blue", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt11.jpg", "Wool Double-Reverse Pleat Dress Pants ", 43.99, "Black", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt12.jpg", "Solid Wool-Blend Pleated Dress Pants", 47.99, "Gray", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt13.jpg", "Cubavera Solid Linen-Blend Drawstring Pants", 44.99, "Black", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt14.jpg", "Tasso Elba Pants, Linen Flat Front Pants", 44.99, "White", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt15.jpg", "Haggar Pants, No Iron Cotton Classic", 34.99, "Blue", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt16.jpg", "Lauren Ralph Lauren Black Solid Dress Pants", 42.99, "Black", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt17.jpg", "Izod Golf Pants, Flat Front Golf Pants", 34.99, "Blue", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt18.jpg", "Sharkskin Flat Front Dress Pants", 41.99, "Brown", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt19.jpg", "Tommy Hilfiger Custom-Fit Chino Pants", 38.99, "Blue", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt20.jpg", "INC International Concepts Linen Pants", 35.99, "White", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt21.jpg", "Perry Ellis Soft Texture Suit Pants", 24.99, "Gray", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt22.jpg", "Kenneth Cole Reaction Slim-Fit Pants", 40.99, "Blue", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt23.jpg", "Alfani RED Medium Blue Tonal Plaid Pants", 43.99, "Blue", "MP");
INSERT INTO `Clothing` (`imagePath`,`productName`,`price`,`Color`, `ClothingType`) VALUES("images/MenPants/shirt24.jpg", "Dockers D3 Fit Iron Free Pleated Pants", 42.99, "Gray", "MP");