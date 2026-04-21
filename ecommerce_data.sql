-- Insert Data

INSERT INTO Customers VALUES
(1, 'Amit', 'amit@gmail.com', '9876543210', 'Chennai'),
(2, 'Priya', 'priya@gmail.com', '9876543211', 'Mumbai'),
(3, 'Rahul', 'rahul@gmail.com', '9876543212', 'Delhi');

INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 60000, 10),
(102, 'Mobile', 'Electronics', 20000, 20),
(103, 'Headphones', 'Accessories', 2000, 50),
(104, 'Shoes', 'Fashion', 3000, 30);

INSERT INTO Orders VALUES
(1001, 1, '2026-04-01', 62000),
(1002, 2, '2026-04-02', 23000),
(1003, 3, '2026-04-03', 3000);

INSERT INTO Order_Details VALUES
(1, 1001, 101, 1, 60000),
(2, 1001, 103, 1, 2000),
(3, 1002, 102, 1, 20000),
(4, 1002, 103, 1, 2000),
(5, 1003, 104, 1, 3000);