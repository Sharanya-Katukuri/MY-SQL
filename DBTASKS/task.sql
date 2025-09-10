MySQL Shell 8.0.43

Copyright (c) 2016, 2025, Oracle and/or its affiliates.
Oracle is a registered trademark of Oracle Corporation and/or its affiliates.
Other names may be trademarks of their respective owners.

Type '\help' or '\?' for help; '\quit' to exit.
 MySQL  JS > \sql
Switching to SQL mode... Commands end with ;
 MySQL  SQL > \c root@localhost
Creating a session to 'root@localhost'
Fetching global names for auto-completion... Press ^C to stop.
Your MySQL connection id is 104 (X protocol)
Server version: 8.0.43 MySQL Community Server - GPL
No default schema selected; type \use <schema> to set one.
 MySQL  localhost:33060+ ssl  SQL > use charanya;
Default schema set to `charanya`.
Fetching global names, object names from `charanya` for auto-completion... Press ^C to stop.
 MySQL  localhost:33060+ ssl  charanya  SQL > show tables;
+--------------------+
| Tables_in_charanya |
+--------------------+
| 35r                |
| 53r                |
| company            |
| dept               |
| emp                |
| insert_before      |
+--------------------+
6 rows in set (0.0243 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > create table students (id int primary key auto_increment,name varchar(50) not null,email varchar(50) unique,age int check(age>=18),city varchar(50) default 'Hyderabad');
Query OK, 0 rows affected (0.2121 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > desc students;
+-------+-------------+------+-----+-----------+----------------+
| Field | Type        | Null | Key | Default   | Extra          |
+-------+-------------+------+-----+-----------+----------------+
| id    | int         | NO   | PRI | NULL      | auto_increment |
| name  | varchar(50) | NO   |     | NULL      |                |
| email | varchar(50) | YES  | UNI | NULL      |                |
| age   | int         | YES  |     | NULL      |                |
| city  | varchar(50) | YES  |     | Hyderabad |                |
+-------+-------------+------+-----+-----------+----------------+
5 rows in set (0.0334 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > inser into students(id,name,email,age) values (101,'sharanya','shary@gmail.com',23);
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'inser into students(id,name,email,age) values (101,'sharanya','shary@gmail.com',' at line 1
 MySQL  localhost:33060+ ssl  charanya  SQL > insert into students(id,name,email,age) values (101,'sharanya','shary@gmail.com',23);
Query OK, 1 row affected (0.0437 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from students;
+-----+----------+-----------------+-----+-----------+
| id  | name     | email           | age | city      |
+-----+----------+-----------------+-----+-----------+
| 101 | sharanya | shary@gmail.com |  23 | Hyderabad |
+-----+----------+-----------------+-----+-----------+
1 row in set (0.0013 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > insert into students(name,email,age) values ('charanya','cherry@gamil.com',22),('harish','hari@gmail.com',21),('siri','siri@gmail.com',20),('hasini','hasini@gmail.com',21);
Query OK, 4 rows affected (0.0295 sec)

Records: 4  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from students;
+-----+----------+------------------+-----+-----------+
| id  | name     | email            | age | city      |
+-----+----------+------------------+-----+-----------+
| 101 | sharanya | shary@gmail.com  |  23 | Hyderabad |
| 102 | charanya | cherry@gamil.com |  22 | Hyderabad |
| 103 | harish   | hari@gmail.com   |  21 | Hyderabad |
| 104 | siri     | siri@gmail.com   |  20 | Hyderabad |
| 105 | hasini   | hasini@gmail.com |  21 | Hyderabad |
+-----+----------+------------------+-----+-----------+
5 rows in set (0.0208 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > desc students;
+-------+-------------+------+-----+-----------+----------------+
| Field | Type        | Null | Key | Default   | Extra          |
+-------+-------------+------+-----+-----------+----------------+
| id    | int         | NO   | PRI | NULL      | auto_increment |
| name  | varchar(50) | NO   |     | NULL      |                |
| email | varchar(50) | YES  | UNI | NULL      |                |
| age   | int         | YES  |     | NULL      |                |
| city  | varchar(50) | YES  |     | Hyderabad |                |
+-------+-------------+------+-----+-----------+----------------+
5 rows in set (0.0039 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > alter table students add phone bigint unique;
Query OK, 0 rows affected (0.1890 sec)

Records: 0  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  charanya  SQL > desc students;
+-------+-------------+------+-----+-----------+----------------+
| Field | Type        | Null | Key | Default   | Extra          |
+-------+-------------+------+-----+-----------+----------------+
| id    | int         | NO   | PRI | NULL      | auto_increment |
| name  | varchar(50) | NO   |     | NULL      |                |
| email | varchar(50) | YES  | UNI | NULL      |                |
| age   | int         | YES  |     | NULL      |                |
| city  | varchar(50) | YES  |     | Hyderabad |                |
| phone | bigint      | YES  | UNI | NULL      |                |
+-------+-------------+------+-----+-----------+----------------+
6 rows in set (0.0049 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > alter table students modify column age smallint ;
Query OK, 5 rows affected (0.2077 sec)

Records: 5  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  charanya  SQL > desc students;
+-------+-------------+------+-----+-----------+----------------+
| Field | Type        | Null | Key | Default   | Extra          |
+-------+-------------+------+-----+-----------+----------------+
| id    | int         | NO   | PRI | NULL      | auto_increment |
| name  | varchar(50) | NO   |     | NULL      |                |
| email | varchar(50) | YES  | UNI | NULL      |                |
| age   | smallint    | YES  |     | NULL      |                |
| city  | varchar(50) | YES  |     | Hyderabad |                |
| phone | bigint      | YES  | UNI | NULL      |                |
+-------+-------------+------+-----+-----------+----------------+
6 rows in set (0.0040 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > alter table students drop column city;
Query OK, 0 rows affected (0.0586 sec)

Records: 0  Duplicates: 0  Warnings: 0
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from students;
+-----+----------+------------------+-----+-------+
| id  | name     | email            | age | phone |
+-----+----------+------------------+-----+-------+
| 101 | sharanya | shary@gmail.com  |  23 |  NULL |
| 102 | charanya | cherry@gamil.com |  22 |  NULL |
| 103 | harish   | hari@gmail.com   |  21 |  NULL |
| 104 | siri     | siri@gmail.com   |  20 |  NULL |
| 105 | hasini   | hasini@gmail.com |  21 |  NULL |
+-----+----------+------------------+-----+-------+
5 rows in set (0.0013 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > insert into students(name,email,age) values("hari","hari@gmail.com",20);
ERROR: 1062: Duplicate entry 'hari@gmail.com' for key 'students.email'
 MySQL  localhost:33060+ ssl  charanya  SQL > insert into students(name,email,age) values("aishu","aishu@gmail.com",17);
ERROR: 3819: Check constraint 'students_chk_1' is violated.
 MySQL  localhost:33060+ ssl  charanya  SQL >