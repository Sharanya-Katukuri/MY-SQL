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
Your MySQL connection id is 100 (X protocol)
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
15 rows in set (0.0169 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal from emp where ename='martin';
+--------+---------+
| ename  | sal     |
+--------+---------+
| MARTIN | 1250.00 |
+--------+---------+
1 row in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > ^C
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT deptno, COUNT(*) FROM emp GROUP BY deptno;
+--------+----------+
| deptno | COUNT(*) |
+--------+----------+
|   NULL |        3 |
|     10 |        3 |
|     20 |        4 |
|     30 |        5 |
+--------+----------+
4 rows in set (0.0153 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT deptno, COUNT(*) FROM emp GROUP BY deptno;
+--------+----------+
| deptno | COUNT(*) |
+--------+----------+
|   NULL |        3 |
|     10 |        3 |
|     20 |        4 |
|     30 |        5 |
+--------+----------+
4 rows in set (0.0013 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT job, SUM(comm) FROM emp GROUP BY job;
+-----------+-----------+
| job       | SUM(comm) |
+-----------+-----------+
| NULL      |      NULL |
| saleman   |      NULL |
| SALESMAN  |   1900.00 |
| MANAGER   |      NULL |
| ANALYST   |      NULL |
| PRESIDENT |      NULL |
| CLERK     |      NULL |
+-----------+-----------+
7 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT deptno, MAX(sal) FROM emp GROUP BY deptno;
+--------+----------+
| deptno | MAX(sal) |
+--------+----------+
|   NULL |  2000.00 |
|     10 | 30000.00 |
|     20 |  3475.00 |
|     30 | 12345.00 |
+--------+----------+
4 rows in set (0.0020 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT job, MIN(sal) FROM emp GROUP BY job;
+-----------+----------+
| job       | MIN(sal) |
+-----------+----------+
| NULL      |     NULL |
| saleman   |     NULL |
| SALESMAN  |  1250.00 |
| MANAGER   |  2500.00 |
| ANALYST   |  3000.00 |
| PRESIDENT | 30000.00 |
| CLERK     |   950.00 |
+-----------+----------+
7 rows in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT deptno, AVG(comm) FROM emp GROUP BY deptno;
+--------+------------+
| deptno | AVG(comm)  |
+--------+------------+
|   NULL |       NULL |
|     10 |       NULL |
|     20 |       NULL |
|     30 | 633.333333 |
+--------+------------+
4 rows in set (0.0011 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT deptno, AVG(sal) FROM emp GROUP BY deptno HAVING AVG(sal) > 2000;
+--------+--------------+
| deptno | AVG(sal)     |
+--------+--------------+
|     10 | 11266.666667 |
|     20 |  2643.750000 |
|     30 |  3779.000000 |
+--------+--------------+
3 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT job, COUNT(*) FROM emp GROUP BY job HAVING COUNT(*) > 2;
+----------+----------+
| job      | COUNT(*) |
+----------+----------+
| SALESMAN |        3 |
| MANAGER  |        3 |
| CLERK    |        4 |
+----------+----------+
3 rows in set (0.0021 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT deptno, SUM(sal) FROM emp GROUP BY deptno HAVING SUM(sal) > 9000;
+--------+----------+
| deptno | SUM(sal) |
+--------+----------+
|     10 | 33800.00 |
|     20 | 10575.00 |
|     30 | 18895.00 |
+--------+----------+
3 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT job, SUM(sal) FROM emp GROUP BY job HAVING SUM(sal) > 5000;
+-----------+----------+
| job       | SUM(sal) |
+-----------+----------+
| SALESMAN  | 15095.00 |
| MANAGER   |  8825.00 |
| ANALYST   |  6000.00 |
| PRESIDENT | 30000.00 |
| CLERK     |  5350.00 |
+-----------+----------+
5 rows in set (0.0013 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp ORDER BY sal;
+-------+----------+-----------+------+------------+----------+---------+--------+
| empno | ename    | job       | mgr  | hiredate   | sal      | comm    | deptno |
+-------+----------+-----------+------+------------+----------+---------+--------+
|   124 | sharanya | NULL      | NULL | NULL       |     NULL |    NULL |   NULL |
|  1234 | ganesh   | saleman   | 1234 | NULL       |     NULL |    NULL |   NULL |
|  7900 | JAMES    | CLERK     | 7698 | 1981-12-03 |   950.00 |    NULL |     30 |
|  7876 | ADAMS    | CLERK     | 7788 | 1983-01-12 |  1100.00 |    NULL |     20 |
|  7654 | MARTIN   | SALESMAN  | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |
|  7934 | MILLER   | CLERK     | 7782 | 1982-01-23 |  1300.00 |    NULL |     10 |
|  7844 | TURNER   | SALESMAN  | 7698 | 1981-09-08 |  1500.00 |    0.00 |     30 |
|  7936 | abcd     | clerk     | 7782 | 1982-01-22 |  2000.00 |    NULL |   NULL |
|  7782 | raju     | MANAGER   | 7839 | 1981-06-09 |  2500.00 |    NULL |     10 |
|  7698 | BLAKE    | MANAGER   | 7839 | 1981-05-01 |  2850.00 |    NULL |     30 |
|  7788 | SCOTT    | ANALYST   | 7566 | 1982-12-09 |  3000.00 |    NULL |     20 |
|  7902 | FORD     | ANALYST   | 7566 | 1981-12-03 |  3000.00 |    NULL |     20 |
|  7566 | JONES    | MANAGER   | 7839 | 1981-04-02 |  3475.00 |    NULL |     20 |
|  7521 | WARD     | SALESMAN  | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |
|  7839 | KING     | PRESIDENT | NULL | 1981-11-17 | 30000.00 |    NULL |     10 |
+-------+----------+-----------+------+------------+----------+---------+--------+
15 rows in set (0.0013 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp ORDER BY hiredate DESC;
+-------+----------+-----------+------+------------+----------+---------+--------+
| empno | ename    | job       | mgr  | hiredate   | sal      | comm    | deptno |
+-------+----------+-----------+------+------------+----------+---------+--------+
|  7876 | ADAMS    | CLERK     | 7788 | 1983-01-12 |  1100.00 |    NULL |     20 |
|  7788 | SCOTT    | ANALYST   | 7566 | 1982-12-09 |  3000.00 |    NULL |     20 |
|  7934 | MILLER   | CLERK     | 7782 | 1982-01-23 |  1300.00 |    NULL |     10 |
|  7936 | abcd     | clerk     | 7782 | 1982-01-22 |  2000.00 |    NULL |   NULL |
|  7900 | JAMES    | CLERK     | 7698 | 1981-12-03 |   950.00 |    NULL |     30 |
|  7902 | FORD     | ANALYST   | 7566 | 1981-12-03 |  3000.00 |    NULL |     20 |
|  7839 | KING     | PRESIDENT | NULL | 1981-11-17 | 30000.00 |    NULL |     10 |
|  7654 | MARTIN   | SALESMAN  | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |
|  7844 | TURNER   | SALESMAN  | 7698 | 1981-09-08 |  1500.00 |    0.00 |     30 |
|  7782 | raju     | MANAGER   | 7839 | 1981-06-09 |  2500.00 |    NULL |     10 |
|  7698 | BLAKE    | MANAGER   | 7839 | 1981-05-01 |  2850.00 |    NULL |     30 |
|  7566 | JONES    | MANAGER   | 7839 | 1981-04-02 |  3475.00 |    NULL |     20 |
|  7521 | WARD     | SALESMAN  | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |
|   124 | sharanya | NULL      | NULL | NULL       |     NULL |    NULL |   NULL |
|  1234 | ganesh   | saleman   | 1234 | NULL       |     NULL |    NULL |   NULL |
+-------+----------+-----------+------+------------+----------+---------+--------+
15 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE deptno = 30 ORDER BY ename;
+-------+--------+----------+------+------------+----------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal      | comm    | deptno |
+-------+--------+----------+------+------------+----------+---------+--------+
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 |  2850.00 |    NULL |     30 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |   950.00 |    NULL |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 |  1500.00 |    0.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |
+-------+--------+----------+------+------------+----------+---------+--------+
5 rows in set (0.0021 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp ORDER BY job ASC, sal DESC;
+-------+----------+-----------+------+------------+----------+---------+--------+
| empno | ename    | job       | mgr  | hiredate   | sal      | comm    | deptno |
+-------+----------+-----------+------+------------+----------+---------+--------+
|   124 | sharanya | NULL      | NULL | NULL       |     NULL |    NULL |   NULL |
|  7788 | SCOTT    | ANALYST   | 7566 | 1982-12-09 |  3000.00 |    NULL |     20 |
|  7902 | FORD     | ANALYST   | 7566 | 1981-12-03 |  3000.00 |    NULL |     20 |
|  7936 | abcd     | clerk     | 7782 | 1982-01-22 |  2000.00 |    NULL |   NULL |
|  7934 | MILLER   | CLERK     | 7782 | 1982-01-23 |  1300.00 |    NULL |     10 |
|  7876 | ADAMS    | CLERK     | 7788 | 1983-01-12 |  1100.00 |    NULL |     20 |
|  7900 | JAMES    | CLERK     | 7698 | 1981-12-03 |   950.00 |    NULL |     30 |
|  7566 | JONES    | MANAGER   | 7839 | 1981-04-02 |  3475.00 |    NULL |     20 |
|  7698 | BLAKE    | MANAGER   | 7839 | 1981-05-01 |  2850.00 |    NULL |     30 |
|  7782 | raju     | MANAGER   | 7839 | 1981-06-09 |  2500.00 |    NULL |     10 |
|  7839 | KING     | PRESIDENT | NULL | 1981-11-17 | 30000.00 |    NULL |     10 |
|  1234 | ganesh   | saleman   | 1234 | NULL       |     NULL |    NULL |   NULL |
|  7521 | WARD     | SALESMAN  | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |
|  7844 | TURNER   | SALESMAN  | 7698 | 1981-09-08 |  1500.00 |    0.00 |     30 |
|  7654 | MARTIN   | SALESMAN  | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |
+-------+----------+-----------+------+------------+----------+---------+--------+
15 rows in set (0.0208 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp ORDER BY deptno, ename;
+-------+----------+-----------+------+------------+----------+---------+--------+
| empno | ename    | job       | mgr  | hiredate   | sal      | comm    | deptno |
+-------+----------+-----------+------+------------+----------+---------+--------+
|  7936 | abcd     | clerk     | 7782 | 1982-01-22 |  2000.00 |    NULL |   NULL |
|  1234 | ganesh   | saleman   | 1234 | NULL       |     NULL |    NULL |   NULL |
|   124 | sharanya | NULL      | NULL | NULL       |     NULL |    NULL |   NULL |
|  7839 | KING     | PRESIDENT | NULL | 1981-11-17 | 30000.00 |    NULL |     10 |
|  7934 | MILLER   | CLERK     | 7782 | 1982-01-23 |  1300.00 |    NULL |     10 |
|  7782 | raju     | MANAGER   | 7839 | 1981-06-09 |  2500.00 |    NULL |     10 |
|  7876 | ADAMS    | CLERK     | 7788 | 1983-01-12 |  1100.00 |    NULL |     20 |
|  7902 | FORD     | ANALYST   | 7566 | 1981-12-03 |  3000.00 |    NULL |     20 |
|  7566 | JONES    | MANAGER   | 7839 | 1981-04-02 |  3475.00 |    NULL |     20 |
|  7788 | SCOTT    | ANALYST   | 7566 | 1982-12-09 |  3000.00 |    NULL |     20 |
|  7698 | BLAKE    | MANAGER   | 7839 | 1981-05-01 |  2850.00 |    NULL |     30 |
|  7900 | JAMES    | CLERK     | 7698 | 1981-12-03 |   950.00 |    NULL |     30 |
|  7654 | MARTIN   | SALESMAN  | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |
|  7844 | TURNER   | SALESMAN  | 7698 | 1981-09-08 |  1500.00 |    0.00 |     30 |
|  7521 | WARD     | SALESMAN  | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |
+-------+----------+-----------+------+------------+----------+---------+--------+
15 rows in set (0.0192 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp LIMIT 5;
+-------+----------+----------+------+------------+----------+---------+--------+
| empno | ename    | job      | mgr  | hiredate   | sal      | comm    | deptno |
+-------+----------+----------+------+------------+----------+---------+--------+
|   124 | sharanya | NULL     | NULL | NULL       |     NULL |    NULL |   NULL |
|  1234 | ganesh   | saleman  | 1234 | NULL       |     NULL |    NULL |   NULL |
|  7521 | WARD     | SALESMAN | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |
|  7566 | JONES    | MANAGER  | 7839 | 1981-04-02 |  3475.00 |    NULL |     20 |
|  7654 | MARTIN   | SALESMAN | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |
+-------+----------+----------+------+------------+----------+---------+--------+
5 rows in set (0.0036 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp LIMIT 5 OFFSET 3;
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 3475.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | raju   | MANAGER  | 7839 | 1981-06-09 | 2500.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
+-------+--------+----------+------+------------+---------+---------+--------+
5 rows in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp ORDER BY sal DESC LIMIT 3;
+-------+-------+-----------+------+------------+----------+--------+--------+
| empno | ename | job       | mgr  | hiredate   | sal      | comm   | deptno |
+-------+-------+-----------+------+------------+----------+--------+--------+
|  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 30000.00 |   NULL |     10 |
|  7521 | WARD  | SALESMAN  | 7698 | 1981-02-22 | 12345.00 | 500.00 |     30 |
|  7566 | JONES | MANAGER   | 7839 | 1981-04-02 |  3475.00 |   NULL |     20 |
+-------+-------+-----------+------+------------+----------+--------+--------+
3 rows in set (0.0196 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp ORDER BY sal DESC LIMIT 3 OFFSET 3;
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7902 | FORD  | ANALYST | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
|  7698 | BLAKE | MANAGER | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
+-------+-------+---------+------+------------+---------+------+--------+
3 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp ORDER BY hiredate DESC LIMIT 5;
+-------+--------+---------+------+------------+---------+------+--------+
| empno | ename  | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+--------+---------+------+------------+---------+------+--------+
|  7876 | ADAMS  | CLERK   | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
|  7788 | SCOTT  | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7934 | MILLER | CLERK   | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
|  7936 | abcd   | clerk   | 7782 | 1982-01-22 | 2000.00 | NULL |   NULL |
|  7900 | JAMES  | CLERK   | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
+-------+--------+---------+------+------------+---------+------+--------+
5 rows in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL >









