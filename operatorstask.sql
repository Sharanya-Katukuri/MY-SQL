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
Your MySQL connection id is 8 (X protocol)
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
| students           |
+--------------------+
7 rows in set (0.0032 sec)
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
15 rows in set (0.0818 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno, ename, job, sal, (sal + 500) as increased_salary from emp;
+-------+----------+-----------+----------+------------------+
| empno | ename    | job       | sal      | increased_salary |
+-------+----------+-----------+----------+------------------+
|   124 | sharanya | NULL      |     NULL |             NULL |
|  1234 | ganesh   | saleman   |     NULL |             NULL |
|  7521 | WARD     | SALESMAN  | 12345.00 |         12845.00 |
|  7566 | JONES    | MANAGER   |  3475.00 |          3975.00 |
|  7654 | MARTIN   | SALESMAN  |  1250.00 |          1750.00 |
|  7698 | BLAKE    | MANAGER   |  2850.00 |          3350.00 |
|  7782 | raju     | MANAGER   |  2500.00 |          3000.00 |
|  7788 | SCOTT    | ANALYST   |  3000.00 |          3500.00 |
|  7839 | KING     | PRESIDENT | 30000.00 |         30500.00 |
|  7844 | TURNER   | SALESMAN  |  1500.00 |          2000.00 |
|  7876 | ADAMS    | CLERK     |  1100.00 |          1600.00 |
|  7900 | JAMES    | CLERK     |   950.00 |          1450.00 |
|  7902 | FORD     | ANALYST   |  3000.00 |          3500.00 |
|  7934 | MILLER   | CLERK     |  1300.00 |          1800.00 |
|  7936 | abcd     | clerk     |  2000.00 |          2500.00 |
+-------+----------+-----------+----------+------------------+
15 rows in set (0.0023 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename as employee_salary,sal as original_salary,(sal*2) as double_salary from emp;
+-----------------+-----------------+---------------+
| employee_salary | original_salary | double_salary |
+-----------------+-----------------+---------------+
| sharanya        |            NULL |          NULL |
| ganesh          |            NULL |          NULL |
| WARD            |        12345.00 |      24690.00 |
| JONES           |         3475.00 |       6950.00 |
| MARTIN          |         1250.00 |       2500.00 |
| BLAKE           |         2850.00 |       5700.00 |
| raju            |         2500.00 |       5000.00 |
| SCOTT           |         3000.00 |       6000.00 |
| KING            |        30000.00 |      60000.00 |
| TURNER          |         1500.00 |       3000.00 |
| ADAMS           |         1100.00 |       2200.00 |
| JAMES           |          950.00 |       1900.00 |
| FORD            |         3000.00 |       6000.00 |
| MILLER          |         1300.00 |       2600.00 |
| abcd            |         2000.00 |       4000.00 |
+-----------------+-----------------+---------------+
15 rows in set (0.0016 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,sal,com from emp where comm>(0.1 * sal);
ERROR: 1054: Unknown column 'com' in 'field list'
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,sal,comm from emp where comm>(0.1 * sal);
+-------+--------+---------+---------+
| empno | ename  | sal     | comm    |
+-------+--------+---------+---------+
|  7654 | MARTIN | 1250.00 | 1400.00 |
+-------+--------+---------+---------+
1 row in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,sal from emp where sal>(sal*12);
Empty set (0.0012 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,sal,(sal*12 ) as annual_salary from emp where (sal*12)>30000;
+-------+-------+----------+---------------+
| empno | ename | sal      | annual_salary |
+-------+-------+----------+---------------+
|  7521 | WARD  | 12345.00 |     148140.00 |
|  7566 | JONES |  3475.00 |      41700.00 |
|  7698 | BLAKE |  2850.00 |      34200.00 |
|  7788 | SCOTT |  3000.00 |      36000.00 |
|  7839 | KING  | 30000.00 |     360000.00 |
|  7902 | FORD  |  3000.00 |      36000.00 |
+-------+-------+----------+---------------+
6 rows in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,job,(sal+comm) as net_salary from emp;
+----------+-----------+------------+
| ename    | job       | net_salary |
+----------+-----------+------------+
| sharanya | NULL      |       NULL |
| ganesh   | saleman   |       NULL |
| WARD     | SALESMAN  |   12845.00 |
| JONES    | MANAGER   |       NULL |
| MARTIN   | SALESMAN  |    2650.00 |
| BLAKE    | MANAGER   |       NULL |
| raju     | MANAGER   |       NULL |
| SCOTT    | ANALYST   |       NULL |
| KING     | PRESIDENT |       NULL |
| TURNER   | SALESMAN  |    1500.00 |
| ADAMS    | CLERK     |       NULL |
| JAMES    | CLERK     |       NULL |
| FORD     | ANALYST   |       NULL |
| MILLER   | CLERK     |       NULL |
| abcd     | clerk     |       NULL |
+----------+-----------+------------+
15 rows in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,job,(sal+coalesce(comm,0)) as net_income from emp;
+----------+-----------+------------+
| ename    | job       | net_income |
+----------+-----------+------------+
| sharanya | NULL      |       NULL |
| ganesh   | saleman   |       NULL |
| WARD     | SALESMAN  |   12845.00 |
| JONES    | MANAGER   |    3475.00 |
| MARTIN   | SALESMAN  |    2650.00 |
| BLAKE    | MANAGER   |    2850.00 |
| raju     | MANAGER   |    2500.00 |
| SCOTT    | ANALYST   |    3000.00 |
| KING     | PRESIDENT |   30000.00 |
| TURNER   | SALESMAN  |    1500.00 |
| ADAMS    | CLERK     |    1100.00 |
| JAMES    | CLERK     |     950.00 |
| FORD     | ANALYST   |    3000.00 |
| MILLER   | CLERK     |    1300.00 |
| abcd     | clerk     |    2000.00 |
+----------+-----------+------------+
15 rows in set (0.0013 sec)

 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal from emp where sal=3000;
+-------+---------+
| ename | sal     |
+-------+---------+
| SCOTT | 3000.00 |
| FORD  | 3000.00 |
+-------+---------+
2 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal from emp where sal>2500;
+-------+----------+
| ename | sal      |
+-------+----------+
| WARD  | 12345.00 |
| JONES |  3475.00 |
| BLAKE |  2850.00 |
| SCOTT |  3000.00 |
| KING  | 30000.00 |
| FORD  |  3000.00 |
+-------+----------+
6 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal from emp where sal between 1000 and 2000;
+--------+---------+
| ename  | sal     |
+--------+---------+
| MARTIN | 1250.00 |
| TURNER | 1500.00 |
| ADAMS  | 1100.00 |
| MILLER | 1300.00 |
| abcd   | 2000.00 |
+--------+---------+
5 rows in set (0.0023 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,job from emp where job='manager';
+-------+-------+---------+
| empno | ename | job     |
+-------+-------+---------+
|  7566 | JONES | MANAGER |
|  7698 | BLAKE | MANAGER |
|  7782 | raju  | MANAGER |
+-------+-------+---------+
3 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,hiredate from emp where hiredate>'1981-01-01';
+-------+--------+------------+
| empno | ename  | hiredate   |
+-------+--------+------------+
|  7521 | WARD   | 1981-02-22 |
|  7566 | JONES  | 1981-04-02 |
|  7654 | MARTIN | 1981-09-28 |
|  7698 | BLAKE  | 1981-05-01 |
|  7782 | raju   | 1981-06-09 |
|  7788 | SCOTT  | 1982-12-09 |
|  7839 | KING   | 1981-11-17 |
|  7844 | TURNER | 1981-09-08 |
|  7876 | ADAMS  | 1983-01-12 |
|  7900 | JAMES  | 1981-12-03 |
|  7902 | FORD   | 1981-12-03 |
|  7934 | MILLER | 1982-01-23 |
|  7936 | abcd   | 1982-01-22 |
+-------+--------+------------+
13 rows in set (0.0222 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,job,sal from emp where job='clerk' and sal<1500;
+--------+-------+---------+
| ename  | job   | sal     |
+--------+-------+---------+
| ADAMS  | CLERK | 1100.00 |
| JAMES  | CLERK |  950.00 |
| MILLER | CLERK | 1300.00 |
+--------+-------+---------+
3 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,job from emp where job='salesman' or job='clerk';
+-------+--------+----------+
| empno | ename  | job      |
+-------+--------+----------+
|  7521 | WARD   | SALESMAN |
|  7654 | MARTIN | SALESMAN |
|  7844 | TURNER | SALESMAN |
|  7876 | ADAMS  | CLERK    |
|  7900 | JAMES  | CLERK    |
|  7934 | MILLER | CLERK    |
|  7936 | abcd   | clerk    |
+-------+--------+----------+
7 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,sal,deptno from emp where sal between 1000 and 2000 and deptno=30;
+-------+--------+---------+--------+
| empno | ename  | sal     | deptno |
+-------+--------+---------+--------+
|  7654 | MARTIN | 1250.00 |     30 |
|  7844 | TURNER | 1500.00 |     30 |
+-------+--------+---------+--------+
2 rows in set (0.0215 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename ,job from emp where job<>'MANAGER';
+-------+--------+-----------+
| empno | ename  | job       |
+-------+--------+-----------+
|  1234 | ganesh | saleman   |
|  7521 | WARD   | SALESMAN  |
|  7654 | MARTIN | SALESMAN  |
|  7788 | SCOTT  | ANALYST   |
|  7839 | KING   | PRESIDENT |
|  7844 | TURNER | SALESMAN  |
|  7876 | ADAMS  | CLERK     |
|  7900 | JAMES  | CLERK     |
|  7902 | FORD   | ANALYST   |
|  7934 | MILLER | CLERK     |
|  7936 | abcd   | clerk     |
+-------+--------+-----------+
11 rows in set (0.0011 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,sal,comm from emp where comm is null;
+-------+----------+----------+------+
| empno | ename    | sal      | comm |
+-------+----------+----------+------+
|   124 | sharanya |     NULL | NULL |
|  1234 | ganesh   |     NULL | NULL |
|  7566 | JONES    |  3475.00 | NULL |
|  7698 | BLAKE    |  2850.00 | NULL |
|  7782 | raju     |  2500.00 | NULL |
|  7788 | SCOTT    |  3000.00 | NULL |
|  7839 | KING     | 30000.00 | NULL |
|  7876 | ADAMS    |  1100.00 | NULL |
|  7900 | JAMES    |   950.00 | NULL |
|  7902 | FORD     |  3000.00 | NULL |
|  7934 | MILLER   |  1300.00 | NULL |
|  7936 | abcd     |  2000.00 | NULL |
+-------+----------+----------+------+
12 rows in set (0.0016 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from emp where hiredate between '1981-01-01' and '1981-12-31';
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
9 rows in set (0.0192 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,job,deptno from emp where deptno in(10,20,30);
+--------+-----------+--------+
| ename  | job       | deptno |
+--------+-----------+--------+
| WARD   | SALESMAN  |     30 |
| JONES  | MANAGER   |     20 |
| MARTIN | SALESMAN  |     30 |
| BLAKE  | MANAGER   |     30 |
| raju   | MANAGER   |     10 |
| SCOTT  | ANALYST   |     20 |
| KING   | PRESIDENT |     10 |
| TURNER | SALESMAN  |     30 |
| ADAMS  | CLERK     |     20 |
| JAMES  | CLERK     |     30 |
| FORD   | ANALYST   |     20 |
| MILLER | CLERK     |     10 |
+--------+-----------+--------+
12 rows in set (0.0023 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename from emp where ename like 'S%';
+-------+----------+
| empno | ename    |
+-------+----------+
|   124 | sharanya |
|  7788 | SCOTT    |
+-------+----------+
2 rows in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename from emp where ename like '%N';
+-------+--------+
| empno | ename  |
+-------+--------+
|  7654 | MARTIN |
+-------+--------+
1 row in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename from emp where ename like '%A%';
+-------+----------+
| empno | ename    |
+-------+----------+
|   124 | sharanya |
|  1234 | ganesh   |
|  7521 | WARD     |
|  7654 | MARTIN   |
|  7698 | BLAKE    |
|  7782 | raju     |
|  7876 | ADAMS    |
|  7900 | JAMES    |
|  7936 | abcd     |
+-------+----------+
9 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,job,mgr from emp where mgr is null;
+-------+----------+-----------+------+
| empno | ename    | job       | mgr  |
+-------+----------+-----------+------+
|   124 | sharanya | NULL      | NULL |
|  7839 | KING     | PRESIDENT | NULL |
+-------+----------+-----------+------+
2 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,job,sal,comm from emp where comm is null;
+-------+----------+-----------+----------+------+
| empno | ename    | job       | sal      | comm |
+-------+----------+-----------+----------+------+
|   124 | sharanya | NULL      |     NULL | NULL |
|  1234 | ganesh   | saleman   |     NULL | NULL |
|  7566 | JONES    | MANAGER   |  3475.00 | NULL |
|  7698 | BLAKE    | MANAGER   |  2850.00 | NULL |
|  7782 | raju     | MANAGER   |  2500.00 | NULL |
|  7788 | SCOTT    | ANALYST   |  3000.00 | NULL |
|  7839 | KING     | PRESIDENT | 30000.00 | NULL |
|  7876 | ADAMS    | CLERK     |  1100.00 | NULL |
|  7900 | JAMES    | CLERK     |   950.00 | NULL |
|  7902 | FORD     | ANALYST   |  3000.00 | NULL |
|  7934 | MILLER   | CLERK     |  1300.00 | NULL |
|  7936 | abcd     | clerk     |  2000.00 | NULL |
+-------+----------+-----------+----------+------+
12 rows in set (0.0203 sec)

 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,job,sal,comm from emp where comm is  not null;
+-------+--------+----------+----------+---------+
| empno | ename  | job      | sal      | comm    |
+-------+--------+----------+----------+---------+
|  7521 | WARD   | SALESMAN | 12345.00 |  500.00 |
|  7654 | MARTIN | SALESMAN |  1250.00 | 1400.00 |
|  7844 | TURNER | SALESMAN |  1500.00 |    0.00 |
+-------+--------+----------+----------+---------+
3 rows in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,job,sal from emp where sal is null;
+----------+---------+------+
| ename    | job     | sal  |
+----------+---------+------+
| sharanya | NULL    | NULL |
| ganesh   | saleman | NULL |
+----------+---------+------+
2 rows in set (0.0011 sec)

 MySQL  localhost:33060+ ssl  charanya  SQL > select * from dept;
+--------+------------+----------+
| deptno | dname      | loc      |
+--------+------------+----------+
|     10 | ACCOUNTING | NEW YORK |
|     20 | RESEARCH   | DALLAS   |
|     30 | DEVELOPER  | CHICAGO  |
|     40 | OPERATIONS | BOSTON   |
+--------+------------+----------+
4 rows in set (0.0735 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from dept where loc is null;
Empty set (0.0192 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,job from emp where job like 'M%';
+-------+---------+
| ename | job     |
+-------+---------+
| JONES | MANAGER |
| BLAKE | MANAGER |
| raju  | MANAGER |
+-------+---------+
3 rows in set (0.0012 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename from emp where ename like'_____';
+-------+-------+
| empno | ename |
+-------+-------+
|  7566 | JONES |
|  7698 | BLAKE |
|  7788 | SCOTT |
|  7876 | ADAMS |
|  7900 | JAMES |
+-------+-------+
5 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from emp where job like '%MAN';
+-------+--------+----------+------+------------+----------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal      | comm    | deptno |
+-------+--------+----------+------+------------+----------+---------+--------+
|  1234 | ganesh | saleman  | 1234 | NULL       |     NULL |    NULL |   NULL |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 |  1500.00 |    0.00 |     30 |
+-------+--------+----------+------+------------+----------+---------+--------+
4 rows in set (0.0013 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from emp where ename like'%S';
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 3475.00 | NULL |     20 |
|  7876 | ADAMS | CLERK   | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
|  7900 | JAMES | CLERK   | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
+-------+-------+---------+------+------------+---------+------+--------+
3 rows in set (0.0019 sec)

 MySQL  localhost:33060+ ssl  charanya  SQL > select * from emp where ename like'%AA%';
Empty set (0.0011 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from emp where ename like 'S%H';
Empty set (0.0010 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,sal,(sal*0.15) as bonus,(sal+(sal*0.15)) as total_salary from emp;
+-------+----------+----------+-----------+--------------+
| empno | ename    | sal      | bonus     | total_salary |
+-------+----------+----------+-----------+--------------+
|   124 | sharanya |     NULL |      NULL |         NULL |
|  1234 | ganesh   |     NULL |      NULL |         NULL |
|  7521 | WARD     | 12345.00 | 1851.7500 |   14196.7500 |
|  7566 | JONES    |  3475.00 |  521.2500 |    3996.2500 |
|  7654 | MARTIN   |  1250.00 |  187.5000 |    1437.5000 |
|  7698 | BLAKE    |  2850.00 |  427.5000 |    3277.5000 |
|  7782 | raju     |  2500.00 |  375.0000 |    2875.0000 |
|  7788 | SCOTT    |  3000.00 |  450.0000 |    3450.0000 |
|  7839 | KING     | 30000.00 | 4500.0000 |   34500.0000 |
|  7844 | TURNER   |  1500.00 |  225.0000 |    1725.0000 |
|  7876 | ADAMS    |  1100.00 |  165.0000 |    1265.0000 |
|  7900 | JAMES    |   950.00 |  142.5000 |    1092.5000 |
|  7902 | FORD     |  3000.00 |  450.0000 |    3450.0000 |
|  7934 | MILLER   |  1300.00 |  195.0000 |    1495.0000 |
|  7936 | abcd     |  2000.00 |  300.0000 |    2300.0000 |
+-------+----------+----------+-----------+--------------+
15 rows in set (0.0016 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,sal as salary_usd,(sal*83) as salary_inr from emp;
+-------+----------+------------+------------+
| empno | ename    | salary_usd | salary_inr |
+-------+----------+------------+------------+
|   124 | sharanya |       NULL |       NULL |
|  1234 | ganesh   |       NULL |       NULL |
|  7521 | WARD     |   12345.00 | 1024635.00 |
|  7566 | JONES    |    3475.00 |  288425.00 |
|  7654 | MARTIN   |    1250.00 |  103750.00 |
|  7698 | BLAKE    |    2850.00 |  236550.00 |
|  7782 | raju     |    2500.00 |  207500.00 |
|  7788 | SCOTT    |    3000.00 |  249000.00 |
|  7839 | KING     |   30000.00 | 2490000.00 |
|  7844 | TURNER   |    1500.00 |  124500.00 |
|  7876 | ADAMS    |    1100.00 |   91300.00 |
|  7900 | JAMES    |     950.00 |   78850.00 |
|  7902 | FORD     |    3000.00 |  249000.00 |
|  7934 | MILLER   |    1300.00 |  107900.00 |
|  7936 | abcd     |    2000.00 |  166000.00 |
+-------+----------+------------+------------+
15 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,job,sal,comm,(comm/sal) as comm_to_sal_ratio from emp where job='salesman';
+-------+--------+----------+----------+---------+-------------------+
| empno | ename  | job      | sal      | comm    | comm_to_sal_ratio |
+-------+--------+----------+----------+---------+-------------------+
|  7521 | WARD   | SALESMAN | 12345.00 |  500.00 |          0.040502 |
|  7654 | MARTIN | SALESMAN |  1250.00 | 1400.00 |          1.120000 |
|  7844 | TURNER | SALESMAN |  1500.00 |    0.00 |          0.000000 |
+-------+--------+----------+----------+---------+-------------------+
3 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal as monthly_salary,(sal*12) as yearly_salary from emp;
+----------+----------------+---------------+
| ename    | monthly_salary | yearly_salary |
+----------+----------------+---------------+
| sharanya |           NULL |          NULL |
| ganesh   |           NULL |          NULL |
| WARD     |       12345.00 |     148140.00 |
| JONES    |        3475.00 |      41700.00 |
| MARTIN   |        1250.00 |      15000.00 |
| BLAKE    |        2850.00 |      34200.00 |
| raju     |        2500.00 |      30000.00 |
| SCOTT    |        3000.00 |      36000.00 |
| KING     |       30000.00 |     360000.00 |
| TURNER   |        1500.00 |      18000.00 |
| ADAMS    |        1100.00 |      13200.00 |
| JAMES    |         950.00 |      11400.00 |
| FORD     |        3000.00 |      36000.00 |
| MILLER   |        1300.00 |      15600.00 |
| abcd     |        2000.00 |      24000.00 |
+----------+----------------+---------------+
15 rows in set (0.0019 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,sal,hiredate from emp where sal>1500 and year(hiredate)=1981;
+-------+-------+----------+------------+
| empno | ename | sal      | hiredate   |
+-------+-------+----------+------------+
|  7521 | WARD  | 12345.00 | 1981-02-22 |
|  7566 | JONES |  3475.00 | 1981-04-02 |
|  7698 | BLAKE |  2850.00 | 1981-05-01 |
|  7782 | raju  |  2500.00 | 1981-06-09 |
|  7839 | KING  | 30000.00 | 1981-11-17 |
|  7902 | FORD  |  3000.00 | 1981-12-03 |
+-------+-------+----------+------------+
6 rows in set (0.0033 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from emp where job <>'CLERK' and sal>2000;
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
7 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,job,sal,comm from emp where comm is not null and sal<2000;
+-------+--------+----------+---------+---------+
| empno | ename  | job      | sal     | comm    |
+-------+--------+----------+---------+---------+
|  7654 | MARTIN | SALESMAN | 1250.00 | 1400.00 |
|  7844 | TURNER | SALESMAN | 1500.00 |    0.00 |
+-------+--------+----------+---------+---------+
2 rows in set (0.0013 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,hiredate from emp where hiredate >'1981-12-12';
+-------+--------+------------+
| empno | ename  | hiredate   |
+-------+--------+------------+
|  7788 | SCOTT  | 1982-12-09 |
|  7876 | ADAMS  | 1983-01-12 |
|  7934 | MILLER | 1982-01-23 |
|  7936 | abcd   | 1982-01-22 |
+-------+--------+------------+
4 rows in set (0.0013 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select empno,ename,deptno from emp where deptno in (10,20);
+-------+--------+--------+
| empno | ename  | deptno |
+-------+--------+--------+
|  7782 | raju   |     10 |
|  7839 | KING   |     10 |
|  7934 | MILLER |     10 |
|  7566 | JONES  |     20 |
|  7788 | SCOTT  |     20 |
|  7876 | ADAMS  |     20 |
|  7902 | FORD   |     20 |
+-------+--------+--------+
7 rows in set (0.0026 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL >




