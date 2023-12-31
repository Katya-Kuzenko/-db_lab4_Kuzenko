import psycopg2

username = 'postgres'
password = 'fosubi'
database = 'db_lab3'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT Reviewer.Reviewer_Name, Review.Review_Rating
FROM Review
JOIN Reviewer ON Review.Reviewer_ID = Reviewer.Reviewer_ID
WHERE Review.Book_ID = 1000000002; 
'''
query_2 = '''
SELECT
  (SELECT COUNT(*) FROM Book) AS TotalBooks,
  (SELECT COUNT(*) FROM Book_Genre WHERE Genre_ID = (SELECT Genre_ID FROM Genre WHERE Genre_Name = 'Memoir')) AS MemoirBooks;
'''
query_3 = '''
SELECT Book.Year, AVG(Book.Rating) AS AvgRating
FROM Book
GROUP BY Book.Year
ORDER BY Book.Year;
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
print(type(conn))

with conn:
    cur = conn.cursor()
    
    print('1.')
    cur.execute(query_1)
    for row in cur:
        print(row)
    
    print("\n2.")
    cur.execute(query_2)
    for row in cur:
        print(row)

    print("\n3.")
    cur.execute(query_3)
    for row in cur:
        print(row)
