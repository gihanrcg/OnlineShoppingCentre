-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2018 at 05:59 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test1db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `CustomerName` varchar(200) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`CustomerName`, `ItemID`, `quantity`) VALUES
('admin', 326, 1),
('admin', 118, 1),
('admin', 119, 1),
('Gihan Saranga', 187, 1),
('Gihan Saranga', 331, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `CustomerID` int(11) NOT NULL,
  `UserName` varchar(200) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `ContactNum` char(10) NOT NULL,
  `Profilepic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`CustomerID`, `UserName`, `Password`, `Email`, `Address`, `ContactNum`, `Profilepic`) VALUES
(1, 'admin', 'admin123', 'admin@gmail.com', 'Sliit', '0122212212', 'IMAK-sfor-HTC-U11-Glass-Tempered-Flim-3D-Full-Curved-Screen-Protector-For-HTC-U11-5.jpg_200x200.jpg'),
(6, 'Bashy', 'bashy123', 'bashy@gmail.com', 'MLB', '0771619719', '320957_271844552830890_1105348_n.jpg'),
(7, 'Gihan Saranga', 'gihan', 'it17016230@my.sliit.lk', 'Galle', '0714914133', '28070649_485143141887730_7178013175630964060_o.jpg'),
(9, 'Sanjaya', 'sanjaya', 'sanjaya@gmail.com', 'homagama', '0769398256', '27337220_1984070218274973_6897978037605358277_n.jpg'),
(10, 'Nishitha', 'nishitha', 'nishithadesilva@gmail.com', 'malabe', '0789195560', '320957_271844552830890_1105348_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `ItemID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `SubCategory` varchar(50) NOT NULL,
  `UnitPrice` int(11) NOT NULL,
  `Photo` varchar(500) NOT NULL,
  `Details` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`ItemID`, `Name`, `Category`, `SubCategory`, `UnitPrice`, `Photo`, `Details`) VALUES
(116, 'Maliban Crisco', 'grocery', '--', 350, 'maliban crisco.png', 'Maliban Crisco'),
(117, 'Maliban Real Cracker', 'grocery', '--', 250, 'maliban real cracker.png', 'Maliban Real Cracker'),
(118, 'Oreo', 'grocery', '--', 500, 'Oreo.jpg', 'Maliban Real Cracker'),
(119, 'Parle Marie', 'grocery', '--', 75, 'Parle - Marie.jpg', 'Parle Marie'),
(120, 'Snack Crackers', 'grocery', '--', 450, 'SNACK.jpg', 'Snack Crackers'),
(121, 'Floggers Coffe Packets', 'grocery', '--', 400, 'flogers coffe packets.jpg', 'Floggers Coffe Packets'),
(122, 'Harishchandra Coffee', 'grocery', '--', 200, 'harischandra coffe.jpg', 'Harishchandra Coffee'),
(123, 'Nescaffe Black Coffee', 'grocery', '--', 700, 'nescaffe black coffe.jpg', 'Nescaffe Black Coffee'),
(124, 'Nescafe 3 in 1 Packets', 'grocery', '--', 1000, 'nesccafee 3 in 1 packets.jpg', 'Nescafe 3 in 1 Packets'),
(125, 'Trader Joes instant coffe', 'grocery', '--', 1050, 'Trader Joes instant coffe.jpg', 'Trader Joes instant coffe'),
(126, 'Calvarion Eggs', 'grocery', '--', 115, 'calvarion eggs.png', 'Calvarion Eggs'),
(127, 'Cocorette Eggs', 'grocery', '--', 150, 'cocorette eggs.jpg', 'cocorette eggs'),
(128, 'Egg Whites', 'grocery', '--', 85, 'Egg Whites.JPG', 'Egg Whites'),
(129, 'Organic Eggs', 'grocery', '--', 114, 'organic eggs.jpg', 'Organic Eggs'),
(130, 'Sisimon Eggs', 'grocery', '--', 120, 'sisimon eggs.jpg', 'Sisimon Eggs'),
(131, 'Farmer Fresh', 'grocery', '--', 250, 'farmer fresh.jpeg', 'Farmer Fresh'),
(132, 'Horlicks Chocolate', 'grocery', '--', 400, 'Horlicks-Chocolate-BIB-400g.jpg', 'Horlicks Chocolate'),
(133, 'Nestomalt ', 'grocery', '--', 400, 'NESTOMALT-SUPER-PACK-400G-SAVE-101456897213.jpg', 'Nestomalt'),
(134, 'Nido', 'grocery', '--', 550, 'Nido_lg.jpg', 'Nido'),
(135, 'Anchor', 'grocery', '--', 400, 'Screenshot-2017-10-21_Anchor_Full_Cream_Milk_Powder_400g_Packets_300x300.png', 'Anchor'),
(136, 'Brown Sugar', 'grocery', '--', 110, 'brown sugar.jpg', 'Brown Sugar'),
(137, 'Cane sugar', 'grocery', '--', 120, 'cane sugar.jpg', 'Cane Sugar'),
(138, 'Domino Sugar', 'grocery', '--', 400, 'domino packets.jpeg', 'Domino Sugar'),
(139, 'Pure Sugar', 'grocery', '--', 100, 'pure sugar.jpg', 'Pure Sugar'),
(140, 'Splenda Sugar', 'grocery', '--', 115, 'splenda sugar.jpg', 'Splenda Sugar'),
(141, 'Birla Green Tea', 'grocery', '--', 450, 'Birla Green Tea.jpg', 'Birla Green Tea'),
(142, 'Lemon Tea', 'grocery', '--', 480, 'Lemon.jpg', 'Lemon Tea'),
(143, 'Lipton Green Tea', 'grocery', '--', 500, 'lipton green tea.jpg', 'Lipton Green Tea'),
(144, 'Lipton Yellow Tea', 'grocery', '--', 800, 'lipton yellow tea.jpg', 'Lipton Yellow Tea'),
(145, 'Zesta Tea', 'grocery', '--', 500, 'zesta.jpg', 'Zesta Tea'),
(146, 'Anchor Butter', 'dairy', 'butter', 800, 'anchor butter.jpg', 'Anchor Butter'),
(147, 'Astra Margarine', 'dairy', 'butter', 250, 'astra margarine.jpg', 'Astra Margarine'),
(148, 'Highland Butter', 'dairy', 'butter', 456, 'highland butter.jpg', 'Highland Butter'),
(149, 'Pelawatte Butter', 'dairy', 'butter', 400, 'pelwatte butter.jpg', 'Pelawatte Butter'),
(150, 'Highland Yoghurt', 'dairy', 'yoghurt', 35, 'highland youghurt.jpg', 'Highland Yoghurt'),
(151, 'Kotmale Yoghurt', 'dairy', 'yoghurt', 35, 'kotmale yoghurt.jpg', 'Kotmale Yoghurt'),
(152, 'Newdale Strawberry Yoghurt', 'dairy', 'yoghurt', 40, 'newdale strawberry flavoured.jpg', 'Newdale Strawberry Yoghurt'),
(153, 'Newdale Yoghurt 6 packs', 'dairy', 'yoghurt', 200, 'newdale yoghurt.jpg', 'Newdale Yoghurt 6 packs'),
(154, 'Pelawatte Yoghurt', 'dairy', 'yoghurt', 35, 'pelwatte yoghurt.jpg', 'Pelawatte Yoghurt'),
(155, 'Happy Cow Cheese Slices', 'dairy', 'cheese', 450, 'happy cow cheese slices.jpg', 'Happy Cow Cheese Slices'),
(156, 'Happy Cow Cheese', 'dairy', 'cheese', 300, 'happy cow cheese.jpg', 'Happy Cow Cheese'),
(157, 'Kraft Cheddar Cheese', 'dairy', 'cheese', 800, 'kraft cheddar cheese.jpg', 'Kraft Cheddar Cheese'),
(158, 'Kraft Cheese Slices', 'dairy', 'cheese', 550, 'kraft cheese slices.jpg', 'Kraft Cheese Slices'),
(159, 'Anchor Dairy Cream', 'dairy', 'creams', 460, 'anchor dairy cream.jpg', 'Anchor Dairy Cream'),
(160, 'Dairy Farmers Thickened Cream', 'dairy', 'creams', 560, 'dairy farmers thickened cream.jpg', 'Dairy Farmers Thickened Cream'),
(161, 'Kotmale Fresh Cream', 'dairy', 'creams', 325, 'kotmale fresh cream.jpg', 'Kotmale Fresh Cream'),
(162, 'Anchor Fresh Milk', 'dairy', 'milk', 300, 'anchor fresh milk.jpg', 'Anchor Fresh Milk'),
(163, 'Anchor Newdale Chocolate Milk', 'dairy', 'milk', 40, 'anchor newdale chocolate milk.jpg', 'Anchor Newdale Chocolate Milk'),
(164, 'Anchor Newdale Flavoured Milk', 'dairy', 'milk', 55, 'anchor-newdale-flavoured-milk.jpg', 'Anchor Newdale Flavoured Milk'),
(165, 'Highland UHT Full cream', 'dairy', 'milk', 250, 'HIGHLAND_UHT_FULL_CREAM_MILK_PACKET_900ML.jpg', 'Highland UHT Full cream'),
(166, 'Kotmale Chocolate Milk', 'dairy', 'milk', 65, 'kotmale chocolate milk.jpg', 'Kotmale Chocolate Milk'),
(167, 'Milo', 'dairy', 'milk', 65, 'milo.jpg', 'Milo'),
(168, 'Chocolate Ice Cream', 'frozen', 'icecream', 350, 'chocolate ice cream.jpg', 'Chocolate Ice Cream'),
(169, 'Fruit n Nut', 'frozen', 'icecream', 500, 'fruit n Nut.jpg', 'Fruit n Nut'),
(170, 'Imorich', 'frozen', 'icecream', 1000, 'Imorich.jpg', 'Imorich'),
(174, 'Karatha Kolomba', 'frozen', 'icecream', 480, 'karatha koloumba.jpg', 'Karatha Kolomba'),
(175, 'Peni Aluwa', 'frozen', 'icecream', 400, 'peni-aluwa.jpg', 'Peni Aluwa'),
(176, 'Frozen Beans', 'frozen', 'frozen vegetables', 120, 'frozen beans.jpg', 'Frozen Beans'),
(177, 'Frozen Broccoli', 'frozen', 'frozen vegetables', 150, 'frozen broccoli.jpg', 'Frozen Broccoli'),
(178, 'Frozen Carrot Mix', 'frozen', 'frozen vegetables', 360, 'frozen carrot mix.jpeg', 'Frozen Carrot Mix'),
(179, 'Frozen Mixed Vegetables', 'frozen', 'frozen vegetables', 385, 'frozen mixed vegetables.jpeg', 'Frozen Mixed Vegetables'),
(180, 'Frozen Banana', 'frozen', 'frozen fruits', 300, 'frozen banana.jpeg', 'Frozen Banana'),
(181, 'Frozen Berries', 'frozen', 'frozen fruits', 650, 'Frozen berries.jpg', 'Frozen Berries'),
(182, 'Frozen Guava', 'frozen', 'frozen fruits', 550, 'frozen guava.jpg', 'Frozen Guava'),
(183, 'Frozen Mixed Fruits', 'frozen', 'frozen fruits', 458, 'frozen mix fruits.jpg', 'Frozen Mixed Fruits'),
(184, 'Curry Beef', 'meat', 'beef', 990, 'curry beef.jpg', 'Curry Beef'),
(185, 'Fresh Beef', 'meat', 'beef', 780, 'fresh beef.jpg', 'Fresh Beef'),
(186, 'Roast Beef', 'meat', 'beef', 900, 'roast beef.JPG', 'Roast Beef'),
(187, 'Curry Chiocken', 'meat', 'chicken', 450, 'curry chicken.jpg', 'Curry Chicken'),
(188, 'Fresh Chicken', 'meat', 'chicken', 500, 'fresh chicken.jpg', 'Fresh Chicken'),
(189, 'Roast Chicken', 'meat', 'chicken', 1150, 'roast chicken.jpg', 'Roast Chicken'),
(190, 'Fresh Lamb', 'meat', 'lamb', 800, 'fresh lamb.jpg', 'Fresh Lamb'),
(191, 'Gravy Lamb', 'meat', 'lamb', 980, 'gravy roast lamb.jpg', 'Gravy Lamb'),
(192, 'Lamb Curry', 'meat', 'lamb', 560, 'lamb curry.jpg', 'Lamb Curry'),
(193, 'Curry Mutton', 'meat', 'mutton', 550, 'curry mutton.png', 'Curry Mutton'),
(194, 'Fresh Mutton', 'meat', 'mutton', 558, 'fresh mutton.jpg', 'Fresh Mutton'),
(195, 'Roast Mutton', 'meat', 'mutton', 665, 'roast mutton.jpg', 'Roast Mutton'),
(196, 'Curry Pork', 'meat', 'pork', 496, 'curry pork.jpg', 'Curry Pork'),
(197, 'Fresh Pork', 'meat', 'pork', 600, 'fresh pork.jpg', 'Fresh Pork'),
(198, 'Roast Pork', 'meat', 'pork', 890, 'roast pork.jpeg', 'Roast Pork'),
(199, 'Processed Chicken Breast', 'meat', 'processed meat', 800, 'processed chicken breast.jpg', 'Processed Chicken Breast'),
(201, 'Processed Ham', 'meat', 'processed meat', 589, 'processed ham.jpg', 'Processed Ham'),
(202, 'Spam Meat', 'meat', 'processed meat', 785, 'spam meat.jpg', 'Spam Meat'),
(203, 'Fuze Iced Tea', 'drink', 'icedtea', 300, 'Fuze Iced Tea.jpg', 'Fuze Iced Tea'),
(204, 'Honest Iced Tea', 'drink', 'icedtea', 325, 'Honest Iced Tea.jpg', 'Honest Iced Tea'),
(205, 'Lipton Iced Tea Packets', 'drink', 'icedtea', 550, 'lipton-iced-tea-12-pack.jpg', 'Lipton Iced Tea Packets'),
(206, 'Long Islan Iced Tea', 'drink', 'icedtea', 360, 'Long islan iced tea.jpg', 'Long Islan Iced Tea'),
(207, 'Nstea Iced Tea', 'drink', 'icedtea', 385, 'Nstea Iced tea.jpg', 'Nstea Iced Tea'),
(208, 'Caribous Bottled Iced Coffee', 'drink', 'icedcoffee', 450, 'Caribous Bottled Iced Coffe.jpg', 'Caribous Bottled Iced Coffee'),
(209, 'Cold Brew Iced Coffee', 'drink', 'icedcoffee', 365, 'Cold brew Iced coffe.jpg', 'Cold Brew Iced Coffee'),
(210, 'Krispy Kreme Bottled Iced Coffees', 'drink', 'icedcoffee', 569, 'Krispy Kreme Bottled Iced Coffees.jpg', 'Krispy Kreme Bottled Iced Coffees'),
(211, 'Mocha Iced Coffee', 'drink', 'icedcoffee', 598, 'mocha iced coffe.png', 'Mocha Iced Coffee'),
(212, 'Nippies Iced Coffee', 'drink', 'icedcoffee', 589, 'nippys_iced_coffee_bottles.jpg', 'Nippies Iced Coffe'),
(213, 'Aspire Sports Drink', 'drink', 'sports and energy', 550, 'Aspire sport drink.png', 'Aspire Sports Drink'),
(214, 'Gatorade Sports Drink', 'drink', 'sports and energy', 670, 'gatorade-g2-perform-series.jpg', 'Gatorade Sports Drink'),
(215, 'Kirkland Sports Drink', 'drink', 'sports and energy', 650, 'Kirkland sport drink.jpg', 'Kirkland Sports Drink'),
(216, 'Pickle Juice Sport Drink', 'drink', 'sports and energy', 660, 'pickle-juice-sport-drink-.jpg', 'Pickle Juice Sport Drink'),
(217, 'Plus Sort Drinks', 'drink', 'sports and energy', 880, 'Plus sport drinks.JPG', 'Plus Sort Drinks'),
(218, 'Alka Fresh Water', 'drink', 'bottled water', 110, 'Alka fresh water.jpg', 'Alka Fresh Water'),
(219, 'Aquafina Water', 'drink', 'bottled water', 115, 'Aquafina water.jpg', 'Aquafina Water'),
(220, 'Knuckles Water', 'drink', 'bottled water', 110, 'Knuckles water.jpg', 'Knuckles Water'),
(221, 'Lalanka water', 'drink', 'bottled water', 115, 'Lalanka water.jpg', 'Lalanka water'),
(222, 'Smart Water', 'drink', 'bottled water', 120, 'smart weater.jpg', 'Smart Water'),
(223, 'Dole Apple juice', 'drink', 'juices', 80, 'Dole apple juice.jpg', 'Dole Apple juice'),
(224, 'Guava Juice', 'drink', 'juices', 100, 'Guava juice.jpg', 'Guava Juice'),
(225, 'Manza Mango Juice', 'drink', 'juices', 95, 'maaza-mango-tropical-fruit-juice.jpg', 'Manza Mango Juice'),
(226, 'Nestle Grape Juice', 'drink', 'juices', 60, 'Nestle grape juice.jpg', 'Nestle Grape Juice'),
(227, 'Tropicana Fruit Juice', 'grocery', 'juices', 80, 'Tropicana fruit juice.jpg', 'Tropicana Fruit Juice'),
(228, 'Coca-Cola', 'drink', 'carbonated drinks', 45, 'Cocacola.jpg', 'Coca-Cola'),
(229, 'EGB 1liter', 'drink', 'carbonated drinks', 120, 'EGB.jpg', 'EGB 1liter'),
(230, 'Fanta', 'drink', 'carbonated drinks', 120, 'Fanta.jpg', 'Fanta'),
(231, 'Necto', 'drink', 'carbonated drinks', 120, 'Necto.jpg', 'Necto'),
(232, 'Sprite', 'drink', 'carbonated drinks', 120, 'sprite.jpg', 'Sprite'),
(233, 'Ayala Herbal Water', 'drink', 'herbal drinks', 200, 'Ayala Herbal water.jpg', 'Ayala Herbal Water'),
(234, 'Flavoured Hebal Water', 'drink', 'herbal drinks', 120, 'Flavored water with herbal.jpg', 'Flavoured Hebal Water'),
(235, 'Herbal Tazo', 'drink', 'herbal drinks', 120, 'Herbal Tazo.jpg', 'Herbal Tazo'),
(236, 'Hint Herbal', 'drink', 'herbal drinks', 200, 'Hint herb.jpg', 'Hint Herbal'),
(237, 'Honest Herbal', 'drink', 'herbal drinks', 245, 'Honest herbal.jpg', 'Honest Herbal'),
(238, 'Britania Cake', 'bakery', 'cakes', 50, 'Britania cakes.jpg', 'Britania Cake'),
(239, 'Carrot Cake', 'bakery', 'cakes', 50, 'Carrot Cake.jpg', 'Carrot Cake'),
(240, 'Chocolate Tiffin Cake', 'bakery', 'cakes', 70, 'Chocolate tiffin cakes.jpeg', 'Chocolate Tiffin Cake'),
(241, 'Kent Cake Mix Vanilla', 'bakery', 'cakes', 67, 'Kent Cake Mix Vanilla.jpg', 'Kent Cake Mix Vanilla'),
(242, 'Large Chocolate Fudge Cake Mix ', 'bakery', 'cakes', 80, 'large-chocolate fudge cake.jpg', 'Large Chocolate Fudge Cake Mix '),
(243, 'Little Lion Fruit Cake', 'bakery', 'savouries', 100, 'Little lion fruit cake.jpg', 'Little Lion Fruit Cake'),
(244, 'Brown Breads', 'bakery', 'breads', 60, 'Brown Breads.jpg', 'Brown Breads'),
(245, 'Sandwhich Breads', 'bakery', 'breads', 60, 'Sandwich Breads.jpg', 'Sandwhich Breads'),
(246, 'White Breads', 'bakery', 'breads', 70, 'White breads.jpg', 'White Breads'),
(247, 'Dawn Breads', 'bakery', 'breads', 70, 'Dawn Breads.jpg', 'Dawn Breads'),
(248, 'Nutricious Breads', 'bakery', 'breads', 70, 'nutrious breads.jpg', 'Nutricious Breads'),
(249, 'Chips', 'bakery', 'savouries', 70, 'Chips.jpg', 'Chips'),
(250, 'FireCracker', 'bakery', 'savouries', 70, 'Firecracker.jpg', 'FireCracker'),
(251, 'Pancakes', 'bakery', 'savouries', 60, 'Pancakes.jpg', 'Pancakes'),
(252, 'Savourie Rice Packet', 'bakery', 'savouries', 60, 'Savourie rice packet.jpg', 'Savourie Rice Packet'),
(253, 'Savoury Muffin Mix', 'bakery', 'savouries', 110, 'Savoury muffin mix.jpg', 'Savoury Muffin Mix'),
(254, 'Air Wick Air Freshners', 'household', 'airfreshners', 450, 'air wick air freshners.jpg', 'Air Wick Air Freshners'),
(255, 'Ambi Pur Air Freshner', 'household', 'airfreshners', 460, 'ambi-pur air freshner.jpg', 'Ambi Pur Air Freshner'),
(256, 'Glade Air Freshner', 'household', 'airfreshners', 478, 'glade air freshner.jpg', 'Glade Air Freshner'),
(257, 'Harpic Washing', 'household', 'washing aids', 300, 'harpic washing.jpg', 'Harpic Washing'),
(258, 'Lysol AntiBacterial', 'household', 'washing aids', 400, 'lysol antibacterial cleaning.jpg', 'Lysol AntiBacterial'),
(259, 'Dettol Disinfectant', 'household', 'sanitary products', 300, 'dettol disinfectant.jpg', 'Dettol Disinfectant'),
(260, 'Dettol HandWash', 'household', 'sanitary products', 460, 'dettol handwash.jpg', 'Dettol HandWash'),
(261, 'Dettol Hand Sanitizer', 'household', 'sanitary products', 250, 'dettol hand sanitizer.jpg', 'Dettol Hand Sanitizer'),
(262, 'Orange bulbs', 'household', 'lighting', 230, 'orange bulbs.jpg', 'Orange bulbs'),
(263, 'Orange CFL', 'household', 'lighting', 70, 'orangeCFL bulbs.jpg', 'Orange CFL'),
(264, 'Baby Cheramy Cologne', 'household', 'babycare', 80, 'baby cheramy cologne.jpg', 'Baby Cheramy Cologne'),
(265, 'Baby Cheramy Soap', 'household', 'babycare', 70, 'baby cheramy soap.jpg', 'Baby Cheramy Soap'),
(266, 'Pears Baby Oil', 'household', 'babycare', 70, 'pears baby oil.jpg', 'Pears Baby Oil'),
(267, 'Car Care Kit', 'household', 'vehiclecare', 559, 'car care kit.jpg', 'Car Care Kit'),
(268, 'Car Pressure Washers', 'household', 'vehiclecare', 10500, 'car pressure washers.jpeg', 'Car Pressure Washers'),
(269, 'AH030 Car Wash Wax Prestige', 'household', 'vehiclecare', 6500, 'AH030-Car-Wash-Wax-Prestige-1.5L-640x640.jpg', 'AH030 Car Wash Wax Prestige'),
(270, 'Soft Touch Dog Collars', 'homeware', 'petcare', 1500, 'soft touch dog collars.jpg', 'Soft Touch Dog Collars'),
(271, 'CragCollar-KokaneeRed', 'household', 'petcare', 4500, '25801-CragCollar-KokaneeRed_1024x1024.jpg', 'CragCollar-KokaneeRed'),
(272, 'Pedigree Dog Food and Dog Treats', 'household', 'petcare', 6000, 'pedigree dog food and dog treats.jpg', 'Pedigree Dog Food and Dog Treats'),
(273, 'Lawn Mower', 'household', 'garden products', 15000, 'lawn mower.jpeg', 'Lawn Mower'),
(274, 'Garden Tool Set', 'household', 'garden products', 4500, 'garden tool set.jpg', 'Garden Tool Set'),
(275, 'Loppers Fruit Tree Pruning Shears Garden Tools Pruners Garden Shears', 'household', 'garden products', 5000, 'Loppers-Fruit-Tree-Pruning-Shears-Garden-Tools-Pruners-Garden-Shears-Gardening-Secateurs-Grafting-tools.jpg_640x640.jpg', 'Loppers Fruit Tree Pruning Shears Garden Tools Pruners Garden Shears'),
(276, ' Hair brushes', 'personalcare', 'beautycare', 50, '51szBoKj7NL._SX355_ hair brushes.jpg', ' Hair brushes'),
(277, ' Hair Dryer', 'personalcare', 'beautycare', 7600, 'hair dryer.jpg', ' Hair Dryer'),
(278, 'Babylisspro Nano Titanium Dryer ', 'personalcare', 'beautycare', 10000, 'babylisspro-nano-titanium-dryer-3-hair-dryers-_1.jpg', 'Babylisspro Nano Titanium Dryer '),
(279, 'Makeup Set', 'personalcare', 'personal needs', 6880, 'makeup set.jpg', 'Makeup Set'),
(280, 'Skincare Products', 'personalcare', 'personal needs', 5600, 'skincare-products.jpg', 'Skincare Products'),
(281, 'Head and shoulders shampoo', 'personalcare', 'shampoo and conditioner', 360, 'head and shoulders shampoo.jpg', 'Head and shoulders shampoo'),
(282, 'Clear shampoo', 'personalcare', 'shampoo and conditioner', 450, 'clear shampoo.jpg', 'Clear shampoo'),
(283, 'Lifebouy Shampoo', 'personalcare', 'shampoo and conditioner', 435, 'lifebouy shampoo.jpg', 'Lifebouy Shampoo'),
(284, 'Clogard Tooth Paste', 'personalcare', 'oralcare', 80, 'clogard tooth paste.jpg', 'Clogard Tooth Paste'),
(285, 'Signal tooth brush', 'personalcare', 'oralcare', 80, 'signal tooth brush.jpg', 'Signal tooth brush'),
(286, 'Clogard Mouthwash', 'personalcare', 'oralcare', 300, 'clogard mouthwash.jpg', 'Clogard Mouthwash'),
(287, 'Gold hair gel', 'personalcare', 'haircare', 560, 'gold hair gel.jpg', 'Gold hair gel'),
(288, 'Iceberg Hair Care Styling Gel', 'personalcare', 'oralcare', 600, 'iceberg hair care styling gel.jpg', 'Iceberg Hair Care Styling Gel'),
(289, 'Olay Face Cream', 'personalcare', 'facecare', 455, 'Olay face cream.jpg', 'Olay Face Cream'),
(290, 'Anti Wrinke Face Cream', 'personalcare', 'facecare', 450, 'anti wrinke face cream.jpg', 'Anti Wrinke Face Cream'),
(291, 'Toy car', 'homeware', 'toys', 600, 'toy car.jpg', 'Toy car'),
(292, 'Stuffed Toy', 'homeware', 'toys', 500, 'tomy-pokemon-10-inch-stuffed-figure-my-friend-pikachu--DE614328.zoom.jpg', 'Stuffed Toy'),
(293, 'RC  Toy Car', 'homeware', 'toys', 3000, 'dc79fc5d-e93a-4339-bca9-6675a37556df_1.43c87fde6aaa79d35ceab87eb53e4623_Fmt remote control truck.jpeg', 'RC Toy Car'),
(294, 'Interior-flexible-neon-light', 'homeware', 'car accessories', 5000, 'car-accessories-interior-flexible-neon-light.jpg', 'Interior-flexible-neon-light'),
(295, 'Steering Covers', 'homeware', 'car accessories', 1000, 'steering covers.jpg', 'Steering Covers'),
(296, 'Maped color pencils', 'homeware', 'stationary', 450, 'maped color pencils.jpg', 'Maped color pencils'),
(297, 'Colored Pens', 'homeware', 'stationary', 450, 'colored pens.jpg', 'Colored Pens'),
(298, 'Atlas Chooty Pens', 'homeware', 'stationary', 20, 'atlas chooty pens.jpg', 'Atlas Chooty Pens'),
(299, 'Baloon Set', 'homeware', 'party items', 500, 'baloon set.jpg', 'Baloon Set'),
(300, 'Party Candles', 'homeware', 'party items', 450, 'party candles.jpg', 'Party Candles'),
(301, 'Claw-Hammers-Mallets_Hammers', 'homeware', 'hardware', 5888, 'Claw-Hammers-Mallets_Hammers.jpg', 'Claw-Hammers-Mallets_Hammers'),
(302, 'Crocraft spanner set', 'homeware', 'hardware', 600, 'crocraft spanner set.jpg', 'Crocraft spanner set'),
(303, 'Stainless Steel Kitchenware', 'homeware', 'kitchenware', 440, 'stainless steel kitchenware.jpg', 'Stainless Steel Kitchenware'),
(304, 'Kitchenware sets', 'homeware', 'kitchenware', 600, 'kitchenware-sets-500x500.jpg', 'Kitchenware sets'),
(305, 'Glass mugs', 'homeware', 'glassware', 600, 'glass mugs.jpg', 'Glass mugs'),
(306, 'Glass ware set', 'homeware', 'glassware', 700, 'glass ware set.jpg', 'Glass ware set'),
(307, 'Red clock', 'homeware', 'decor', 5000, 'clock.jpg', 'Red clock'),
(308, 'Decorative vase', 'household', 'decor', 500, 'decorative vase.jpg', 'Decorative vase'),
(309, 'LG UHD TV', 'electronic', '--', 200000, 'LG UHD TV.jpg', 'LG UHD TV'),
(314, 'LG washing machine', 'furniture', 'laundry', 75000, 'LG washing machine.jpg', 'LG washing machine'),
(315, 'LG Twinwash Washing Machine And Dryer', 'furniture', 'laundry', 150000, 'LG_ twinwash_washing_machine_and_dryer.jpg', 'LG Twinwash Washing Machine And Dryer'),
(316, 'Ikea Fabric Sofa', 'furniture', 'livingroom', 95000, 'ikea fabric sofa.jpg', 'Ikea Fabric Sofa'),
(317, 'Astoria Sofa Set', 'furniture', 'livingroom', 100000, 'Astoria Sofa Set.jpg', 'Astoria Sofa Set'),
(318, 'TV Stand', 'furniture', 'livingroom', 15500, 'Tv stand.jpg', 'TV Stand'),
(319, 'Dining Chair', 'furniture', 'diningroom', 4500, 'dining chair.jpg', 'Dining Chair'),
(320, 'Vanalen Dalla 4 SeaterGrey Dining Table Set', 'furniture', 'diningroom', 66000, 'Vanalen_Dalla_4_SeaterGrey_dining_table_set.jpg', 'Vanalen Dalla 4 SeaterGrey Dining Table Set'),
(321, 'Office Cupboard', 'furniture', 'office', 60000, 'office cupboard.jpg', 'Office Cupboard'),
(322, 'Office Desk And Chair Set', 'furniture', 'office', 35500, 'office desk and chair set.jpg', 'Office Desk And Chair Set'),
(323, 'Office Desk', 'furniture', 'office', 20000, 'office desk.jpg', 'Office Desk'),
(324, 'Outdoor Patio Furniture', 'furniture', 'outdoor', 60000, 'Outdoor Patio Furniture.jpg', 'Outdoor Patio Furniture'),
(325, 'Bed Frame', 'furniture', 'bedroom', 30000, 'Bed Frame.JPG', 'Bed Frame'),
(326, 'Wooden Bed Frame', 'furniture', 'bedroom', 40000, '0416873_PE578092_S5_bedFrame.JPG', 'Wooden Bed Frame'),
(327, 'LG UHD TV', 'electronic', '--', 100000, 'LG UHD TV.jpg', 'LG UHD TV'),
(328, 'Playstation 4', 'electronic', '--', 60000, 'Playstation 4.png', 'Playstation 4'),
(329, 'Samsung QHD TV', 'electronic', '--', 120000, 'Samsung QHD TV.jpg', 'Samsung QHD TV'),
(330, 'X Box', 'electronic', '--', 67000, 'X Box.jpg', 'X Box'),
(331, 'Salad Leaves', 'vegetable', 'leaves', 150, 'salad leaves.jpg', 'Salad Leaves'),
(332, 'Spinach-leaves', 'vegetable', 'leaves', 200, 'spinach-leaves.jpg', 'Spinach-leaves'),
(333, 'Organic carrots', 'vegetable', 'organic vegetables', 400, 'organic carrots.jpg', 'Organic carrots'),
(334, 'Organic tomatoes', 'vegetable', 'organic vegetables', 500, 'organic tomatoes.jpg', 'Organic tomatoes'),
(335, 'Fresh Carrots', 'vegetable', 'fresh vegetables', 450, 'fresh carrots.png', 'Fresh Carrots'),
(336, 'Fresh Tomatoes', 'vegetable', 'fresh vegetables', 500, 'Fresh-Indian-Tomatoes-Tomatoes-Fresh-Tomatoes.jpg', 'Fresh Tomatoes'),
(338, 'Bananas', 'fruit', '--', 250, 'bananas.jpg', 'Bananas'),
(339, 'Grapes', 'fruit', '--', 600, 'Grapes.jpg', 'Grapes'),
(340, 'Guava', 'fruit', '--', 350, 'Guava.jpg', 'Guava'),
(341, 'Mango', 'fruit', '--', 245, 'mango.jpg', 'Mango');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `itemID` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `unitSellPrice` double DEFAULT NULL,
  `unitPurchaseprice` double DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `contactNo` varchar(10) DEFAULT NULL,
  `paymentType` varchar(20) DEFAULT NULL,
  `oderTimeDate` datetime DEFAULT NULL,
  `diliver` datetime DEFAULT NULL,
  `preapredEID` int(11) DEFAULT NULL,
  `diliverEID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `CustomerID`, `itemID`, `qty`, `unitSellPrice`, `unitPurchaseprice`, `name`, `address`, `contactNo`, `paymentType`, `oderTimeDate`, `diliver`, `preapredEID`, `diliverEID`) VALUES
(54, 7, 133, 1, 400, 380, 'Gihan', 'Galle', '0714914133', 'COD', '2018-05-20 09:06:03', '2018-05-20 09:08:34', 123, 222),
(55, 7, 136, 1, 110, 90, 'Gihan', 'Galle', '0714914133', 'COD', '2018-05-20 09:06:36', '2018-05-20 09:08:43', 123, 222),
(56, 7, 146, 1, 800, 780, 'Gihan', 'Galle', '0714914133', 'COD', '2018-05-20 09:07:06', NULL, 123, NULL),
(57, 7, 169, 1, 500, 480, 'Gihan', 'Galle', '0714914133', 'COD', '2018-05-20 09:07:13', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertest2`
--

