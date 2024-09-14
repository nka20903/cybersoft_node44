--- Create DATABASE for APP FOOD

-- Create users table 
CREATE TABLE users (
	user_id INT PRIMARY KEY AUTO_INCREMENT,
	full_name VARCHAR(50) NOT NULL,
	email VARCHAR(255) NOT NULL,
	pass_word VARCHAR(255) NOT NULL
)

-- Create data for users table
INSERT INTO users (full_name, email, pass_word) VALUES
('John Doe', 'johndoe@example.com', 'password123'),
('Jane Smith', 'janesmith@example.com', 'pass1234'),
('Emily Johnson', 'emilyj@example.com', 'emilypass'),
('Michael Brown', 'michaelb@example.com', 'michael789'),
('Sarah Davis', 'sarahd@example.com', 'sarah2021'),
('David Wilson', 'davidw@example.com', 'davidpass'),
('Laura Martinez', 'lauram@example.com', 'laura@2021'),
('James Anderson', 'jamesa@example.com', 'anderson123'),
('Linda Clark', 'lindac@example.com', 'linda9876'),
('Robert Lewis', 'robertl@example.com', 'robert2022'),
('Patricia Walker', 'patriciaw@example.com', 'walkerpass'),
('Charles Hall', 'charlesh@example.com', 'charles789'),
('Jennifer Allen', 'jennifera@example.com', 'jenny@123'),
('Paul Young', 'pauly@example.com', 'pauly456'),
('Kimberly Hernandez', 'kimberlyh@example.com', 'kimberpass'),
('Joshua King', 'joshuak@example.com', 'king789'),
('Lisa Wright', 'lisaw@example.com', 'wright123'),
('Steven Lopez', 'stevenl@example.com', 'steven2021'),
('Nancy Hill', 'nancyh@example.com', 'nancy2020'),
('Kevin Scott', 'kevins@example.com', 'scott@321');



-- Create restaurant table
CREATE TABLE restaurant (
res_id INT PRIMARY KEY AUTO_INCREMENT,
res_name VARCHAR(100) NOT NULL,
image TEXT,
description TEXT
)

-- Create data for restaurant table
INSERT INTO restaurant (res_name, image, description) VALUES
('Ocean Breeze', 'ocean_breeze.jpg', 'A seaside restaurant offering fresh seafood and stunning ocean views.'),
('Mountain Grill', 'mountain_grill.jpg', 'A cozy retreat in the mountains serving grilled specialties and comfort food.'),
('Urban Bistro', 'urban_bistro.jpg', 'A chic bistro located in the heart of the city, known for its fusion cuisine.'),
('Country Diner', 'country_diner.jpg', 'A homestyle diner offering classic comfort food with a rustic feel.'),
('Sunset Café', 'sunset_cafe.jpg', 'A cozy café that offers coffee, pastries, and a great view of the sunset.'),
('Green Garden', 'green_garden.jpg', 'A vegetarian restaurant surrounded by a beautiful garden with organic dishes.'),
('Pizza Haven', 'pizza_haven.jpg', 'A family-friendly pizzeria known for its wood-fired pizzas and cozy atmosphere.'),
('Spicy Delight', 'spicy_delight.jpg', 'A restaurant specializing in bold, spicy flavors from around the world.'),
('Sushi Paradise', 'sushi_paradise.jpg', 'A top-notch sushi bar offering fresh sushi and sashimi.'),
('Burger House', 'burger_house.jpg', 'A casual burger joint known for its gourmet burgers and fries.'),
('The Vegan Spot', 'the_vegan_spot.jpg', 'A trendy vegan restaurant serving plant-based meals and smoothies.'),
('BBQ Kingdom', 'bbq_kingdom.jpg', 'A BBQ spot famous for its slow-cooked meats and smoky flavors.'),
('Taco Fiesta', 'taco_fiesta.jpg', 'A lively Mexican restaurant serving tacos, nachos, and margaritas.'),
('Pasta Palace', 'pasta_palace.jpg', 'An Italian restaurant offering a wide variety of pasta and Italian wines.'),
('Curry House', 'curry_house.jpg', 'An Indian restaurant known for its wide variety of curries and naan bread.'),
('Dim Sum Delight', 'dim_sum_delight.jpg', 'A Chinese restaurant specializing in authentic dim sum dishes.'),
('Grill & Chill', 'grill_chill.jpg', 'A modern grill restaurant with a laid-back atmosphere, perfect for socializing.'),
('Fish & Chips', 'fish_chips.jpg', 'A traditional British-style fish and chips shop near the pier.'),
('French Gourmet', 'french_gourmet.jpg', 'An upscale French restaurant known for its elegant dishes and fine dining experience.'),
('Bistro 99', 'bistro_99.jpg', 'A modern bistro offering a mix of international dishes with a creative twist.');


