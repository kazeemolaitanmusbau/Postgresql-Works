CREATE TABLE student(
id int,
fullname varchar(12));

CREATE TABLE result(
std_id int,
grade int );

INSERT INTO student
VALUES(1, "A"),(2, "B"),(3, "C"),(4, "D"),(5, "E"),(6, "F"),(7, "G"),(8, "H"),(9, "I"),(10, "J"),(11, "K");


INSERT INTO result
VALUES(11, 50),(8, 29),(4, 90),(5, 49),(1, 60),(6, 72),(2, 44);