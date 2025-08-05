CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(100)
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(150),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);
INSERT INTO Authors (author_id, name, country) VALUES
(1, 'A', 'UK'),
(2, 'B', 'USA'),
(3, 'C', 'IND');

INSERT INTO Books (book_id, title, author_id) VALUES
(101, 'x', 1),
(102, 'Y', 2),
(103, 'Z', 3);

SELECT 
    B.title AS Book_Title,
    A.name AS Author_Name,
    A.country AS Author_Country
FROM 
    Books B
INNER JOIN 
    Authors A ON B.author_id = A.author_id;

