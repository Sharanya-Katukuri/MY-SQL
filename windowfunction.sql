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
Your MySQL connection id is 98 (X protocol)
Server version: 8.0.43 MySQL Community Server - GPL
No default schema selected; type \use <schema> to set one.
 MySQL  localhost:33060+ ssl  SQL > use charanya;
Default schema set to `charanya`.
Fetching global names, object names from `charanya` for auto-completion... Press ^C to stop.
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from emp;
+-------+----------+-----------+------+------------+----------+---------+--------+
| empno | ename    | job       | mgr  | hiredate   | sal      | comm    | deptno |
+-------+----------+-----------+------+------------+----------+---------+--------+
|   124 | sharanya | NULL      | NULL | NULL       |     NULL |    NULL |   NULL |
|  1234 | ganesh   | saleman   | 1234 | NULL       |     NULL |    NULL |   NULL |
|  7521 | WARD     | SALESMAN  | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |
|  7566 | JONES    | MANAGER   | 7839 | 1981-04-02 |  3475.00 |    NULL |     20 |
|  7654 | MARTIN   | SALESMAN  | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |
|  7698 | BLAKE    | MANAGER   | 7839 | 1981-05-01 |  2850.00 |    NULL |     30 |
|  7782 | raju     | MANAGER   | 7839 | 1981-06-09 |  2500.00 |    NULL |     10 |
|  7788 | SCOTT    | ANALYST   | 7566 | 1982-12-09 |  3000.00 |    NULL |     20 |
|  7839 | KING     | PRESIDENT | NULL | 1981-11-17 | 30000.00 |    NULL |     10 |
|  7844 | TURNER   | SALESMAN  | 7698 | 1981-09-08 |  1500.00 |    0.00 |     30 |
|  7876 | ADAMS    | CLERK     | 7788 | 1983-01-12 |  1100.00 |    NULL |     20 |
|  7900 | JAMES    | CLERK     | 7698 | 1981-12-03 |   950.00 |    NULL |     30 |
|  7902 | FORD     | ANALYST   | 7566 | 1981-12-03 |  3000.00 |    NULL |     20 |
|  7934 | MILLER   | CLERK     | 7782 | 1982-01-23 |  1300.00 |    NULL |     10 |
|  7936 | abcd     | clerk     | 7782 | 1982-01-22 |  2000.00 |    NULL |   NULL |
+-------+----------+-----------+------+------------+----------+---------+--------+
15 rows in set (0.0028 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from dept;
+--------+------------+----------+
| deptno | dname      | loc      |
+--------+------------+----------+
|     10 | ACCOUNTING | NEW YORK |
|     20 | RESEARCH   | DALLAS   |
|     30 | DEVELOPER  | CHICAGO  |
|     40 | OPERATIONS | BOSTON   |
+--------+------------+----------+
4 rows in set (0.0019 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal,rank() over(order by sal desc) as rnk from emp;
+----------+----------+-----+
| ename    | sal      | rnk |
+----------+----------+-----+
| KING     | 30000.00 |   1 |
| WARD     | 12345.00 |   2 |
| JONES    |  3475.00 |   3 |
| SCOTT    |  3000.00 |   4 |
| FORD     |  3000.00 |   4 |
| BLAKE    |  2850.00 |   6 |
| raju     |  2500.00 |   7 |
| abcd     |  2000.00 |   8 |
| TURNER   |  1500.00 |   9 |
| MILLER   |  1300.00 |  10 |
| MARTIN   |  1250.00 |  11 |
| ADAMS    |  1100.00 |  12 |
| JAMES    |   950.00 |  13 |
| sharanya |     NULL |  14 |
| ganesh   |     NULL |  14 |
+----------+----------+-----+
15 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal,dense_rank() over(order by sal desc) as rnk from emp;
+----------+----------+-----+
| ename    | sal      | rnk |
+----------+----------+-----+
| KING     | 30000.00 |   1 |
| WARD     | 12345.00 |   2 |
| JONES    |  3475.00 |   3 |
| SCOTT    |  3000.00 |   4 |
| FORD     |  3000.00 |   4 |
| BLAKE    |  2850.00 |   5 |
| raju     |  2500.00 |   6 |
| abcd     |  2000.00 |   7 |
| TURNER   |  1500.00 |   8 |
| MILLER   |  1300.00 |   9 |
| MARTIN   |  1250.00 |  10 |
| ADAMS    |  1100.00 |  11 |
| JAMES    |   950.00 |  12 |
| sharanya |     NULL |  13 |
| ganesh   |     NULL |  13 |
+----------+----------+-----+
15 rows in set (0.0016 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal,row_number() over(order by sal desc) as rnk from emp;
+----------+----------+-----+
| ename    | sal      | rnk |
+----------+----------+-----+
| KING     | 30000.00 |   1 |
| WARD     | 12345.00 |   2 |
| JONES    |  3475.00 |   3 |
| SCOTT    |  3000.00 |   4 |
| FORD     |  3000.00 |   5 |
| BLAKE    |  2850.00 |   6 |
| raju     |  2500.00 |   7 |
| abcd     |  2000.00 |   8 |
| TURNER   |  1500.00 |   9 |
| MILLER   |  1300.00 |  10 |
| MARTIN   |  1250.00 |  11 |
| ADAMS    |  1100.00 |  12 |
| JAMES    |   950.00 |  13 |
| sharanya |     NULL |  14 |
| ganesh   |     NULL |  15 |
+----------+----------+-----+
15 rows in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,lead(ename) over as rnk from emp;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'as rnk from emp' at line 1
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,lead(ename) over() as rnk from emp;
+----------+--------+
| ename    | rnk    |
+----------+--------+
| sharanya | ganesh |
| ganesh   | WARD   |
| WARD     | JONES  |
| JONES    | MARTIN |
| MARTIN   | BLAKE  |
| BLAKE    | raju   |
| raju     | SCOTT  |
| SCOTT    | KING   |
| KING     | TURNER |
| TURNER   | ADAMS  |
| ADAMS    | JAMES  |
| JAMES    | FORD   |
| FORD     | MILLER |
| MILLER   | abcd   |
| abcd     | NULL   |
+----------+--------+
15 rows in set (0.0019 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,lead(ename) over() as rnk from emp;
+----------+--------+
| ename    | rnk    |
+----------+--------+
| sharanya | ganesh |
| ganesh   | WARD   |
| WARD     | JONES  |
| JONES    | MARTIN |
| MARTIN   | BLAKE  |
| BLAKE    | raju   |
| raju     | SCOTT  |
| SCOTT    | KING   |
| KING     | TURNER |
| TURNER   | ADAMS  |
| ADAMS    | JAMES  |
| JAMES    | FORD   |
| FORD     | MILLER |
| MILLER   | abcd   |
| abcd     | NULL   |
+----------+--------+
15 rows in set (0.0019 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,lag(ename) over() as rnk from emp;
+----------+----------+
| ename    | rnk      |
+----------+----------+
| sharanya | NULL     |
| ganesh   | sharanya |
| WARD     | ganesh   |
| JONES    | WARD     |
| MARTIN   | JONES    |
| BLAKE    | MARTIN   |
| raju     | BLAKE    |
| SCOTT    | raju     |
| KING     | SCOTT    |
| TURNER   | KING     |
| ADAMS    | TURNER   |
| JAMES    | ADAMS    |
| FORD     | JAMES    |
| MILLER   | FORD     |
| abcd     | MILLER   |
+----------+----------+
15 rows in set (0.0020 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,ntile(6) over() as parts feom emp;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'feom emp' at line 1
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,ntile(6) over() as parts from emp;
+----------+-------+
| ename    | parts |
+----------+-------+
| sharanya |     1 |
| ganesh   |     1 |
| WARD     |     1 |
| JONES    |     2 |
| MARTIN   |     2 |
| BLAKE    |     2 |
| raju     |     3 |
| SCOTT    |     3 |
| KING     |     3 |
| TURNER   |     4 |
| ADAMS    |     4 |
| JAMES    |     5 |
| FORD     |     5 |
| MILLER   |     6 |
| abcd     |     6 |
+----------+-------+
15 rows in set (0.0016 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,ntile(2) over() as parts from emp;
+----------+-------+
| ename    | parts |
+----------+-------+
| sharanya |     1 |
| ganesh   |     1 |
| WARD     |     1 |
| JONES    |     1 |
| MARTIN   |     1 |
| BLAKE    |     1 |
| raju     |     1 |
| SCOTT    |     1 |
| KING     |     2 |
| TURNER   |     2 |
| ADAMS    |     2 |
| JAMES    |     2 |
| FORD     |     2 |
| MILLER   |     2 |
| abcd     |     2 |
+----------+-------+
15 rows in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,ntile(5) over() as parts from emp;
+----------+-------+
| ename    | parts |
+----------+-------+
| sharanya |     1 |
| ganesh   |     1 |
| WARD     |     1 |
| JONES    |     2 |
| MARTIN   |     2 |
| BLAKE    |     2 |
| raju     |     3 |
| SCOTT    |     3 |
| KING     |     3 |
| TURNER   |     4 |
| ADAMS    |     4 |
| JAMES    |     4 |
| FORD     |     5 |
| MILLER   |     5 |
| abcd     |     5 |
+----------+-------+
15 rows in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,ntile(5) over() as parts from emp;
+----------+-------+
| ename    | parts |
+----------+-------+
| sharanya |     1 |
| ganesh   |     1 |
| WARD     |     1 |
| JONES    |     2 |
| MARTIN   |     2 |
| BLAKE    |     2 |
| raju     |     3 |
| SCOTT    |     3 |
| KING     |     3 |
| TURNER   |     4 |
| ADAMS    |     4 |
| JAMES    |     4 |
| FORD     |     5 |
| MILLER   |     5 |
| abcd     |     5 |
+----------+-------+
15 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,ntile(8) over() as parts from emp;
+----------+-------+
| ename    | parts |
+----------+-------+
| sharanya |     1 |
| ganesh   |     1 |
| WARD     |     2 |
| JONES    |     2 |
| MARTIN   |     3 |
| BLAKE    |     3 |
| raju     |     4 |
| SCOTT    |     4 |
| KING     |     5 |
| TURNER   |     5 |
| ADAMS    |     6 |
| JAMES    |     6 |
| FORD     |     7 |
| MILLER   |     7 |
| abcd     |     8 |
+----------+-------+
15 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from (select ename,rank() over(order by sal desc) as rnk from emp) as t where rank=10;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '=10' at line 1
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from (select ename,rank() over(order by sal desc) as rnk from emp) as t where rnk=10;
+--------+-----+
| ename  | rnk |
+--------+-----+
| MILLER |  10 |
+--------+-----+
1 row in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from (select ename,rank() over(order by sal desc) as rnk from emp) as t where rnk=13;
+-------+-----+
| ename | rnk |
+-------+-----+
| JAMES |  13 |
+-------+-----+
1 row in set (0.0019 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from (select ename,dense_rank() over(order by sal desc) as rnk from emp) as t where rnk=13;
+----------+-----+
| ename    | rnk |
+----------+-----+
| sharanya |  13 |
| ganesh   |  13 |
+----------+-----+
2 rows in set (0.0016 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from (select ename,dense_rank() over(order by sal desc) as rnk from emp) as t where rnk=12;
+-------+-----+
| ename | rnk |
+-------+-----+
| JAMES |  12 |
+-------+-----+
1 row in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from (select ename,lead(ename) over () as rnk  from emp ) where ename='james';
ERROR: 1248: Every derived table must have its own alias
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from (select ename,lead(ename) over () as rnk  from emp ) as t where ename='james';
+-------+------+
| ename | rnk  |
+-------+------+
| JAMES | FORD |
+-------+------+
1 row in set (0.0022 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from (select ename,lag(ename) over () as rnk  from emp ) as t where ename='james';
+-------+-------+
| ename | rnk   |
+-------+-------+
| JAMES | ADAMS |
+-------+-------+
1 row in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from (select ename,lag(ename) over () as rnk  from emp ) as t where ename='sharanya';
+----------+------+
| ename    | rnk  |
+----------+------+
| sharanya | NULL |
+----------+------+
1 row in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from (select ename,lag(ename) over () as rnk  from emp ) as t where ename='ganesh';
+--------+----------+
| ename  | rnk      |
+--------+----------+
| ganesh | sharanya |
+--------+----------+
1 row in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from (select ename,lead(ename) over () as rnk  from emp ) as t where ename='sharanya';
+----------+--------+
| ename    | rnk    |
+----------+--------+
| sharanya | ganesh |
+----------+--------+
1 row in set (0.0021 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,lead() over () as rnk from emp;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') over () as rnk from emp' at line 1
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,lead(ename) over () as rnk from emp;
+----------+--------+
| ename    | rnk    |
+----------+--------+
| sharanya | ganesh |
| ganesh   | WARD   |
| WARD     | JONES  |
| JONES    | MARTIN |
| MARTIN   | BLAKE  |
| BLAKE    | raju   |
| raju     | SCOTT  |
| SCOTT    | KING   |
| KING     | TURNER |
| TURNER   | ADAMS  |
| ADAMS    | JAMES  |
| JAMES    | FORD   |
| FORD     | MILLER |
| MILLER   | abcd   |
| abcd     | NULL   |
+----------+--------+
15 rows in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,lag(ename) over () as rnk from emp;
+----------+----------+
| ename    | rnk      |
+----------+----------+
| sharanya | NULL     |
| ganesh   | sharanya |
| WARD     | ganesh   |
| JONES    | WARD     |
| MARTIN   | JONES    |
| BLAKE    | MARTIN   |
| raju     | BLAKE    |
| SCOTT    | raju     |
| KING     | SCOTT    |
| TURNER   | KING     |
| ADAMS    | TURNER   |
| JAMES    | ADAMS    |
| FORD     | JAMES    |
| MILLER   | FORD     |
| abcd     | MILLER   |
+----------+----------+
15 rows in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,lag(ename) over (order by sal) as rnk from emp;
+----------+----------+
| ename    | rnk      |
+----------+----------+
| sharanya | NULL     |
| ganesh   | sharanya |
| JAMES    | ganesh   |
| ADAMS    | JAMES    |
| MARTIN   | ADAMS    |
| MILLER   | MARTIN   |
| TURNER   | MILLER   |
| abcd     | TURNER   |
| raju     | abcd     |
| BLAKE    | raju     |
| SCOTT    | BLAKE    |
| FORD     | SCOTT    |
| JONES    | FORD     |
| WARD     | JONES    |
| KING     | WARD     |
+----------+----------+
15 rows in set (0.0022 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,lag(ename),sal over (order by sal desc) as rnk from emp;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',sal over (order by sal desc) as rnk from emp' at line 1
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal,lag(ename) over (order by sal desc) as rnk from emp;
+----------+----------+----------+
| ename    | sal      | rnk      |
+----------+----------+----------+
| KING     | 30000.00 | NULL     |
| WARD     | 12345.00 | KING     |
| JONES    |  3475.00 | WARD     |
| SCOTT    |  3000.00 | JONES    |
| FORD     |  3000.00 | SCOTT    |
| BLAKE    |  2850.00 | FORD     |
| raju     |  2500.00 | BLAKE    |
| abcd     |  2000.00 | raju     |
| TURNER   |  1500.00 | abcd     |
| MILLER   |  1300.00 | TURNER   |
| MARTIN   |  1250.00 | MILLER   |
| ADAMS    |  1100.00 | MARTIN   |
| JAMES    |   950.00 | ADAMS    |
| sharanya |     NULL | JAMES    |
| ganesh   |     NULL | sharanya |
+----------+----------+----------+
15 rows in set (0.0021 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,lead(ename) over () as rnk from emp;
+----------+--------+
| ename    | rnk    |
+----------+--------+
| sharanya | ganesh |
| ganesh   | WARD   |
| WARD     | JONES  |
| JONES    | MARTIN |
| MARTIN   | BLAKE  |
| BLAKE    | raju   |
| raju     | SCOTT  |
| SCOTT    | KING   |
| KING     | TURNER |
| TURNER   | ADAMS  |
| ADAMS    | JAMES  |
| JAMES    | FORD   |
| FORD     | MILLER |
| MILLER   | abcd   |
| abcd     | NULL   |
+----------+--------+
15 rows in set (0.0024 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,lead(ename) over () as rnk from emp where ename='ganesh';
+--------+------+
| ename  | rnk  |
+--------+------+
| ganesh | NULL |
+--------+------+
1 row in set (0.0016 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL >