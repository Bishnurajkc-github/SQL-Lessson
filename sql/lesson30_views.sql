.print '========================================'
.print 'LESSON 30 - DATABASE VIEWS'
.print '========================================'

.print ''
.print 'STEP 1: Creating the customers and orders tables...'
.print ''
.print 'First, we remove any old lesson data.'

.print ''
.print 'SQL:'
.print 'DROP VIEW IF EXISTS customer_orders;'
.print 'DROP TABLE IF EXISTS orders;'
.print 'DROP TABLE IF EXISTS customers;'
.print ''
.print 'Executing SQL...'

DROP VIEW IF EXISTS customer_orders;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

.print 'Old lesson objects removed.'

.print ''
.print 'Now we create the customers table.'

.print ''
.print 'SQL:'
.print 'CREATE TABLE customers ('
.print '    customer_id INTEGER PRIMARY KEY,'
.print '    customer_name TEXT NOT NULL'
.print ');'
.print ''
.print 'Executing SQL...'

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT NOT NULL
);

.print 'customers table created.'

.print ''
.print 'Now we create the orders table.'

.print ''
.print 'SQL:'
.print 'CREATE TABLE orders ('
.print '    order_id INTEGER PRIMARY KEY,'
.print '    customer_id INTEGER,'
.print '    product TEXT NOT NULL,'
.print '    amount REAL,'
.print '    FOREIGN KEY (customer_id)'
.print '        REFERENCES customers(customer_id)'
.print ');'
.print ''
.print 'Executing SQL...'

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    product TEXT NOT NULL,
    amount REAL,
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

.print 'orders table created.'

.print ''
.print 'STEP 2: Inserting customers...'

.print ''
.print 'SQL:'
.print 'INSERT INTO customers VALUES'
.print '(1, ''Bishnu''),'
.print '(2, ''Aayushi''),'
.print '(3, ''Ram''),'
.print '(4, ''Sita'');'
.print ''
.print 'Executing SQL...'

INSERT INTO customers VALUES
(1, 'Bishnu'),
(2, 'Aayushi'),
(3, 'Ram'),
(4, 'Sita');

.print 'Customers inserted.'

.print ''
.print 'STEP 3: Inserting orders...'

.print ''
.print 'SQL:'
.print 'INSERT INTO orders VALUES'
.print '(101, 1, ''Laptop'', 80000),'
.print '(102, 1, ''Mouse'', 1500),'
.print '(103, 2, ''Keyboard'', 3000),'
.print '(104, 2, ''Monitor'', 25000);'
.print ''
.print 'Executing SQL...'

INSERT INTO orders VALUES
(101, 1, 'Laptop', 80000),
(102, 1, 'Mouse', 1500),
(103, 2, 'Keyboard', 3000),
(104, 2, 'Monitor', 25000);

.print 'Orders inserted.'

.print ''
.print 'STEP 4: Looking at our tables...'

.print ''
.print 'SQL:'
.print 'SELECT * FROM customers;'
.print ''
.print 'Executing SQL...'

SELECT * FROM customers;

.print ''
.print 'SQL:'
.print 'SELECT * FROM orders;'
.print ''
.print 'Executing SQL...'

SELECT * FROM orders;

.print ''
.print 'STEP 5: Running the JOIN normally...'

.print ''
.print 'SQL:'
.print 'SELECT'
.print '    c.customer_name,'
.print '    o.product,'
.print '    o.amount'
.print 'FROM customers AS c'
.print 'JOIN orders AS o'
.print 'ON c.customer_id = o.customer_id;'
.print ''
.print 'Executing SQL...'

SELECT
    c.customer_name,
    o.product,
    o.amount
FROM customers AS c
JOIN orders AS o
ON c.customer_id = o.customer_id;

.print ''
.print 'STEP 6: Creating a VIEW from that JOIN...'

.print ''
.print 'A VIEW gives a name to a saved SELECT query.'

.print ''
.print 'SQL:'
.print 'CREATE VIEW customer_orders AS'
.print 'SELECT'
.print '    c.customer_name,'
.print '    o.product,'
.print '    o.amount'
.print 'FROM customers AS c'
.print 'JOIN orders AS o'
.print 'ON c.customer_id = o.customer_id;'
.print ''
.print 'Executing SQL...'

CREATE VIEW customer_orders AS
SELECT
    c.customer_name,
    o.product,
    o.amount
FROM customers AS c
JOIN orders AS o
ON c.customer_id = o.customer_id;

.print 'VIEW customer_orders created.'

.print ''
.print 'STEP 7: Querying the VIEW...'

.print ''
.print 'SQL:'
.print 'SELECT * FROM customer_orders;'
.print ''
.print 'Executing SQL...'

SELECT * FROM customer_orders;

.print ''
.print '========================================'
.print 'END OF LESSON 30 - PART 1'
.print '========================================'