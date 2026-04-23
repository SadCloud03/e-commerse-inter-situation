CREATE TABLE IF NOT EXISTS Countries (
    code TEXT PRIMARY KEY,
    name TEXT NOT NULL UNIQUE, 
    region TEXT NOT NULL,
    population INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Users (
    id INTEGER PRIMARY KEY, 
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    country_code TEXT NOT NULL,
    created_at DATE NOT NULL,
    FOREIGN KEY (country_code) REFERENCES Countries(code) 
);

CREATE TABLE IF NOT EXISTS Orders (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    order_date DATE NOT NULL,
    total_amount REAL NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

CREATE TABLE IF NOT EXISTS Categories (
    id INTEGER PRIMARY KEY,
    slug TEXT NOT NULL UNIQUE,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Products (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    price FLOAT NOT NULL,
    category_id INTEGER NOT NULL,
    FOREIGN KEY (category_id) REFERENCES Categories(id)
);

CREATE TABLE IF NOT EXISTS ProductsDetails (
    id INTEGER PRIMARY KEY,
    product_id INTEGER NOT NULL UNIQUE,
    stock INTEGER NOT NULL DEFAULT 0,
    rating REAL NOT NULL,
    weight REAL NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Products(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS OrderItems (
    id INTEGER PRIMARY KEY,
    order_id INTEGER NOT NULL UNIQUE,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    unit_price REAL NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(id), 
    FOREIGN KEY (product_id) REFERENCES Products(id)
);

CREATE TABLE IF NOT EXISTS ShippingRegions (
    id INTEGER PRIMARY KEY,
    country_code TEXT NOT NULL,
    region TEXT NOT NULL,
    shipping_zone TEXT NOT NULL,
    estimated_days INTEGER NOT NULL,
    FOREIGN KEY (country_code) REFERENCES Countries(code) ON DELETE CASCADE
);