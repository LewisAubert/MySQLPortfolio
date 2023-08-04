USE SportingGoods;

-- Check if the table exists
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Items')
BEGIN
    -- Create the Items table
    CREATE TABLE Items (
        item_id INTEGER PRIMARY KEY,
        item_name TEXT NOT NULL,
        category TEXT NOT NULL,
        price NUMERIC NOT NULL,
        stock_quantity INTEGER NOT NULL,
        brand TEXT NOT NULL
    );
END;

-- Inserting sample data
INSERT INTO Items (item_id, item_name, category, price, stock_quantity, brand)
VALUES
    (1, 'Running Shoes', 'Footwear', 79.99, 100, 'Nike'),
    (2, 'Tennis Racket', 'Tennis', 129.99, 30, 'Wilson'),
    (3, 'Basketball', 'Basketball', 19.99, 50, 'Spalding'),
    (4, 'Yoga Mat', 'Yoga', 29.99, 75, 'Gaiam'),
    (5, 'Soccer Ball', 'Soccer', 24.99, 40, 'Adidas'),
    (6, 'Dumbbell Set', 'Fitness Equipment', 149.99, 20, 'Bowflex'),
    (7, 'Golf Clubs Set', 'Golf', 299.99, 15, 'Callaway'),
    (8, 'Cycling Helmet', 'Cycling', 49.99, 60, 'Bell'),
    (9, 'Swimming Goggles', 'Swimming', 14.99, 100, 'Speedo'),
    (10, 'Hiking Backpack', 'Outdoor Gear', 79.99, 25, 'Osprey'),
    (11, 'Treadmill', 'Fitness Equipment', 899.99, 10, 'ProForm'),
    (12, 'Baseball Glove', 'Baseball', 39.99, 35, 'Rawlings'),
    (13, 'Skateboard', 'Skateboarding', 59.99, 45, 'Element'),
    (14, 'Jump Rope', 'Fitness Accessories', 9.99, 150, 'Everlast'),
    (15, 'Tennis Shoes', 'Footwear', 69.99, 60, 'Asics');

-- Display all items in the store
SELECT * FROM Items;

-- Order items by price in ascending order
SELECT * FROM Items ORDER BY price;

-- Order items by price in descending order
SELECT * FROM Items ORDER BY price DESC;

-- Show the average price of items
SELECT AVG(price) AS avg_price FROM Items;