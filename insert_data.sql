---GENRES TABLE:
INSERT INTO Genres (genre_name, description) VALUES
('Science Fiction', 'Fictional books based on futuristic science and technology'),
('Mystery', 'Books involving crime or puzzle-solving'),
('Romance', 'Books focusing on love stories'),
('History', 'Historical events and biographies'),
('Fantasy', 'Books involving magical or imaginary worlds');

---USERS TABLE:
INSERT INTO Users (name, email, membership_date, status) VALUES
('Alice Johnson', 'alice@gmail.com', '2023-01-15', 'Active'),
('Bob Smith', 'bob@yahoo.com', '2022-11-22', 'Active'),
('Clara White', 'clara@hotmail.com', '2023-05-03', 'Inactive'),
('David Brown', 'david@gmail.com', '2021-08-30', 'Active'),
('Ella Green', 'ella@rediffmail.com', '2024-02-14', 'Active');

---BOOKS TABLE:
INSERT INTO Books (title, author, genre_id, year_published, isbn, copies_available) VALUES ('The Time Machine', 'H.G. Wells', 1, 1895, 'ISBN1234567890', 3),
('Sherlock Holmes', 'Arthur Conan Doyle', 2, 1887, 'ISBN2345678901', 2),
('Pride and Prejudice', 'Jane Austen', 3, 1813, 'ISBN3456789012', 4),
('World War II', 'Winston Churchill', 4, 1948, 'ISBN4567890123', 1),
('Harry Potter', 'J.K. Rowling', 5, 1997, 'ISBN5678901234', 5);

---BORROWING_HISTORY TABLE:
INSERT INTO Borrowing_History (user_id, book_id, borrow_date, due_date, return_date, fine_amount) VALUES
(1, 1, '2024-01-01', '2024-01-15', '2024-01-14', 0.00),
(2, 2, '2024-02-01', '2024-02-14', '2024-02-20', 15.00),
(3, 3, '2024-03-05', '2024-03-19', NULL, 0.00),
(4, 5, '2024-04-10', '2024-04-24', '2024-04-25', 5.00),
(5, 4, '2024-03-01', '2024-03-15', '2024-03-12', 0.00);


---BOOK_REVIEWS TABLE:
INSERT INTO Book_Reviews (user_id, book_id, rating, review_text, review_date) VALUES
(1, 1, 5, 'Amazing sci-fi classic!', '2024-01-16'),
(2, 2, 4, 'Intriguing mystery and great deduction.', '2024-02-21'),
(3, 3, 3, 'Romantic but a bit slow.', '2024-03-20'),
(4, 5, 5, 'Magical and thrilling.', '2024-04-26'),
(5, 4, 4, 'Informative and detailed.', '2024-03-13');

---STAFF TABLE:
INSERT INTO Staff (name, email, role, hire_date) VALUES
('Ravi Kumar', 'ravi@library.com', 'Librarian', '2020-05-10'),
('Sneha Sharma', 'sneha@library.com', 'Assistant Librarian', '2021-07-15'),
('Anil Mehta', 'anil@library.com', 'Technician', '2022-01-20'),
('Priya Das', 'priya@library.com', 'Data Entry', '2023-03-01'),
('Mohit Verma', 'mohit@library.com', 'Clerk', '2024-01-12');

---RESERVATIONS TABLE:
INSERT INTO Reservations (user_id, book_id, reservation_date, status) VALUES
(1, 2, '2024-04-01', 'Pending'),
(2, 1, '2024-04-02', 'Completed'),
(3, 5, '2024-04-03', 'Cancelled'),
(4, 3, '2024-04-04', 'Pending'),
(5, 4, '2024-04-05', 'Completed');
