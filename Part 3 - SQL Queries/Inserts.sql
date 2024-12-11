-- adding new users to the db
INSERT INTO "Users" ("userName", "email") 
VALUES 
('Kenchyy', 'kenjoel@gmail.com'),
('John', 'aj05@gmail.com');

--adding 5 boooks into the Book Table
INSERT INTO "Books" ("ISBN", "title", "author", "genre", "yearPublished", "copiesAvailable")
VALUES
('9780062348678', 'Simon vs. The Homo Sapiens Agenda', 'Becky Albertalli', 'Coming of age', 2015, 10),
('9780143127796', 'Anne of Green Gables', 'Lucy Maunt Montgomery', 'Coming of Age', 1908, 6),
('9781402894670', 'The Little Prince', 'Antoine de Saint-Exupéry', 'Fable', 1943, 15),
('9780061120084', 'Matilda', 'Roald Dahl', 'Novel', 1988, 12),
('9781566199094', 'City of Bones', 'Cassandra Clare', 'Fantasy Fiction', 2007, 8);

