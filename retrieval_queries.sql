---1. Books by Genre
SELECT b.title, b.author, g.genre_name
FROM Books b
JOIN Genres g ON b.genre_id = g.genre_id
WHERE g.genre_name = 'Science Fiction';

---2. Books Borrowed by a Specific User
SELECT u.name, b.title, bh.borrow_date, bh.due_date
FROM Borrowing_History bh
JOIN Users u ON bh.user_id = u.user_id
JOIN Books b ON bh.book_id = b.book_id
WHERE u.name = 'Alice Johnson';

---3. List All Available Books
SELECT title, author, copies_available
FROM Books
WHERE copies_available > 0;

---4. Books with Average Rating
SELECT b.title, AVG(br.rating) AS average_rating
FROM Books b
JOIN Book_Reviews br ON b.book_id = br.book_id
GROUP BY b.title
ORDER BY average_rating DESC;

---5. Reservations for a Book
SELECT r.reservation_id, u.name AS user_name, b.title, r.reservation_date, r.status
FROM Reservations r
JOIN Users u ON r.user_id = u.user_id
JOIN Books b ON r.book_id = b.book_id
WHERE b.title = 'The Time Machine';

---6. Overdue Books
SELECT u.name, b.title, bh.due_date, bh.return_date
FROM Borrowing_History bh
JOIN Users u ON bh.user_id = u.user_id
JOIN Books b ON bh.book_id = b.book_id
WHERE bh.return_date IS NULL AND bh.due_date < CURDATE();

---7. Users with Outstanding Fines
SELECT u.name, SUM(bh.fine_amount) AS total_fines
FROM Borrowing_History bh
JOIN Users u ON bh.user_id = u.user_id
WHERE bh.fine_amount > 0
GROUP BY u.user_id;
