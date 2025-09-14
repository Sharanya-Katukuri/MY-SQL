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
Your MySQL connection id is 9 (X protocol)
Server version: 8.0.43 MySQL Community Server - GPL
No default schema selected; type \use <schema> to set one.
 MySQL  localhost:33060+ ssl  SQL > show databases;
+--------------------+
| Database           |
+--------------------+
| 10k                |
| 53r                |
| charanya           |
| chatgptprac        |
| dashboard          |
| information_schema |
| mysql              |
| performance_schema |
| sharanya           |
| sqlprac            |
| sys                |
| task_trigger       |
| trigger            |
| trigprac           |
+--------------------+
14 rows in set (0.0043 sec)
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
15 rows in set (0.0063 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal,rank() over (order by sal desc) as salary_rank from emp;
+----------+----------+-------------+
| ename    | sal      | salary_rank |
+----------+----------+-------------+
| KING     | 30000.00 |           1 |
| WARD     | 12345.00 |           2 |
| JONES    |  3475.00 |           3 |
| SCOTT    |  3000.00 |           4 |
| FORD     |  3000.00 |           4 |
| BLAKE    |  2850.00 |           6 |
| raju     |  2500.00 |           7 |
| abcd     |  2000.00 |           8 |
| TURNER   |  1500.00 |           9 |
| MILLER   |  1300.00 |          10 |
| MARTIN   |  1250.00 |          11 |
| ADAMS    |  1100.00 |          12 |
| JAMES    |   950.00 |          13 |
| sharanya |     NULL |          14 |
| ganesh   |     NULL |          14 |
+----------+----------+-------------+
15 rows in set (0.0111 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal,dense_rank() over (order by sal desc) as salary_rank from emp;
+----------+----------+-------------+
| ename    | sal      | salary_rank |
+----------+----------+-------------+
| KING     | 30000.00 |           1 |
| WARD     | 12345.00 |           2 |
| JONES    |  3475.00 |           3 |
| SCOTT    |  3000.00 |           4 |
| FORD     |  3000.00 |           4 |
| BLAKE    |  2850.00 |           5 |
| raju     |  2500.00 |           6 |
| abcd     |  2000.00 |           7 |
| TURNER   |  1500.00 |           8 |
| MILLER   |  1300.00 |           9 |
| MARTIN   |  1250.00 |          10 |
| ADAMS    |  1100.00 |          11 |
| JAMES    |   950.00 |          12 |
| sharanya |     NULL |          13 |
| ganesh   |     NULL |          13 |
+----------+----------+-------------+
15 rows in set (0.0023 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,deptno,sal,dense_rank() over(partition by deptno order by sal desc) as dept_salary_rank from emp;
+----------+--------+----------+------------------+
| ename    | deptno | sal      | dept_salary_rank |
+----------+--------+----------+------------------+
| abcd     |   NULL |  2000.00 |                1 |
| sharanya |   NULL |     NULL |                2 |
| ganesh   |   NULL |     NULL |                2 |
| KING     |     10 | 30000.00 |                1 |
| raju     |     10 |  2500.00 |                2 |
| MILLER   |     10 |  1300.00 |                3 |
| JONES    |     20 |  3475.00 |                1 |
| SCOTT    |     20 |  3000.00 |                2 |
| FORD     |     20 |  3000.00 |                2 |
| ADAMS    |     20 |  1100.00 |                3 |
| WARD     |     30 | 12345.00 |                1 |
| BLAKE    |     30 |  2850.00 |                2 |
| TURNER   |     30 |  1500.00 |                3 |
| MARTIN   |     30 |  1250.00 |                4 |
| JAMES    |     30 |   950.00 |                5 |
+----------+--------+----------+------------------+
15 rows in set (0.0020 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,deptno,sal,avg(sal) over (partition by deptno) as dept_avg_salary from emp;
+----------+--------+----------+-----------------+
| ename    | deptno | sal      | dept_avg_salary |
+----------+--------+----------+-----------------+
| sharanya |   NULL |     NULL |     2000.000000 |
| ganesh   |   NULL |     NULL |     2000.000000 |
| abcd     |   NULL |  2000.00 |     2000.000000 |
| raju     |     10 |  2500.00 |    11266.666667 |
| KING     |     10 | 30000.00 |    11266.666667 |
| MILLER   |     10 |  1300.00 |    11266.666667 |
| JONES    |     20 |  3475.00 |     2643.750000 |
| SCOTT    |     20 |  3000.00 |     2643.750000 |
| ADAMS    |     20 |  1100.00 |     2643.750000 |
| FORD     |     20 |  3000.00 |     2643.750000 |
| WARD     |     30 | 12345.00 |     3779.000000 |
| MARTIN   |     30 |  1250.00 |     3779.000000 |
| BLAKE    |     30 |  2850.00 |     3779.000000 |
| TURNER   |     30 |  1500.00 |     3779.000000 |
| JAMES    |     30 |   950.00 |     3779.000000 |
+----------+--------+----------+-----------------+
15 rows in set (0.0041 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,deptno,sal, max(sal) over (partition by deptno) as dept_max_salary from emp;
+----------+--------+----------+-----------------+
| ename    | deptno | sal      | dept_max_salary |
+----------+--------+----------+-----------------+
| sharanya |   NULL |     NULL |         2000.00 |
| ganesh   |   NULL |     NULL |         2000.00 |
| abcd     |   NULL |  2000.00 |         2000.00 |
| raju     |     10 |  2500.00 |        30000.00 |
| KING     |     10 | 30000.00 |        30000.00 |
| MILLER   |     10 |  1300.00 |        30000.00 |
| JONES    |     20 |  3475.00 |         3475.00 |
| SCOTT    |     20 |  3000.00 |         3475.00 |
| ADAMS    |     20 |  1100.00 |         3475.00 |
| FORD     |     20 |  3000.00 |         3475.00 |
| WARD     |     30 | 12345.00 |        12345.00 |
| MARTIN   |     30 |  1250.00 |        12345.00 |
| BLAKE    |     30 |  2850.00 |        12345.00 |
| TURNER   |     30 |  1500.00 |        12345.00 |
| JAMES    |     30 |   950.00 |        12345.00 |
+----------+--------+----------+-----------------+
15 rows in set (0.0044 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal,sum(sal) over (order by sal) as running_total from emp;
+----------+----------+---------------+
| ename    | sal      | running_total |
+----------+----------+---------------+
| sharanya |     NULL |          NULL |
| ganesh   |     NULL |          NULL |
| JAMES    |   950.00 |        950.00 |
| ADAMS    |  1100.00 |       2050.00 |
| MARTIN   |  1250.00 |       3300.00 |
| MILLER   |  1300.00 |       4600.00 |
| TURNER   |  1500.00 |       6100.00 |
| abcd     |  2000.00 |       8100.00 |
| raju     |  2500.00 |      10600.00 |
| BLAKE    |  2850.00 |      13450.00 |
| SCOTT    |  3000.00 |      19450.00 |
| FORD     |  3000.00 |      19450.00 |
| JONES    |  3475.00 |      22925.00 |
| WARD     | 12345.00 |      35270.00 |
| KING     | 30000.00 |      65270.00 |
+----------+----------+---------------+
15 rows in set (0.0039 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,deptno,sal,sal-avg(sal) over (partition by deptno) as diff_from_dept_avg from emp;
+----------+--------+----------+--------------------+
| ename    | deptno | sal      | diff_from_dept_avg |
+----------+--------+----------+--------------------+
| sharanya |   NULL |     NULL |               NULL |
| ganesh   |   NULL |     NULL |               NULL |
| abcd     |   NULL |  2000.00 |           0.000000 |
| raju     |     10 |  2500.00 |       -8766.666667 |
| KING     |     10 | 30000.00 |       18733.333333 |
| MILLER   |     10 |  1300.00 |       -9966.666667 |
| JONES    |     20 |  3475.00 |         831.250000 |
| SCOTT    |     20 |  3000.00 |         356.250000 |
| ADAMS    |     20 |  1100.00 |       -1543.750000 |
| FORD     |     20 |  3000.00 |         356.250000 |
| WARD     |     30 | 12345.00 |        8566.000000 |
| MARTIN   |     30 |  1250.00 |       -2529.000000 |
| BLAKE    |     30 |  2850.00 |        -929.000000 |
| TURNER   |     30 |  1500.00 |       -2279.000000 |
| JAMES    |     30 |   950.00 |       -2829.000000 |
+----------+--------+----------+--------------------+
15 rows in set (0.0027 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,deptno,sal,min(sal) over (partition by deptno) as dept_min_salary,max(sal) over (partition by deptno) as dept_max_salary from emp;
+----------+--------+----------+-----------------+-----------------+
| ename    | deptno | sal      | dept_min_salary | dept_max_salary |
+----------+--------+----------+-----------------+-----------------+
| sharanya |   NULL |     NULL |         2000.00 |         2000.00 |
| ganesh   |   NULL |     NULL |         2000.00 |         2000.00 |
| abcd     |   NULL |  2000.00 |         2000.00 |         2000.00 |
| raju     |     10 |  2500.00 |         1300.00 |        30000.00 |
| KING     |     10 | 30000.00 |         1300.00 |        30000.00 |
| MILLER   |     10 |  1300.00 |         1300.00 |        30000.00 |
| JONES    |     20 |  3475.00 |         1100.00 |         3475.00 |
| SCOTT    |     20 |  3000.00 |         1100.00 |         3475.00 |
| ADAMS    |     20 |  1100.00 |         1100.00 |         3475.00 |
| FORD     |     20 |  3000.00 |         1100.00 |         3475.00 |
| WARD     |     30 | 12345.00 |          950.00 |        12345.00 |
| MARTIN   |     30 |  1250.00 |          950.00 |        12345.00 |
| BLAKE    |     30 |  2850.00 |          950.00 |        12345.00 |
| TURNER   |     30 |  1500.00 |          950.00 |        12345.00 |
| JAMES    |     30 |   950.00 |          950.00 |        12345.00 |
+----------+--------+----------+-----------------+-----------------+
15 rows in set (0.0044 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,hiredate,sal,row_number() over (order by hiredate asc) as hire_rank from emp;
+----------+------------+----------+-----------+
| ename    | hiredate   | sal      | hire_rank |
+----------+------------+----------+-----------+
| sharanya | NULL       |     NULL |         1 |
| ganesh   | NULL       |     NULL |         2 |
| WARD     | 1981-02-22 | 12345.00 |         3 |
| JONES    | 1981-04-02 |  3475.00 |         4 |
| BLAKE    | 1981-05-01 |  2850.00 |         5 |
| raju     | 1981-06-09 |  2500.00 |         6 |
| TURNER   | 1981-09-08 |  1500.00 |         7 |
| MARTIN   | 1981-09-28 |  1250.00 |         8 |
| KING     | 1981-11-17 | 30000.00 |         9 |
| JAMES    | 1981-12-03 |   950.00 |        10 |
| FORD     | 1981-12-03 |  3000.00 |        11 |
| abcd     | 1982-01-22 |  2000.00 |        12 |
| MILLER   | 1982-01-23 |  1300.00 |        13 |
| SCOTT    | 1982-12-09 |  3000.00 |        14 |
| ADAMS    | 1983-01-12 |  1100.00 |        15 |
+----------+------------+----------+-----------+
15 rows in set (0.0069 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal from(select ename,sal,row_number() over (order by sal desc) as rnk from emp)as t where rnk=2;
+-------+----------+
| ename | sal      |
+-------+----------+
| WARD  | 12345.00 |
+-------+----------+
1 row in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,deptno,sal,percent_rank() over (partition by deptno order by sal) as pct_rank from emp;
+----------+--------+----------+--------------------+
| ename    | deptno | sal      | pct_rank           |
+----------+--------+----------+--------------------+
| sharanya |   NULL |     NULL |                  0 |
| ganesh   |   NULL |     NULL |                  0 |
| abcd     |   NULL |  2000.00 |                  1 |
| MILLER   |     10 |  1300.00 |                  0 |
| raju     |     10 |  2500.00 |                0.5 |
| KING     |     10 | 30000.00 |                  1 |
| ADAMS    |     20 |  1100.00 |                  0 |
| SCOTT    |     20 |  3000.00 | 0.3333333333333333 |
| FORD     |     20 |  3000.00 | 0.3333333333333333 |
| JONES    |     20 |  3475.00 |                  1 |
| JAMES    |     30 |   950.00 |                  0 |
| MARTIN   |     30 |  1250.00 |               0.25 |
| TURNER   |     30 |  1500.00 |                0.5 |
| BLAKE    |     30 |  2850.00 |               0.75 |
| WARD     |     30 | 12345.00 |                  1 |
+----------+--------+----------+--------------------+
15 rows in set (0.0021 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL >