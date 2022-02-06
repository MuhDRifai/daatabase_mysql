-- TABLE

CREATE TABLE user (
    id_user INT NOT NULL, PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    phone_number INT (45) NOT NULL,
    user_name VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL,
    password VARCHAR(45) NOT NULL,
    pin INT NOT NULL

)

CREATE TABLE wallet (
    id_wallet INT NOT NULL, PRIMARY KEY,
    id_user INT NOT NULL,
    balance INT
)

CREATE TABLE contact (
    id_contact INT NOT NULL, PRIMARY KEY,
    id_user INT NOT NULL,
    name VARCHAR(45) NOT NULL,
    phone_number INT, NOT NULL
)

CREATE TABLE transaction (
    id_transaction INT NOT NULL, PRIMARY KEY,
    source_id INT NOT NULL,
    destination_id INT NOT NULL,
    amount INT NOT NULL,
    date DATETIME, NOT NULL, CURRENT_TIMESTAMP,
    notes VARCHAR(45)
)

CREATE TABLE history(
    id_history INT NOT NULL, PRIMARY KEY,
    id_transaction INT NOT NULL,
    status VARCHAR(45) NOT NULL
)

-- FOREIGN KEY 
ALTER TABLE wallet ADD FOREIGN KEY (id_user) REFERENCES user(id_user);

ALTER TABLE contact ADD FOREIGN KEY (id_user) REFERENCES user(id_user);

ALTER TABLE transaction ADD FOREIGN KEY (source_id) REFERENCES wallet(id_wallet);
ALTER TABLE transaction ADD FOREIGN KEY (destination_id) REFERENCES wallet(id_wallet);

ALTER TABLE history ADD FOREIGN KEY (id_transaction) REFERENCES transaction(id_transaction);

-- INSERT DATA
INSERT INTO user VALUE(
    56789,'Rifai',0859001899,'Rifai23','Rifai@gmail.com','200796','12161899'
);

INSERT INTO wallet VALUE(
    12345,56789,50000
);

INSERT INTO contact VALUE(
    23456,56789,'Rifai',0859001899
);

INSERT INTO transaction VALUE(
    345678,56789,3456789,10000,'2022-01-22','beli_pulsa'
);

INSERT INTO history VALUE(
    23145,345678,'succes'
);

-- JOIN TABLE
-- INNER JOIN
SELECT * FROM user INNER JOIN wallet ON user.id_user = wallet.id_user;
-- LEFT JOIN
SELECT * FROM user LEFT JOIN wallet ON user.id_user = wallet.id_user;
-- RIGHT JOIN
SELECT * FROM user RIGHT JOIN wallet ON user.id_user = wallet.id_user;