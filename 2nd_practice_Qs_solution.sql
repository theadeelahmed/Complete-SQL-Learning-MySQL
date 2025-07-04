create database if not exists company;

use company;

CREATE TABLE payment (
    customer_id INT PRIMARY KEY,
    customer VARCHAR(50),
    mode VARCHAR(20),
    city VARCHAR(20)
);

INSERT INTO payment
(customer_id, customer, mode, city)
 VALUES
(101, 'Adeel Ahmed', 'Netbanking', 'Karachi'),
(102, 'Ali Raza', 'Credit Card', 'Lahore'),
(103, 'Sana Khan', 'Credit Card', 'Islamabad'),
(104, 'Usman Tariq', 'Netbanking', 'Faisalabad'),
(105, 'Hira Malik', 'Credit Card', 'Multan'),
(106, 'Hamza Sheikh', 'Debit Card', 'Hyderabad'),
(107, 'Iqra Aslam', 'Debit Card', 'Quetta'),
(108, 'Zain Ul Abideen', 'Netbanking', 'Rawalpindi'),
(109, 'Ayesha Farooq', 'Netbanking', 'Peshawar'),
(110, 'Bilal Nadeem', 'Credit Card', 'Sialkot');


select mode , count(customer)
from payment
group by mode;