CREATE TABLE `ordertest2` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertest2`
--

INSERT INTO `ordertest2` (`id`, `name`) VALUES
(22, '33');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder`
--

CREATE TABLE `purchaseorder` (
  `OrderID` int(11) NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `ItemOrdered` varchar(200) NOT NULL,
  `StockOrdered` int(11) NOT NULL,
  `Details` varchar(200) DEFAULT NULL,
  `OrderDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchaseorder`
--

INSERT INTO `purchaseorder` (`OrderID`, `SupplierID`, `ItemOrdered`, `StockOrdered`, `Details`, `OrderDate`) VALUES
(1, 1, 'tablets', 5, 'apple', '2018-04-17 12:48:03'),
(4, 1, 'phones', 3, 'deliver', '2018-04-17 23:09:05'),
(5, 1, 'samsung galaxy s9+', 4, 'black', '2018-04-17 23:23:57'),
(7, 5, 'apple imac pro ', 100, 'space grey', '2018-04-18 19:02:04'),
(8, 5, 'test', 5, 'red', '2018-04-23 21:28:41'),
(9, 1, 'test', 2, 'test', '2018-04-23 21:47:24'),
(10, 1, 'testorder', 3, 'details', '2018-05-09 19:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `StockID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `StockAdded` int(11) NOT NULL,
  `PurchasePrice` int(11) NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `StartQTY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`StockID`, `ItemID`, `StockAdded`, `PurchasePrice`, `SupplierID`, `Date`, `StartQTY`) VALUES
(36, 116, 20, 330, 1, '2018-05-19 00:00:00', 20),
(37, 117, 20, 230, 1, '2018-05-19 00:00:00', 20),
(38, 118, 19, 480, 1, '2018-05-19 00:00:00', 20),
(39, 119, 20, 55, 1, '2018-05-19 00:00:00', 20),
(40, 120, 20, 430, 1, '2018-05-19 00:00:00', 20),
(41, 121, 20, 380, 1, '2018-05-19 00:00:00', 20),
(42, 122, 20, 180, 1, '2018-05-19 00:00:00', 20),
(43, 123, 20, 680, 1, '2018-05-19 00:00:00', 20),
(44, 124, 20, 980, 1, '2018-05-19 00:00:00', 20),
(45, 125, 20, 1030, 1, '2018-05-19 00:00:00', 20),
(46, 126, 19, 95, 1, '2018-05-19 00:00:00', 20),
(47, 127, 20, 130, 1, '2018-05-19 00:00:00', 20),
(48, 128, 20, 65, 1, '2018-05-19 00:00:00', 20),
(49, 129, 20, 94, 1, '2018-05-19 00:00:00', 20),
(50, 130, 20, 100, 1, '2018-05-19 00:00:00', 20),
(51, 131, 20, 230, 1, '2018-05-19 00:00:00', 20),
(52, 132, 20, 380, 1, '2018-05-19 00:00:00', 20),
(53, 133, 19, 380, 1, '2018-05-19 00:00:00', 20),
(54, 134, 20, 530, 1, '2018-05-19 00:00:00', 20),
(55, 135, 20, 380, 1, '2018-05-19 00:00:00', 20),
(56, 136, 19, 90, 1, '2018-05-19 00:00:00', 20),
(57, 137, 20, 100, 1, '2018-05-19 00:00:00', 20),
(58, 138, 20, 380, 1, '2018-05-19 00:00:00', 20),
(59, 139, 20, 80, 1, '2018-05-19 00:00:00', 20),
(60, 140, 20, 95, 1, '2018-05-19 00:00:00', 20),
(61, 141, 20, 430, 1, '2018-05-19 00:00:00', 20),
(62, 142, 20, 460, 1, '2018-05-19 00:00:00', 20),
(63, 143, 20, 480, 1, '2018-05-19 00:00:00', 20),
(64, 144, 20, 780, 1, '2018-05-19 00:00:00', 20),
(65, 145, 20, 480, 1, '2018-05-19 00:00:00', 20),
(66, 146, 19, 780, 1, '2018-05-19 00:00:00', 20),
(67, 147, 20, 230, 1, '2018-05-19 00:00:00', 20),
(68, 148, 20, 436, 1, '2018-05-19 00:00:00', 20),
(69, 149, 20, 380, 1, '2018-05-19 00:00:00', 20),
(70, 150, 20, 15, 1, '2018-05-19 00:00:00', 20),
(71, 151, 20, 15, 1, '2018-05-19 00:00:00', 20),
(72, 152, 20, 20, 1, '2018-05-19 00:00:00', 20),
(73, 153, 20, 180, 1, '2018-05-19 00:00:00', 20),
(74, 154, 20, 15, 1, '2018-05-19 00:00:00', 20),
(75, 155, 20, 430, 1, '2018-05-19 00:00:00', 20),
(76, 156, 20, 280, 1, '2018-05-19 00:00:00', 20),
(77, 157, 20, 780, 1, '2018-05-19 00:00:00', 20),
(78, 158, 20, 530, 1, '2018-05-19 00:00:00', 20),
(79, 159, 20, 440, 1, '2018-05-19 00:00:00', 20),
(80, 160, 20, 540, 1, '2018-05-19 00:00:00', 20),
(81, 161, 20, 305, 1, '2018-05-19 00:00:00', 20),
(82, 162, 20, 280, 1, '2018-05-19 00:00:00', 20),
(83, 163, 20, 20, 1, '2018-05-19 00:00:00', 20),
(84, 164, 20, 35, 1, '2018-05-19 00:00:00', 20),
(85, 165, 20, 230, 1, '2018-05-19 00:00:00', 20),
(86, 166, 20, 45, 1, '2018-05-19 00:00:00', 20),
(87, 167, 20, 45, 1, '2018-05-19 00:00:00', 20),
(88, 168, 20, 330, 1, '2018-05-19 00:00:00', 20),
(89, 169, 18, 480, 1, '2018-05-19 00:00:00', 20),
(90, 170, 19, 980, 1, '2018-05-19 00:00:00', 20),
(91, 116, 20, 330, 1, '2018-05-19 00:00:00', 20),
(92, 174, 20, 460, 1, '2018-05-20 00:00:00', 20),
(93, 174, 20, 460, 1, '2018-05-20 00:00:00', 20);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` int(11) NOT NULL,
  `SName` varchar(100) NOT NULL,
  `SAddress` varchar(200) NOT NULL,
  `SContact` char(10) NOT NULL,
  `SEmail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `SName`, `SAddress`, `SContact`, `SEmail`) VALUES
(1, 'samsung', 'samsung', '0112121219', 'samsung@gmail.com'),
(4, 'Dell', 'Dell USA', '0111111111', 'dell@gmail.com'),
(5, 'apple', 'apple USA', '0122221121', 'apple@gmail.com'),
(6, 'hp', 'HP USA', '0111112121', 'hp@gmail.com'),
(7, 'dd', '656', '0111111111', 'abc@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `fk2_cart` (`CustomerName`),
  ADD KEY `fk3_cart` (`ItemID`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`CustomerID`),
  ADD UNIQUE KEY `UserName` (`UserName`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`,`itemID`),
  ADD KEY `ordersInventoryFK` (`itemID`);

--
-- Indexes for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `fk_porder` (`SupplierID`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`StockID`),
  ADD KEY `fk1_stock` (`ItemID`),
  ADD KEY `fk2_stock` (`SupplierID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `ItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `StockID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk2_cart` FOREIGN KEY (`CustomerName`) REFERENCES `customer_details` (`UserName`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk3_cart` FOREIGN KEY (`ItemID`) REFERENCES `inventory` (`ItemID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `ordersInventoryFK` FOREIGN KEY (`itemID`) REFERENCES `inventory` (`ItemID`);

--
-- Constraints for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD CONSTRAINT `fk_porder` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`SupplierID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `fk1_stock` FOREIGN KEY (`ItemID`) REFERENCES `inventory` (`ItemID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2_stock` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`SupplierID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
