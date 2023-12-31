--стовпчикова діаграма: вивести імена рецензентів та рейтинг, який вони поставили конкретній книзі 
SELECT Reviewer.Reviewer_Name, Review.Review_Rating
FROM Review
JOIN Reviewer ON Review.Reviewer_ID = Reviewer.Reviewer_ID
WHERE Review.Book_ID = 1000000002; 

--кругова діаграма: відобразити частку книг, які по жанру є Memoir
SELECT
  (SELECT COUNT(*) FROM Book) AS TotalBooks,
  (SELECT COUNT(*) FROM Book_Genre WHERE Genre_ID = (SELECT Genre_ID FROM Genre WHERE Genre_Name = 'Memoir')) AS MemoirBooks;

--графік залежності: рейтинг книг в залежності від року випуску
SELECT Book.Year, AVG(Book.Rating) AS AvgRating
FROM Book
GROUP BY Book.Year
ORDER BY Book.Year;
