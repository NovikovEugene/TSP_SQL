CREATE TABLE nodes (point1 VARCHAR NOT NULL, point2 VARCHAR NOT NULL, cost INTEGER NOT NULL);
INSERT INTO nodes VALUES ('a','b',6),
                         ('a','c',9),
                         ('a','d',12),
                         ('b','a',6),
                         ('b','c',21),
                         ('b','d',15),
                         ('c','a',9),
                         ('c','b',21),
                         ('c','d',18),
                         ('d','a',12),
                         ('d','b',15),
                         ('d','c',18);