-- Create food_type table
CREATE TABLE food_type (
type_id INT PRIMARY KEY AUTO_INCREMENT,
type_name VARCHAR(255) NOT NULL
)
-- Create data for food_type table
INSERT INTO food_type (type_name) VALUES
('Italian'),
('Chinese'),
('Mexican'),
('Indian'),
('Japanese'),
('Thai'),
('French'),
('American'),
('Mediterranean'),
('Greek'),
('Spanish'),
('Vietnamese'),
('Korean'),
('Lebanese'),
('Turkish'),
('Brazilian'),
('Moroccan'),
('German'),
('Caribbean'),
('Ethiopian');



-- Create food table
CREATE TABLE food(
	food_id INT PRIMARY KEY AUTO_INCREMENT,
	food_name VARCHAR(255),
	image VARCHAR(255),
	price FLOAT,
	description VARCHAR(255),
	
	type_id INT,
	FOREIGN KEY (type_id) REFERENCES food_type(type_id) ON DELETE CASCADE

)
-- Create data for food table
INSERT INTO food (food_name, image, price, description, type_id) VALUES
('Margherita Pizza', 'margherita_pizza.jpg', 8.99, 'Classic Italian pizza with fresh mozzarella, tomatoes, and basil.', 1),
('Kung Pao Chicken', 'kung_pao_chicken.jpg', 12.50, 'Spicy stir-fry dish with chicken, peanuts, and vegetables.', 2),
('Tacos', 'tacos.jpg', 7.99, 'Mexican-style soft tacos with beef, lettuce, and salsa.', 3),
('Butter Chicken', 'butter_chicken.jpg', 11.99, 'Creamy and rich chicken curry, popular in Indian cuisine.', 4),
('Sushi Platter', 'sushi_platter.jpg', 14.99, 'Assorted sushi and sashimi served with soy sauce and wasabi.', 5),
('Pad Thai', 'pad_thai.jpg', 9.50, 'Stir-fried rice noodles with shrimp, tofu, peanuts, and lime.', 6),
('Croissant', 'croissant.jpg', 3.99, 'Flaky, buttery French pastry.', 7),
('Cheeseburger', 'cheeseburger.jpg', 6.99, 'Grilled burger with cheese, lettuce, tomato, and pickles.', 8),
('Hummus with Pita', 'hummus_pita.jpg', 5.50, 'Creamy hummus served with warm pita bread.', 9),
('Gyro', 'gyro.jpg', 8.99, 'Greek-style wrap with lamb, tzatziki, and fresh vegetables.', 10),
('Paella', 'paella.jpg', 13.50, 'Traditional Spanish rice dish with seafood, chicken, and saffron.', 11),
('Pho', 'pho.jpg', 8.99, 'Vietnamese noodle soup with beef and herbs.', 12),
('Bibimbap', 'bibimbap.jpg', 9.99, 'Korean rice bowl with mixed vegetables, beef, and a fried egg.', 13),
('Falafel', 'falafel.jpg', 6.50, 'Deep-fried chickpea balls served with tahini sauce.', 14),
('Kebab', 'kebab.jpg', 10.99, 'Grilled skewers of meat served with rice or pita.', 15),
('Feijoada', 'feijoada.jpg', 11.50, 'Traditional Brazilian black bean stew with pork.', 16),
('Tagine', 'tagine.jpg', 12.99, 'Moroccan slow-cooked stew with lamb, dried fruits, and spices.', 17),
('Bratwurst', 'bratwurst.jpg', 7.99, 'German sausage served with sauerkraut and mustard.', 18),
('Jerk Chicken', 'jerk_chicken.jpg', 10.50, 'Spicy Jamaican chicken dish with a smoky flavor.', 19),
('Doro Wat', 'doro_wat.jpg', 11.99, 'Ethiopian chicken stew with spices and hard-boiled eggs.', 20);




-- Create order table
CREATE TABLE orders (
	order_id INT PRIMARY KEY AUTO_INCREMENT,
	
	user_id INT,
	FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
	
	food_id INT,
	FOREIGN KEY (food_id) REFERENCES food(food_id) ON DELETE CASCADE,
	
	amount INT,
	code VARCHAR(30),
	arr_sub_id VARCHAR(255)
	
)
-- Create data for orders table
INSERT INTO orders (user_id, food_id, amount, code, arr_sub_id) VALUES
(1, 1, 2, 'ORD001', 'SUB001, SUB002'),
(2, 3, 5, 'ORD002', 'SUB003, SUB004'),
(3, 5, 1, 'ORD003', 'SUB005'),
(4, 7, 3, 'ORD004', 'SUB006, SUB007, SUB008'),
(5, 8, 4, 'ORD005', 'SUB009, SUB010'),
(6, 10, 2, 'ORD006', 'SUB011, SUB012'),
(7, 12, 6, 'ORD007', 'SUB013, SUB014, SUB015'),
(8, 14, 1, 'ORD008', 'SUB016'),
(9, 15, 3, 'ORD009', 'SUB017, SUB018'),
(10, 16, 2, 'ORD010', 'SUB019, SUB020'),
(11, 17, 4, 'ORD011', 'SUB021, SUB022, SUB023'),
(12, 18, 2, 'ORD012', 'SUB024, SUB025'),
(13, 19, 5, 'ORD013', 'SUB026, SUB027'),
(14, 20, 1, 'ORD014', 'SUB028'),
(15, 2, 3, 'ORD015', 'SUB029, SUB030'),
(16, 4, 4, 'ORD016', 'SUB031, SUB032, SUB033'),
(17, 6, 2, 'ORD017', 'SUB034, SUB035'),
(18, 9, 7, 'ORD018', 'SUB036, SUB037, SUB038'),
(19, 11, 3, 'ORD019', 'SUB039, SUB040'),
(20, 13, 2, 'ORD020', 'SUB041, SUB042');





