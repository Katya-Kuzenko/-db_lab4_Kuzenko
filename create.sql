CREATE TABLE Book
(
  Book_ID INT NOT NULL,
  Rank INT NOT NULL,
  Title VARCHAR(350) NOT NULL,
  Price FLOAT NOT NULL,
  Rating FLOAT NOT NULL,
  Author VARCHAR(100) NOT NULL,
  Year INT NOT NULL,
  URL VARCHAR(1000) NOT NULL,
  PRIMARY KEY (Book_ID)
);

CREATE TABLE Genre
(
  Genre_ID INT NOT NULL,
  Genre_Name VARCHAR(30) NOT NULL,
  PRIMARY KEY (Genre_ID)
);

CREATE TABLE Reviewer
(
  Reviewer_ID INT NOT NULL,
  Reviewer_Name VARCHAR(100) NOT NULL,
  PRIMARY KEY (Reviewer_ID)
);

CREATE TABLE Book_Genre
(
  Book_ID INT NOT NULL,
  Genre_ID INT NOT NULL,
  PRIMARY KEY (Book_ID, Genre_ID),
  FOREIGN KEY (Book_ID) REFERENCES Book(Book_ID),
  FOREIGN KEY (Genre_ID) REFERENCES Genre(Genre_ID)
);

CREATE TABLE Review
(
  Review_ID INT NOT NULL,
  Sno INT NOT NULL,
  Review_Title VARCHAR(500) NOT NULL,
  Review_Description VARCHAR(10000) NOT NULL,
  Review_Rating INT NOT NULL,
  Is_Verified BOOLEAN NOT NULL,
  Date DATE NOT NULL,
  Book_ID INT NOT NULL,
  Reviewer_ID INT NOT NULL,
  PRIMARY KEY (Review_ID),
  FOREIGN KEY (Book_ID) REFERENCES Book(Book_ID),
  FOREIGN KEY (Reviewer_ID) REFERENCES Reviewer(Reviewer_ID)
);