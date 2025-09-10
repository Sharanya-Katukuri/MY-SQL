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
Your MySQL connection id is 96 (X protocol)
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
15 rows in set (0.0323 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from emp where sal>2000;
+-------+-------+-----------+------+------------+----------+--------+--------+
| empno | ename | job       | mgr  | hiredate   | sal      | comm   | deptno |
+-------+-------+-----------+------+------------+----------+--------+--------+
|  7521 | WARD  | SALESMAN  | 7698 | 1981-02-22 | 12345.00 | 500.00 |     30 |
|  7566 | JONES | MANAGER   | 7839 | 1981-04-02 |  3475.00 |   NULL |     20 |
|  7698 | BLAKE | MANAGER   | 7839 | 1981-05-01 |  2850.00 |   NULL |     30 |
|  7782 | raju  | MANAGER   | 7839 | 1981-06-09 |  2500.00 |   NULL |     10 |
|  7788 | SCOTT | ANALYST   | 7566 | 1982-12-09 |  3000.00 |   NULL |     20 |
|  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 30000.00 |   NULL |     10 |
|  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 |  3000.00 |   NULL |     20 |
+-------+-------+-----------+------+------------+----------+--------+--------+
7 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from emp where job='clerk';
+-------+--------+-------+------+------------+---------+------+--------+
| empno | ename  | job   | mgr  | hiredate   | sal     | comm | deptno |
+-------+--------+-------+------+------------+---------+------+--------+
|  7876 | ADAMS  | CLERK | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
|  7900 | JAMES  | CLERK | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
|  7934 | MILLER | CLERK | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
|  7936 | abcd   | clerk | 7782 | 1982-01-22 | 2000.00 | NULL |   NULL |
+-------+--------+-------+------+------------+---------+------+--------+
4 rows in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from emp where comm!=0;
+-------+--------+----------+------+------------+----------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal      | comm    | deptno |
+-------+--------+----------+------+------------+----------+---------+--------+
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |
+-------+--------+----------+------+------------+----------+---------+--------+
2 rows in set (0.0016 sec)

 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE hiredate > '1981-01-01';
+-------+--------+-----------+------+------------+----------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal      | comm    | deptno |
+-------+--------+-----------+------+------------+----------+---------+--------+
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 |  3475.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 |  2850.00 |    NULL |     30 |
|  7782 | raju   | MANAGER   | 7839 | 1981-06-09 |  2500.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 |  3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 30000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 |  1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 |  1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |   950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 |  3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 |  1300.00 |    NULL |     10 |
|  7936 | abcd   | clerk     | 7782 | 1982-01-22 |  2000.00 |    NULL |   NULL |
+-------+--------+-----------+------+------------+----------+---------+--------+
13 rows in set (0.0052 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE deptno=30 AND sal>1500;
+-------+-------+----------+------+------------+----------+--------+--------+
| empno | ename | job      | mgr  | hiredate   | sal      | comm   | deptno |
+-------+-------+----------+------+------------+----------+--------+--------+
|  7521 | WARD  | SALESMAN | 7698 | 1981-02-22 | 12345.00 | 500.00 |     30 |
|  7698 | BLAKE | MANAGER  | 7839 | 1981-05-01 |  2850.00 |   NULL |     30 |
+-------+-------+----------+------+------------+----------+--------+--------+
2 rows in set (0.0019 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE job='MANAGER' OR job='ANALYST';
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 3475.00 | NULL |     20 |
|  7698 | BLAKE | MANAGER | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
|  7782 | raju  | MANAGER | 7839 | 1981-06-09 | 2500.00 | NULL |     10 |
|  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7902 | FORD  | ANALYST | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+
5 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE deptno <> 10;
+-------+--------+----------+------+------------+----------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal      | comm    | deptno |
+-------+--------+----------+------+------------+----------+---------+--------+
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 |  3475.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 |  2850.00 |    NULL |     30 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 |  3000.00 |    NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 |  1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 |  1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |   950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 |  3000.00 |    NULL |     20 |
+-------+--------+----------+------+------------+----------+---------+--------+
9 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE sal BETWEEN 1000 AND 3000;
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | raju   | MANAGER  | 7839 | 1981-06-09 | 2500.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
|  7936 | abcd   | clerk    | 7782 | 1982-01-22 | 2000.00 |    NULL |   NULL |
+-------+--------+----------+------+------------+---------+---------+--------+
9 rows in set (0.0190 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE hiredate BETWEEN '1981-01-01' AND '1981-12-31';
+-------+--------+-----------+------+------------+----------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal      | comm    | deptno |
+-------+--------+-----------+------+------------+----------+---------+--------+
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 |  3475.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 |  2850.00 |    NULL |     30 |
|  7782 | raju   | MANAGER   | 7839 | 1981-06-09 |  2500.00 |    NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 30000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 |  1500.00 |    0.00 |     30 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |   950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 |  3000.00 |    NULL |     20 |
+-------+--------+-----------+------+------------+----------+---------+--------+
9 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE job IN ('CLERK', 'ANALYST');
+-------+--------+---------+------+------------+---------+------+--------+
| empno | ename  | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+--------+---------+------+------------+---------+------+--------+
|  7788 | SCOTT  | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7876 | ADAMS  | CLERK   | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
|  7900 | JAMES  | CLERK   | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
|  7902 | FORD   | ANALYST | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
|  7934 | MILLER | CLERK   | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
|  7936 | abcd   | clerk   | 7782 | 1982-01-22 | 2000.00 | NULL |   NULL |
+-------+--------+---------+------+------------+---------+------+--------+
6 rows in set (0.0011 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE deptno IN (10, 20, 40);
+-------+--------+-----------+------+------------+----------+------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal      | comm | deptno |
+-------+--------+-----------+------+------------+----------+------+--------+
|  7782 | raju   | MANAGER   | 7839 | 1981-06-09 |  2500.00 | NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 30000.00 | NULL |     10 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 |  1300.00 | NULL |     10 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 |  3475.00 | NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 |  3000.00 | NULL |     20 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 |  1100.00 | NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 |  3000.00 | NULL |     20 |
+-------+--------+-----------+------+------------+----------+------+--------+
7 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE ename LIKE 'S%';
+-------+----------+---------+------+------------+---------+------+--------+
| empno | ename    | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+----------+---------+------+------------+---------+------+--------+
|   124 | sharanya | NULL    | NULL | NULL       |    NULL | NULL |   NULL |
|  7788 | SCOTT    | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
+-------+----------+---------+------+------------+---------+------+--------+
2 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE ename LIKE '%N';
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
+-------+--------+----------+------+------------+---------+---------+--------+
1 row in set (0.0197 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE ename LIKE '%N';
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
+-------+--------+----------+------+------------+---------+---------+--------+
1 row in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE comm IS NULL;
+-------+----------+-----------+------+------------+----------+------+--------+
| empno | ename    | job       | mgr  | hiredate   | sal      | comm | deptno |
+-------+----------+-----------+------+------------+----------+------+--------+
|   124 | sharanya | NULL      | NULL | NULL       |     NULL | NULL |   NULL |
|  1234 | ganesh   | saleman   | 1234 | NULL       |     NULL | NULL |   NULL |
|  7566 | JONES    | MANAGER   | 7839 | 1981-04-02 |  3475.00 | NULL |     20 |
|  7698 | BLAKE    | MANAGER   | 7839 | 1981-05-01 |  2850.00 | NULL |     30 |
|  7782 | raju     | MANAGER   | 7839 | 1981-06-09 |  2500.00 | NULL |     10 |
|  7788 | SCOTT    | ANALYST   | 7566 | 1982-12-09 |  3000.00 | NULL |     20 |
|  7839 | KING     | PRESIDENT | NULL | 1981-11-17 | 30000.00 | NULL |     10 |
|  7876 | ADAMS    | CLERK     | 7788 | 1983-01-12 |  1100.00 | NULL |     20 |
|  7900 | JAMES    | CLERK     | 7698 | 1981-12-03 |   950.00 | NULL |     30 |
|  7902 | FORD     | ANALYST   | 7566 | 1981-12-03 |  3000.00 | NULL |     20 |
|  7934 | MILLER   | CLERK     | 7782 | 1982-01-23 |  1300.00 | NULL |     10 |
|  7936 | abcd     | clerk     | 7782 | 1982-01-22 |  2000.00 | NULL |   NULL |
+-------+----------+-----------+------+------------+----------+------+--------+
12 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE mgr IS NULL;
+-------+----------+-----------+------+------------+----------+------+--------+
| empno | ename    | job       | mgr  | hiredate   | sal      | comm | deptno |
+-------+----------+-----------+------+------------+----------+------+--------+
|   124 | sharanya | NULL      | NULL | NULL       |     NULL | NULL |   NULL |
|  7839 | KING     | PRESIDENT | NULL | 1981-11-17 | 30000.00 | NULL |     10 |
+-------+----------+-----------+------+------------+----------+------+--------+
2 rows in set (0.0011 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE sal < 1500;
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+----------+------+------------+---------+---------+--------+
4 rows in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE sal >= 3000;
+-------+-------+-----------+------+------------+----------+--------+--------+
| empno | ename | job       | mgr  | hiredate   | sal      | comm   | deptno |
+-------+-------+-----------+------+------------+----------+--------+--------+
|  7521 | WARD  | SALESMAN  | 7698 | 1981-02-22 | 12345.00 | 500.00 |     30 |
|  7566 | JONES | MANAGER   | 7839 | 1981-04-02 |  3475.00 |   NULL |     20 |
|  7788 | SCOTT | ANALYST   | 7566 | 1982-12-09 |  3000.00 |   NULL |     20 |
|  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 30000.00 |   NULL |     10 |
|  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 |  3000.00 |   NULL |     20 |
+-------+-------+-----------+------+------------+----------+--------+--------+
5 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE deptno = 20 OR deptno = 30;
+-------+--------+----------+------+------------+----------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal      | comm    | deptno |
+-------+--------+----------+------+------------+----------+---------+--------+
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 |  3475.00 |    NULL |     20 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 |  3000.00 |    NULL |     20 |
|  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 |  1100.00 |    NULL |     20 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 |  3000.00 |    NULL |     20 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 |  2850.00 |    NULL |     30 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 |  1500.00 |    0.00 |     30 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |   950.00 |    NULL |     30 |
+-------+--------+----------+------+------------+----------+---------+--------+
9 rows in set (0.0195 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE job <> 'SALESMAN';
+-------+--------+-----------+------+------------+----------+------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal      | comm | deptno |
+-------+--------+-----------+------+------------+----------+------+--------+
|  1234 | ganesh | saleman   | 1234 | NULL       |     NULL | NULL |   NULL |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 |  3475.00 | NULL |     20 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 |  2850.00 | NULL |     30 |
|  7782 | raju   | MANAGER   | 7839 | 1981-06-09 |  2500.00 | NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 |  3000.00 | NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 30000.00 | NULL |     10 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 |  1100.00 | NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |   950.00 | NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 |  3000.00 | NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 |  1300.00 | NULL |     10 |
|  7936 | abcd   | clerk     | 7782 | 1982-01-22 |  2000.00 | NULL |   NULL |
+-------+--------+-----------+------+------------+----------+------+--------+
11 rows in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE comm > 0 AND comm < 500;
Empty set (0.0013 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE ename NOT LIKE 'M%';
+-------+----------+-----------+------+------------+----------+--------+--------+
| empno | ename    | job       | mgr  | hiredate   | sal      | comm   | deptno |
+-------+----------+-----------+------+------------+----------+--------+--------+
|   124 | sharanya | NULL      | NULL | NULL       |     NULL |   NULL |   NULL |
|  1234 | ganesh   | saleman   | 1234 | NULL       |     NULL |   NULL |   NULL |
|  7521 | WARD     | SALESMAN  | 7698 | 1981-02-22 | 12345.00 | 500.00 |     30 |
|  7566 | JONES    | MANAGER   | 7839 | 1981-04-02 |  3475.00 |   NULL |     20 |
|  7698 | BLAKE    | MANAGER   | 7839 | 1981-05-01 |  2850.00 |   NULL |     30 |
|  7782 | raju     | MANAGER   | 7839 | 1981-06-09 |  2500.00 |   NULL |     10 |
|  7788 | SCOTT    | ANALYST   | 7566 | 1982-12-09 |  3000.00 |   NULL |     20 |
|  7839 | KING     | PRESIDENT | NULL | 1981-11-17 | 30000.00 |   NULL |     10 |
|  7844 | TURNER   | SALESMAN  | 7698 | 1981-09-08 |  1500.00 |   0.00 |     30 |
|  7876 | ADAMS    | CLERK     | 7788 | 1983-01-12 |  1100.00 |   NULL |     20 |
|  7900 | JAMES    | CLERK     | 7698 | 1981-12-03 |   950.00 |   NULL |     30 |
|  7902 | FORD     | ANALYST   | 7566 | 1981-12-03 |  3000.00 |   NULL |     20 |
|  7936 | abcd     | clerk     | 7782 | 1982-01-22 |  2000.00 |   NULL |   NULL |
+-------+----------+-----------+------+------------+----------+--------+--------+
13 rows in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE sal NOT BETWEEN 2000 AND 4000;
+-------+--------+-----------+------+------------+----------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal      | comm    | deptno |
+-------+--------+-----------+------+------------+----------+---------+--------+
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 30000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 |  1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 |  1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |   950.00 |    NULL |     30 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 |  1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+----------+---------+--------+
7 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE ename IN ('KING','ALLEN','FORD');
+-------+-------+-----------+------+------------+----------+------+--------+
| empno | ename | job       | mgr  | hiredate   | sal      | comm | deptno |
+-------+-------+-----------+------+------------+----------+------+--------+
|  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 30000.00 | NULL |     10 |
|  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 |  3000.00 | NULL |     20 |
+-------+-------+-----------+------+------------+----------+------+--------+
2 rows in set (0.0196 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE ename NOT IN ('SMITH','WARD','JONES');
+-------+----------+-----------+------+------------+----------+---------+--------+
| empno | ename    | job       | mgr  | hiredate   | sal      | comm    | deptno |
+-------+----------+-----------+------+------------+----------+---------+--------+
|   124 | sharanya | NULL      | NULL | NULL       |     NULL |    NULL |   NULL |
|  1234 | ganesh   | saleman   | 1234 | NULL       |     NULL |    NULL |   NULL |
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
13 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE comm IS NULL OR sal > 2500;
+-------+----------+-----------+------+------------+----------+--------+--------+
| empno | ename    | job       | mgr  | hiredate   | sal      | comm   | deptno |
+-------+----------+-----------+------+------------+----------+--------+--------+
|   124 | sharanya | NULL      | NULL | NULL       |     NULL |   NULL |   NULL |
|  1234 | ganesh   | saleman   | 1234 | NULL       |     NULL |   NULL |   NULL |
|  7521 | WARD     | SALESMAN  | 7698 | 1981-02-22 | 12345.00 | 500.00 |     30 |
|  7566 | JONES    | MANAGER   | 7839 | 1981-04-02 |  3475.00 |   NULL |     20 |
|  7698 | BLAKE    | MANAGER   | 7839 | 1981-05-01 |  2850.00 |   NULL |     30 |
|  7782 | raju     | MANAGER   | 7839 | 1981-06-09 |  2500.00 |   NULL |     10 |
|  7788 | SCOTT    | ANALYST   | 7566 | 1982-12-09 |  3000.00 |   NULL |     20 |
|  7839 | KING     | PRESIDENT | NULL | 1981-11-17 | 30000.00 |   NULL |     10 |
|  7876 | ADAMS    | CLERK     | 7788 | 1983-01-12 |  1100.00 |   NULL |     20 |
|  7900 | JAMES    | CLERK     | 7698 | 1981-12-03 |   950.00 |   NULL |     30 |
|  7902 | FORD     | ANALYST   | 7566 | 1981-12-03 |  3000.00 |   NULL |     20 |
|  7934 | MILLER   | CLERK     | 7782 | 1982-01-23 |  1300.00 |   NULL |     10 |
|  7936 | abcd     | clerk     | 7782 | 1982-01-22 |  2000.00 |   NULL |   NULL |
+-------+----------+-----------+------+------------+----------+--------+--------+
13 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE ename LIKE '_____';
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 3475.00 | NULL |     20 |
|  7698 | BLAKE | MANAGER | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
|  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7876 | ADAMS | CLERK   | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
|  7900 | JAMES | CLERK   | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
+-------+-------+---------+------+------------+---------+------+--------+
5 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE ename LIKE '_A%';
+-------+--------+----------+------+------------+----------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal      | comm    | deptno |
+-------+--------+----------+------+------------+----------+---------+--------+
|  1234 | ganesh | saleman  | 1234 | NULL       |     NULL |    NULL |   NULL |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |
|  7782 | raju   | MANAGER  | 7839 | 1981-06-09 |  2500.00 |    NULL |     10 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |   950.00 |    NULL |     30 |
+-------+--------+----------+------+------------+----------+---------+--------+
5 rows in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE mgr IS NULL;
+-------+----------+-----------+------+------------+----------+------+--------+
| empno | ename    | job       | mgr  | hiredate   | sal      | comm | deptno |
+-------+----------+-----------+------+------------+----------+------+--------+
|   124 | sharanya | NULL      | NULL | NULL       |     NULL | NULL |   NULL |
|  7839 | KING     | PRESIDENT | NULL | 1981-11-17 | 30000.00 | NULL |     10 |
+-------+----------+-----------+------+------------+----------+------+--------+
2 rows in set (0.0011 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE sal <> 3000;
+-------+--------+-----------+------+------------+----------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal      | comm    | deptno |
+-------+--------+-----------+------+------------+----------+---------+--------+
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 |  3475.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 |  2850.00 |    NULL |     30 |
|  7782 | raju   | MANAGER   | 7839 | 1981-06-09 |  2500.00 |    NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 30000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 |  1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 |  1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |   950.00 |    NULL |     30 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 |  1300.00 |    NULL |     10 |
|  7936 | abcd   | clerk     | 7782 | 1982-01-22 |  2000.00 |    NULL |   NULL |
+-------+--------+-----------+------+------------+----------+---------+--------+
11 rows in set (0.0013 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE ename LIKE '%S' AND sal > 1000;
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 3475.00 | NULL |     20 |
|  7876 | ADAMS | CLERK   | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+
2 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE comm IS NOT NULL AND deptno = 30;
+-------+--------+----------+------+------------+----------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal      | comm    | deptno |
+-------+--------+----------+------+------------+----------+---------+--------+
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 |  1500.00 |    0.00 |     30 |
+-------+--------+----------+------+------------+----------+---------+--------+
3 rows in set (0.0016 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE (job='CLERK' OR job='SALESMAN') AND sal < 1500;
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+----------+------+------------+---------+---------+--------+
4 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE sal BETWEEN 2500 AND 4000;
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 3475.00 | NULL |     20 |
|  7698 | BLAKE | MANAGER | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
|  7782 | raju  | MANAGER | 7839 | 1981-06-09 | 2500.00 | NULL |     10 |
|  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7902 | FORD  | ANALYST | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+
5 rows in set (0.0009 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE ename LIKE 'M%' OR ename LIKE '%R';
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+----------+------+------------+---------+---------+--------+
3 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > SELECT * FROM emp WHERE sal > 1000 AND (comm IS NULL OR comm < 500);
+-------+--------+-----------+------+------------+----------+------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal      | comm | deptno |
+-------+--------+-----------+------+------------+----------+------+--------+
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 |  3475.00 | NULL |     20 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 |  2850.00 | NULL |     30 |
|  7782 | raju   | MANAGER   | 7839 | 1981-06-09 |  2500.00 | NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 |  3000.00 | NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 30000.00 | NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 |  1500.00 | 0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 |  1100.00 | NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 |  3000.00 | NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 |  1300.00 | NULL |     10 |
|  7936 | abcd   | clerk     | 7782 | 1982-01-22 |  2000.00 | NULL |   NULL |
+-------+--------+-----------+------+------------+----------+------+--------+
10 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL >


