-- Create rate_res table
CREATE TABLE rate_res(
rate_res_id INT PRIMARY KEY AUTO_INCREMENT,

user_id INT,
FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,

res_id INT,
FOREIGN KEY (res_id) REFERENCES restaurant(res_id) ON DELETE CASCADE,

amount INT,
date_rate DATETIME

)
-- Create data for rate_res table
INSERT INTO rate_res (user_id, res_id, amount, date_rate) VALUES
(1, 1, 5, '2024-09-01 12:30:00'),
(2, 2, 4, '2024-09-02 14:45:00'),
(3, 3, 3, '2024-09-03 18:00:00'),
(4, 4, 5, '2024-09-04 11:15:00'),
(5, 5, 2, '2024-09-05 13:30:00'),
(6, 6, 4, '2024-09-06 16:00:00'),
(7, 7, 3, '2024-09-07 19:15:00'),
(8, 8, 5, '2024-09-08 20:30:00'),
(9, 9, 2, '2024-09-09 21:45:00'),
(10, 10, 4, '2024-09-10 22:00:00'),
(11, 11, 5, '2024-09-11 12:30:00'),
(12, 12, 3, '2024-09-12 14:45:00'),
(13, 13, 4, '2024-09-13 18:00:00'),
(14, 14, 2, '2024-09-14 11:15:00'),
(15, 15, 5, '2024-09-15 13:30:00'),
(16, 16, 3, '2024-09-16 16:00:00'),
(17, 17, 4, '2024-09-17 19:15:00'),
(18, 18, 2, '2024-09-18 20:30:00'),
(19, 19, 5, '2024-09-19 21:45:00'),
(20, 20, 4, '2024-09-20 22:00:00');





-- Create like_res table
CREATE TABLE like_res(
like_res_id INT PRIMARY KEY AUTO_INCREMENT,

user_id INT,
FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,

res_id INT,
FOREIGN KEY (res_id) REFERENCES restaurant(res_id) ON DELETE CASCADE,

date_like DATETIME
)
-- Create data for like_res table
INSERT INTO like_res (user_id, res_id, date_like) VALUES
(1, 1, '2024-09-01 10:00:00'),
(2, 2, '2024-09-02 11:15:00'),
(3, 3, '2024-09-03 12:30:00'),
(4, 4, '2024-09-04 13:45:00'),
(5, 5, '2024-09-05 14:00:00'),
(6, 6, '2024-09-06 15:15:00'),
(7, 7, '2024-09-07 16:30:00'),
(8, 8, '2024-09-08 17:45:00'),
(9, 9, '2024-09-09 18:00:00'),
(10, 10, '2024-09-10 19:15:00'),
(11, 11, '2024-09-11 20:30:00'),
(12, 12, '2024-09-12 21:45:00'),
(13, 13, '2024-09-13 22:00:00'),
(14, 14, '2024-09-14 10:00:00'),
(15, 15, '2024-09-15 11:15:00'),
(16, 16, '2024-09-16 12:30:00'),
(17, 17, '2024-09-17 13:45:00'),
(18, 18, '2024-09-18 14:00:00'),
(19, 19, '2024-09-19 15:15:00'),
(20, 20, '2024-09-20 16:30:00');


--- Tìm 5 người đã like nhà hàng nhiều nhất
SELECT user_id, COUNT(res_id) AS like_count
FROM like_res
GROUP BY user_id
ORDER BY like_count DESC
LIMIT 5;


--- Tìm 2 nhà hàng có lượt like nhiều nhất
SELECT res_id, COUNT(user_id) AS like_count
FROM like_res
GROUP BY res_id
ORDER BY like_count DESC
LIMIT 2;


--- Tìm người đã đặt hàng nhiều nhất
SELECT user_id, COUNT(order_id) AS order_count
FROM orders
GROUP BY user_id
ORDER BY order_count DESC
LIMIT 1;


-- Tìm người dùng không hoạt động trong hệ thống (không đặt hàng, không like, không đánh giá nhà hàng)
SELECT u.user_id, u.full_name
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
LEFT JOIN like_res l ON u.user_id = l.user_id
LEFT JOIN rate_res r ON u.user_id = r.user_id
WHERE o.user_id IS NULL
AND l.user_id IS NULL
AND r.user_id IS NULL;