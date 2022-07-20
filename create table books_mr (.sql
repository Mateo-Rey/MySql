create table books_mr (
    Id INT PRIMARY KEY,
    Title TEXT,
    Genre TEXT,
    Author TEXT,
    Qty INT
);

create table Users_mr (
    Id INT PRIMARY KEY,
    Fname TEXT,
    Lname TEXT,
    email TEXT UNIQUE
);

ALTER TABLE books_mr RENAME TO books_mateo;
select * from books_mateo;
select * from users_mr;
ALTER TABLE Users_mr MODIFY COLUMN email VARCHAR(100) UNIQUE NOT NULL;

CREATE TABLE Checkout_mr (
    Id INT PRIMARY KEY,
    book_id INT,
    user_id INT,
    checkout_date TEXT,
    return_date DATETIME,
    FOREIGN KEY (book_id) REFERENCES books_mateo (Id),
    FOREIGN KEY (user_id) REFERENCES Users_mr (Id)
);

INSERT INTO books_mateo (id, title, genre, author)
VALUES (1, "The Old Man and The Sea", "Fiction", "Ernest Hemingway");

UPDATE books_mateo
Set QTY = 10000
WHERE id = 1;

SELECT * FROM Books_dd;