-- 7.1 Books per author
SELECT *
FROM Authors A
JOIN Books B
	ON B.AuthorEmail1 = A.AuthorEmail 
    OR B.AuthorEmail2 = A.AuthorEmail
    OR B.AuthorEmail3 = A.AuthorEmail

-- 7.2. Authors per book.
SELECT *
FROM Books B
JOIN Author A
	ON B.AuthorEmail1 = A.AuthorEmail 
    OR B.AuthorEmail2 = A.AuthorEmail
    OR B.AuthorEmail3 = A.AuthorEmail

-- 7.3. Author royalties on a book.
SELECT *
FROM Books B
JOIN BookRoyalties R
	ON R.isbn = B.isbn

-- 7.4. Book royalties per author.
SELECT *
FROM Authors A
JOIN BookRoyalties R
	ON A.AuthorEmail = R.AuthorEmail

-- 7.5. Books in a genre. (specific genre)
SELECT *
FROM Books
WHERE Genre = 'Mystery'

-- 7.6 Books published by a publisher 
-- specific to one publisher
SELECT *
FROM Books
WHERE PublisherEmail = (SELECT PublisherEmail
						FROM Publishers
						WHERE PublisherName = "Luis Miguel")
-- table for all publishers
SELECT *
FROM Publishers P
JOIN Books B
	ON P.PublisherEmail = B.PublisherEmail

-- 7.7. Editors per book.
SELECT *
FROM Books B
JOIN Editors E
	ON B.EditorEmail1 = E.EditorEmail
    OR B.EditorEmail2 = E.EditorEmail
    OR B.EditorEmail3 = E.EditorEmail

-- 7.8. Books per editor
SELECT *
FROM Editors E
JOIN Books B
	ON B.EditorEmail1 = E.EditorEmail
    OR B.EditorEmail2 = E.EditorEmail
    OR B.EditorEmail3 = E.EditorEmail

-- 7.9. Books in an order.
SELECT *
FROM Orders O
JOIN Books B
	ON O.ISBN = B.ISBN

-- 7.10. Orders for a book.
SELECT *
FROM Books B
JOIN Orders O
	ON O.ISBN = B.ISBN
    -- add if specific to a book
WHERE Title = "Leave force ahead"

-- 7.11. Customer orders
SELECT *
FROM Orders O 
JOIN Customers C
	ON O.CustomerEmail = C.CustomerEmail

-- 7.12. Orders per customer.
SELECT *
FROM Customers C
JOIN Orders O
	ON O.CustomerEmail = C.CustomerEmail