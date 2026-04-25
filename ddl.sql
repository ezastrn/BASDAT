-- CUSTOMER

CREATE TABLE Customer (
    id_customer INT PRIMARY KEY,
    nama VARCHAR(100),
    email VARCHAR(100),
    alamat TEXT,
    no_telepon VARCHAR(20)
);


-- ADMIN

CREATE TABLE Admin (
    id_admin INT PRIMARY KEY,
    nama_admin VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(100),
    no_hp VARCHAR(20)
);


-- CATEGORY

CREATE TABLE Category (
    id_category INT PRIMARY KEY,
    nama_kategori VARCHAR(100)
);


-- PRODUCT

CREATE TABLE Product (
    id_product INT PRIMARY KEY,
    nama_produk VARCHAR(100),
    harga DECIMAL(10,2),
    stok INT,
    ukuran VARCHAR(50),
    warna VARCHAR(50),
    id_admin INT,
    FOREIGN KEY (id_admin) REFERENCES Admin(id_admin)
);


-- RELASI PRODUCT - CATEGORY (OWN)

CREATE TABLE Product_Category (
    id_category INT,
    id_product INT,
    PRIMARY KEY (id_category, id_product),
    FOREIGN KEY (id_category) REFERENCES Category(id_category),
    FOREIGN KEY (id_product) REFERENCES Product(id_product)
);


-- ORDER

CREATE TABLE Orders (
    id_order INT PRIMARY KEY,
    id_customer INT,
    subtotal DECIMAL(10,2),
    status_order VARCHAR(50),
    FOREIGN KEY (id_customer) REFERENCES Customer(id_customer)
);


-- ORDER DETAIL

CREATE TABLE OrderDetail (
    id_order INT,
    id_product INT,
    harga DECIMAL(10,2),
    jumlah INT,
    subtotal DECIMAL(10,2),
    PRIMARY KEY (id_order, id_product),
    FOREIGN KEY (id_order) REFERENCES Orders(id_order),
    FOREIGN KEY (id_product) REFERENCES Product(id_product)
);


-- CART

CREATE TABLE Cart (
    id_cart INT PRIMARY KEY,
    id_order INT,
    subtotal DECIMAL(10,2),
    FOREIGN KEY (id_order) REFERENCES Orders(id_order)
);


-- INVOICES

CREATE TABLE Invoices (
    id_invoices INT PRIMARY KEY,
    id_order INT,
    nama_jasa_kirim VARCHAR(100),
    alamat TEXT,
    tanggal_pesan DATE,
    subtotal DECIMAL(10,2),
    status_pembayaran VARCHAR(50),
    FOREIGN KEY (id_order) REFERENCES Orders(id_order)
);


-- SHIPMENT

CREATE TABLE Shipment (
    id_shipment INT PRIMARY KEY,
    id_invoices INT,
    alamat TEXT,
    status_kirim VARCHAR(50),
    nama_jasa_kirim VARCHAR(100),
    estimasi VARCHAR(50),
    ongkir DECIMAL(10,2),
    FOREIGN KEY (id_invoices) REFERENCES Invoices(id_invoices)
);


-- PAYMENT

CREATE TABLE Payment (
    id_payment INT PRIMARY KEY,
    id_order INT,
    id_invoices INT,
    status_pembayaran VARCHAR(50),
    subtotal DECIMAL(10,2),
    alamat TEXT,
    jasa_kirim VARCHAR(100),
    metode_pembayaran VARCHAR(50),
    FOREIGN KEY (id_order) REFERENCES Orders(id_order),
    FOREIGN KEY (id_invoices) REFERENCES Invoices(id_invoices)
);
