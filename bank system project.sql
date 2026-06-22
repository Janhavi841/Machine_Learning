CREATE DATABASE bank_system;

USE bank_system;

CREATE TABLE users (
    account_number VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100),
    password VARCHAR(100),
    account_type VARCHAR(20),
    balance INT
);

CREATE TABLE transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sender VARCHAR(20),
    receiver VARCHAR(20),
    amount INT,
    note VARCHAR(200),
    date VARCHAR(20)
);

-- Add 2 test users
-- INSERT INTO users VALUES ('9876543210001', 'Janavi', '1234', 'Normal', 15000);
-- INSERT INTO users VALUES ('9876543210002', 'Riya',   '1234', 'Normal', 10000);

-- MY OWN SHIT
USE bank_system;

-- Delete old plain text password users
DELETE FROM users WHERE account_number = '6755432890001';
DELETE FROM users WHERE account_number = '9876543210002';

-- Check remaining users
SELECT * FROM users;
-- MY OWN SHIT

SELECT * FROM transactions ;
SELECT * FROM users;

USE bank_system;
ALTER TABLE users MODIFY password VARCHAR(255);

DELETE FROM users WHERE account_number = '2345676567001';
DELETE FROM users WHERE account_number = '7644983023001';

##############################################################################

USE bank_system;

CREATE TABLE IF NOT EXISTS admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(200)
);
SELECT * FROM admin;


###########################################################################

DELETE FROM users WHERE name = 'mandar';

DELETE FROM users WHERE name = 'Harsh';
SELECT * FROM users;

USE bank_system;
SELECT * FROM admin;

USE bank_system;
INSERT INTO admin (username, password) VALUES ('admin', 'admin123');
SELECT * FROM admin;

#######################################################
SET SQL_SAFE_UPDATES = 0;
DELETE FROM users WHERE name = 'Harsh';
SET SQL_SAFE_UPDATES = 1;