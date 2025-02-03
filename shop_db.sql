-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2024 at 07:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(11, 4, 15, 'Tiered Back Tie Blue Printed Dress', 15, 1, 'Product-01-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 4, 'Nishan Sachintha', 'sachintha@gmail.com', '0715946413', 'Hi ! Can I get my order in this week ?');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(4, 4, 'Lakindu Ekanayake', '0715946413', 'sachintha@gmail.com', 'credit card', 'flat no. 73/F, Samudaya, Gallellagama, Kandy, Central Province, Sri Lanka - 20000', 'Batik Floral Puff Sleeved Maxi Dress (58 x 1) - Tiered Back Tie Blue Printed Dress (15 x 1) - Oversize Beige Floral Print T-Shirt (10 x 2) - ', 93, '2024-01-12', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(15, 'Tiered Back Tie Blue Printed Dress', 'Discover elegance with our Tiered Back Tie Blue Printed Dress. This chic dress boasts a graceful tiered design and a unique back tie for a touch of allure. The sophisticated blue print adds a stylish flair, making it perfect for any occasion. Elevate your wardrobe with this versatile and comfortable piece.', 15, 'Product-01-1.jpg', 'Product-01-2.jpg', 'Product-01-3.jpg'),
(16, 'Ripped Denim Short', 'These shorts exude effortless style with strategically placed rips, offering an edgy touch. Crafted from classic denim, they guarantee comfort while keeping you on trend. Ideal for warm days or laid-back outings, these Ripped Denim Shorts seamlessly combine fashion and ease. Stay comfortably stylish with our Ripped Denim Shorts!', 16, 'Product-02-1.jpg', 'Product-02-2.jpg', 'Product-02-3.jpg'),
(17, 'High-Waisted Wide Leg Jeans', 'Elevate your denim game with our High-Waisted Wide Leg Jeans. Designed for both style and comfort, these jeans feature a flattering high waist and wide legs, creating a timeless and chic silhouette. Crafted from quality denim, they provide a comfortable fit while adding a touch of sophistication to your look. Step out in confidence and style with this classic denim piece.', 21, 'Product-03-1.jpg', 'Product-03-2.jpg', 'Product-03-3.jpg'),
(18, 'Batik Floral Puff Sleeved Maxi Dress', 'Discover timeless charm with our Batik Floral Puff Sleeved Maxi Dress. This dress effortlessly blends vintage-inspired batik florals with on-trend puff sleeves, creating a perfect fusion of classic and contemporary style. Ideal for any occasion, its flowing silhouette ensures both comfort and elegance. Elevate your wardrobe with this effortlessly chic Batik Floral Puff Sleeved Maxi Dress, making a statement wherever you go.', 58, 'Product-04-1.jpg', 'Product-04-2.jpg', 'Product-04-3.jpg'),
(19, 'Casual Wear Crew Neck T-Shirt', 'Introducing our Casual Wear Crew Neck T-Shirt – your everyday essential. Comfort meets style with its classic crew neck design and soft fabric, making it perfect for casual occasions. Pair with jeans or shorts for an effortlessly laid-back look. Upgrade your casual wardrobe with this easygoing and comfortable must-have.', 8, 'Product-05-1.jpg', 'Product-05-2.jpg', 'Product-05-3.jpg'),
(20, 'Manderin Collar Party Shirt', 'Elevate your party attire with our Mandarin Collar Long Sleeve Shirt. This shirt seamlessly blends sophistication with a modern twist, featuring a Mandarin collar for a refined look. Perfect for formal gatherings or nights out, the long sleeves add an extra touch of elegance. Crafted with attention to detail, this shirt ensures you stand out with style at any event. Make a statement with our Mandarin Collar Party Wear Long Sleeve Shirt and embrace a new level of refined fashion.', 14, 'Product-06-1.jpg', 'Product-06-2.jpg', 'Product-06-3.jpg'),
(22, 'Le Bond Men’s Shoe Tan', 'Step into style with Le Bond Men&#39;s Shoe in Tan. These shoes effortlessly combine sophistication and comfort, featuring a sleek design and a timeless tan color. Whether you&#39;re dressing up for a special occasion or adding a polished touch to your everyday look, these shoes are the perfect choice. Crafted with precision and attention to detail, Le Bond Men&#39;s Shoe Tan is a must-have for the modern gentleman. Elevate your footwear collection with this versatile and stylish pair.', 52, 'Product-07-1.jpg', 'Product-07-2.jpg', 'Product-07-3.jpg'),
(23, 'Response Super 2.0 Shoe', 'Move through your day feeling comfortable and ready for anything with these adidas running shoes. A mesh upper is breathable, keeping your feet fresh even on warm days. Energised cushioning puts a spring in every step you take. This product is made with recycled content as part of our ambition to end plastic waste. 20% of pieces used to make the upper are made with minimum 50% recycled content.', 88, 'Product-08-1.jpg', 'Product-08-2.jpg', 'Product-08-3.jpg'),
(24, 'Adidas Black Backpack', 'They can carry their gear from one activity to the other with this kids’ adidas backpack. Multiple pockets give kids plenty of places to stow their things. Adjust the shoulder straps and chest strap for the perfect, most comfortable fit. Made with a series of recycled materials, and at least 60% recycled content, this product represents just one of our solutions to help end plastic waste.', 21, 'Product-09-1.jpg', 'Product-09-2.jpg', 'Product-09-3.jpg'),
(25, 'Mid Waist Calf Length Slit Jean', 'Introducing our Mid Waist Calf Length Slit Jeans – where comfort meets style. These jeans boast a flattering mid-waist fit and a trendy calf-length cut with subtle slits. Perfect for any occasion, they effortlessly blend comfort with contemporary fashion. Elevate your denim collection with the modern appeal of our Mid Waist Calf Length Slit Jeans.', 19, 'Product-10-1.jpg', 'Product-10-2.jpg', 'Product-10-3.jpg'),
(26, 'Oversize Beige Floral Print T-Shirt', 'Introducing our Oversize Beige Floral Print T-Shirt – a perfect blend of comfort and style. This tee features a chic beige floral print and an oversized fit, effortlessly elevating your casual look. Embrace relaxed fashion with this on-trend and comfortable piece.', 10, 'Product-11-1.jpg', 'Product-11-2.jpg', 'Product-11-3.jpg'),
(27, 'Vneck Half Sleeve Printed Midi Dress', 'Elevate your summer style with our V-neck Half Sleeve Printed Midi Dress. This dress combines a flattering V-neckline, comfortable half sleeves, and a charming print for a perfect blend of elegance and casual flair. Ideal for various occasions, the midi length adds a touch of sophistication while ensuring comfort.', 24, 'Product-12-1.jpg', 'Product-12-2.jpg', 'Product-12-3.jpg'),
(28, 'Lantern Sleeve Blue Printed Blouse', '\r\nMeet our Lantern Sleeve Blue Printed Blouse – where style meets ease. Featuring on-trend lantern sleeves and a captivating blue print, this blouse effortlessly elevates your look. Perfect for day-to-night transitions, it&#39;s a comfortable and versatile piece for any occasion. Make a chic statement with our Lantern Sleeve Blue Printed Blouse.', 10, 'Product-13-1.jpg', 'Product-13-2.jpg', 'Product-13-3.jpg'),
(29, 'Front Frilled Dainty Skirt', 'Discover charm with our Front Frilled Dainty Skirt. Delicate frills add a playful touch to this versatile piece, perfect for casual outings. Elevate your style effortlessly with this chic and comfortable skirt.', 8, 'Product-14-1.jpg', 'Product-14-2.jpg', 'Product-14-3.jpg'),
(30, 'Loose Fitted Linen Jump Suit', 'Meet our Loose Fitted Linen Jumpsuit – where comfort meets chic. This jumpsuit, with its loose fit and breathable linen fabric, effortlessly combines style and ease. Ideal for a relaxed day out, it&#39;s a must-have for the modern, on-the-go fashionista. Elevate your wardrobe with the cool and versatile vibe of our Loose Fitted Linen Jumpsuit.', 16, 'Product-15-1.jpg', 'Product-15-2.jpg', 'Product-15-3.jpg'),
(31, 'Pleated Shorts', 'Discover sophistication with our Pleated Shorts – the perfect blend of style and comfort. Elevate your casual wardrobe effortlessly with the elegant pleats, making these shorts a versatile and chic addition to any outfit.', 9, 'Product-16-1.jpg', 'Product-16-2.jpg', 'Product-16-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(3, 'Rusty', 'rusty@gmail.com', '3a3f5689e2ead986bd2f56a03dcc22c1e306942f'),
(4, 'Nishan Sachintha', 'sachintha@gmail.com', 'd24d7907ab9712cb2cd52df71d218b3717231621');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
