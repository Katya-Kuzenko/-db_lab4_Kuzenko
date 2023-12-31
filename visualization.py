import psycopg2
import matplotlib.pyplot as plt

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
    reviewer_names = []
    review_ratings = []
    for row in cur:
        reviewer_names.append(row[0])
        review_ratings.append(row[1])
    
    plt.bar(reviewer_names, review_ratings, width=0.5)
    plt.title('Рейтинг рецензентів для конкретної книги')
    plt.xlabel('Рецензенти')
    plt.ylabel('Рейтинг')
    plt.show()

    print("\n2.")
    cur.execute(query_2)
    row = cur.fetchone()

    total_books = float(row[0])
    memoir_books = float(row[1])  

    labels = ['Memoir', 'Other']
    sizes = [memoir_books, total_books - memoir_books]

    plt.pie(sizes, labels=labels, autopct='%1.1f%%')
    plt.title('Частка книг у жанрі Memoir відносно загальної кількості книг')
    plt.show()
    

    print("\n3.")
    cur.execute(query_3)
    years = []
    avg_ratings = []

    for row in cur:
        years.append(row[0])
        avg_ratings.append(row[1])
    
    plt.plot(years, avg_ratings, marker='o')
    plt.xlabel('Рік випуску')
    plt.ylabel('Середній рейтинг')
    plt.title('Графік залежності середнього рейтингу від року випуску книг')
    plt.show()

