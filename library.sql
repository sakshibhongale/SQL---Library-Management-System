-- Create Authors Table
CREATE TABLE authors (
    author_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

-- Create Books Table
CREATE TABLE books (
    book_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    author_id INTEGER,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- Insert Sample Data into Authors Table
INSERT INTO authors (name) VALUES ('J.K. Rowling'), ('J.R.R. Tolkien'), ('George R.R. Martin'),('Sasuke');

-- Insert Sample Data into Books Table
INSERT INTO books (title, author_id) VALUES 
('Harry Potter and the Sorcerer"s Stone', 1), 
('The Hobbit', 2), 
('A Game of Thrones', 3),
('Naruto', 4);

-- Query to View All Books
SELECT books.title, authors.name AS author 
FROM books 
JOIN authors ON books.author_id = authors.author_id;

-- Query to View All Authors
SELECT * FROM authors;

-- Query to Find Books by a Specific Author
SELECT books.title 
FROM books 
JOIN authors ON books.author_id = authors.author_id 
WHERE authors.name = 'Sasuke';
