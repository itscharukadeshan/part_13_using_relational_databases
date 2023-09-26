flyctl postgres connect -a rough-breeze-138-db

CREATE TABLE blog_data (
  id SERIAL PRIMARY KEY,
  author VARCHAR(255),                                                  
  url VARCHAR(255) NOT NULL UNIQUE,
  title VARCHAR(255) NOT NULL,
  likes INT DEFAULT 0
);


INSERT INTO blog_data (author, url, title)
 VALUES
   ('John Doe', 'https://example.com/blog/1', 'My First Blog Post'),
   ('Jane Doe', 'https://example.com/blog/2', 'My Second Blog Post'),
   ('Peter Parker', 'https://example.com/blog/3', 'Spider-Man Saves the Day!');
