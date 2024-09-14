#TẠO MỘT DATABASE

CREATE DATABASE node44;

#SỬ DỤNG DATABASE

USE node44;

#TẠO TABLE

CREATE TABLE users(
	user_id INT,
	full_name VARCHAR(50),
	email VARCHAR(255),
	age INT,
	gender INT,
	address VARCHAR(255)
)

#TẠO DATA

INSERT INTO users (user_id, full_name, email, age, gender, address)
VALUES
(1, 'John Doe', 'johndoe@example.com', 25, 1, '123 Maple St, Springfield'),
(2, 'Jane Smith', 'janesmith@example.com', 30, 0, '456 Oak Ave, Springfield'),
(3, 'Emily Johnson', 'emilyj@example.com', 22, 0, '789 Birch Rd, Springfield'),
(4, 'Michael Brown', 'michaelb@example.com', 35, 1, '101 Pine Ln, Springfield'),
(5, 'Sarah Davis', 'sarahd@example.com', 28, 0, '202 Cedar Dr, Springfield'),
(6, 'David Wilson', 'davidw@example.com', 40, 1, '303 Elm St, Springfield'),
(7, 'Laura Martinez', 'lauram@example.com', 27, 0, '404 Ash Ct, Springfield'),
(8, 'James Anderson', 'jamesa@example.com', 32, 1, '505 Cherry St, Springfield'),
(9, 'Linda Clark', 'lindac@example.com', 29, 0, '606 Poplar Ave, Springfield'),
(10, 'Robert Lewis', 'robertl@example.com', 33, 1, '707 Fir St, Springfield'),
(11, 'Patricia Walker', 'patriciaw@example.com', 24, 0, '808 Spruce Dr, Springfield'),
(12, 'Charles Hall', 'charlesh@example.com', 38, 1, '909 Cypress Ct, Springfield'),
(13, 'Jennifer Allen', 'jennifera@example.com', 26, 0, '1010 Redwood St, Springfield'),
(14, 'Paul Young', 'pauly@example.com', 36, 1, '1111 Maple Ln, Springfield'),
(15, 'Kimberly Hernandez', 'kimberlyh@example.com', 31, 0, '1212 Oak St, Springfield'),
(16, 'Joshua King', 'joshuak@example.com', 23, 1, '1313 Birch Ave, Springfield'),
(17, 'Lisa Wright', 'lisaw@example.com', 29, 0, '1414 Pine Rd, Springfield'),
(18, 'Steven Lopez', 'stevenl@example.com', 34, 1, '1515 Cedar St, Springfield'),
(19, 'Nancy Hill', 'nancyh@example.com', 27, 0, '1616 Elm Dr, Springfield'),
(20, 'Kevin Scott', 'kevins@example.com', 41, 1, '1717 Ash St, Springfield');


#Thêm column
ALTER TABLE users
ADD COLUMN passport VARCHAR(50)



#Đổi kiểu dữ liệu column
ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(255)


#Thêm ràng buộc (constraints) cho column user_id (primary key)
ALTER TABLE users
MODIFY COLUMN user_id INT PRIMARY KEY AUTO_INCREMENT,
MODIFY COLUMN email VARCHAR(255) NOT NULL,
MODIFY COLUMN full_name VARCHAR(255) NOT NULL

#QUERY DATA

#GET DATA

SELECT * FROM users;

#GET những người có tên John
SELECT * FROM users
WHERE full_name LIKE '%John%'

# %John: tìm những người có tên John ở cuối => ABCJohn, Emily John
# John%: tìm những người có tên John ở đầu => John Doe, Johnson
# %John%: tìm những người có tên John (đầu và cuối)


# filter những người có tuổi trong phạm vi 25-35 tuổi

# cách 1:
SELECT * FROM users
WHERE age >= 25 AND age <=35

# cách 2:
SELECT * FROM users
WHERE age BETWEEN 25 AND 35

#Sắp xếp
# tăng dần ASC, giảm dần DESC
ORDER BY age ASC
LIMIT 5


# Tương tác data: thêm, xóa, sửa

# sửa
UPDATE users SET age = 30
WHERE user_id=3

SELECT * FROM users
WHERE user_id = 3


# xóa
DELETE FROM users
WHERE user_id = 3

SELECT * FROM users
WHERE user_id = 3


# đếm những người có tuổi 31
# => count, group by


SELECT COUNT(*), full_name
FROM users
GROUP BY full_name