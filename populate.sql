INSERT INTO Genre(Genre_ID, Genre_Name)
VALUES
(001, 'Fantasy'),
(002, 'Romance'),
(003, 'Memoir'),
(004, 'Autobiography'),
(005, 'Childrens'),
(006, 'Fiction');

INSERT INTO Book(Book_ID, Rank, Title, Price, Rating, Author, Year, URL)
VALUES
(1000000001, 1, 'Iron Flame (The Empyrean, 2)', 18.42, 4.1, 'Rebecca Yarros', 2023, 'amazon.com/Iron-Flame-Empyrean-Rebecca-Yarros/dp/1649374178/ref=zg_bs_g_books_sccl_1/143-9831347-104...'),
(1000000002, 2, 'The Woman in Me', 20.93, 4.5, 'Britney Spears', 2023, 'amazon.com/Woman-Me-Britney-Spears/dp/1668009048/ref=zg_bs_g_books_sccl_2/143-9831347-1043253?psc=1'),
(1000000003, 3, 'My Name Is Barbra', 31.5, 4.5, 'Barbra Streisand', 2023, 'amazon.com/My-Name-Barbra-Streisand/dp/0525429522/ref=zg_bs_g_books_sccl_3/143-9831347-1043253?psc=1'),
(1000000004, 4, 'Friends, Lovers, and the Big Terrible Thing: A Memoir', 23.99, 4.4, 'Matthew Perry', 2023, 'amazon.com/Friends-Lovers-Big-Terrible-Thing/dp/1250866448/ref=zg_bs_g_books_sccl_4/143-9831347-1043...'),
(1000000005, 5, 'How to Catch a Turkey', 5.65, 4.8, 'Adam Wallace', 2018, 'amazon.com/How-Catch-Turkey-Adam-Wallace/dp/1492664359/ref=zg_bs_g_books_sccl_5/143-9831347-1043253?...');

INSERT INTO Book_Genre(Book_ID, Genre_ID)
VALUES
(1000000001, 001),
(1000000001, 002),
(1000000002, 003),
(1000000003, 004),
(1000000004, 003),
(1000000005, 005),
(1000000005, 006);

INSERT INTO Reviewer(Reviewer_ID, Reviewer_Name)
VALUES
(1, 'Murderess Marbie'),
(2, 'L J'),
(3, 'Jamie'),
(4, 'KMG'),
(5, 'Stephanie Brown');

INSERT INTO Review(Review_ID, Sno, Review_Title, Review_Description, Review_Rating, Is_Verified, Date, Book_ID, Reviewer_ID)
VALUES
(0000000001, 0, 'Unbelievably impressive. Her torn life on paper.', 'I''m only a third way in. Shipped lightening fast.The print quality of the book is very good. I like ...', 4, true, TO_DATE('26-10-2023', 'dd-mm-yyyy'), 1000000002, 1),
(0000000002, 1, 'What a heartbreaking story', '"There have been so many times when I was scared to speak up because I was afraid somebody would thi...', 5, true, TO_DATE('06-11-2023', 'dd-mm-yyyy'), 1000000002, 2),
(0000000003, 2, 'Britney you are so invincible! You are an inspiration and helped motivate me to be strong like you.', 'The media could not be loaded. I personally have been in the same exact situations as some of these ...', 5, true, TO_DATE('01-11-2023', 'dd-mm-yyyy'), 1000000002, 3),
(0000000004, 3, 'Fast Read, Sad Story', 'I have been a fan of Britney''s music since the ''00s. She is just a couple years older than me. I did...', 5, true, TO_DATE('25-10-2023', 'dd-mm-yyyy'), 1000000002, 4),
(0000000005, 4, 'Buy it, it’s worth the read!', 'Whether or not you’re a fan, it’s a great read. Britney takes you in her world and shares her perspe...', 5, true, TO_DATE('01-11-2023', 'dd-mm-yyyy'), 1000000002, 5);

