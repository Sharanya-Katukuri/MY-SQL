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
Your MySQL connection id is 95 (X protocol)
Server version: 8.0.43 MySQL Community Server - GPL
No default schema selected; type \use <schema> to set one.
 MySQL  localhost:33060+ ssl  SQL > use charanya
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
15 rows in set (0.0647 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * dept;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'dept' at line 1
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from dept;;
+--------+------------+----------+
| deptno | dname      | loc      |
+--------+------------+----------+
|     10 | ACCOUNTING | NEW YORK |
|     20 | RESEARCH   | DALLAS   |
|     30 | DEVELOPER  | CHICAGO  |
|     40 | OPERATIONS | BOSTON   |
+--------+------------+----------+
4 rows in set (0.0207 sec)
ERROR: 1065: Query was empty
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,d.dname from emp e join dept d on e.deptno=d.deptno;
+--------+------------+
| ename  | dname      |
+--------+------------+
| raju   | ACCOUNTING |
| KING   | ACCOUNTING |
| MILLER | ACCOUNTING |
| JONES  | RESEARCH   |
| SCOTT  | RESEARCH   |
| ADAMS  | RESEARCH   |
| FORD   | RESEARCH   |
| WARD   | DEVELOPER  |
| MARTIN | DEVELOPER  |
| BLAKE  | DEVELOPER  |
| TURNER | DEVELOPER  |
| JAMES  | DEVELOPER  |
+--------+------------+
12 rows in set (0.0024 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.job,d.loc from emp e join dept d on e.deptno=d.deptno;
+--------+-----------+----------+
| ename  | job       | loc      |
+--------+-----------+----------+
| raju   | MANAGER   | NEW YORK |
| KING   | PRESIDENT | NEW YORK |
| MILLER | CLERK     | NEW YORK |
| JONES  | MANAGER   | DALLAS   |
| SCOTT  | ANALYST   | DALLAS   |
| ADAMS  | CLERK     | DALLAS   |
| FORD   | ANALYST   | DALLAS   |
| WARD   | SALESMAN  | CHICAGO  |
| MARTIN | SALESMAN  | CHICAGO  |
| BLAKE  | MANAGER   | CHICAGO  |
| TURNER | SALESMAN  | CHICAGO  |
| JAMES  | CLERK     | CHICAGO  |
+--------+-----------+----------+
12 rows in set (0.0023 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.deptno) from emp e join dept d on e.deptno=d.deptno;
ERROR: 1140: In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'charanya.d.dname'; this is incompatible with sql_mode=only_full_group_by
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.deptno) from emp e join dept d on e.deptno=d.deptno group by deptno;
ERROR: 1052: Column 'deptno' in group statement is ambiguous
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.deptno) from emp e join dept d on e.deptno=d.deptno group by e.deptno;
+------------+-----------------+
| dname      | count(e.deptno) |
+------------+-----------------+
| ACCOUNTING |               3 |
| RESEARCH   |               4 |
| DEVELOPER  |               5 |
+------------+-----------------+
3 rows in set (0.0011 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.empno) from emp e join dept d on e.deptno=d.deptno group by d.dname;
+------------+----------------+
| dname      | count(e.empno) |
+------------+----------------+
| ACCOUNTING |              3 |
| RESEARCH   |              4 |
| DEVELOPER  |              5 |
+------------+----------------+
3 rows in set (0.0026 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.sal,d.dname from emp e join dept d on e.deptno=d.deptno where e.sal>2000;
+-------+----------+------------+
| ename | sal      | dname      |
+-------+----------+------------+
| WARD  | 12345.00 | DEVELOPER  |
| JONES |  3475.00 | RESEARCH   |
| BLAKE |  2850.00 | DEVELOPER  |
| raju  |  2500.00 | ACCOUNTING |
| SCOTT |  3000.00 | RESEARCH   |
| KING  | 30000.00 | ACCOUNTING |
| FORD  |  3000.00 | RESEARCH   |
+-------+----------+------------+
7 rows in set (0.0229 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,avg(e.sal) from emp e join dept d on e.deptno=d.deptno group by d.dname ;
+------------+--------------+
| dname      | avg(e.sal)   |
+------------+--------------+
| ACCOUNTING | 11266.666667 |
| RESEARCH   |  2643.750000 |
| DEVELOPER  |  3779.000000 |
+------------+--------------+
3 rows in set (0.0224 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.job,d.dname,d.loc from emp e join dept d on e.deptno=d.deptno where d.dname='SALES';
Empty set (0.0208 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename as ename,m.ename as mname,d.daname from emp e join emp m on e.mgr=m.empno join dept d on e.deptno=d.deptno;
ERROR: 1054: Unknown column 'd.daname' in 'field list'
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename as ename,m.ename as mname,d.dname from emp e join emp m on e.mgr=m.empno join dept d on e.deptno=d.deptno;
+--------+-------+------------+
| ename  | mname | dname      |
+--------+-------+------------+
| raju   | KING  | ACCOUNTING |
| MILLER | raju  | ACCOUNTING |
| JONES  | KING  | RESEARCH   |
| SCOTT  | JONES | RESEARCH   |
| ADAMS  | SCOTT | RESEARCH   |
| FORD   | JONES | RESEARCH   |
| WARD   | BLAKE | DEVELOPER  |
| MARTIN | BLAKE | DEVELOPER  |
| BLAKE  | KING  | DEVELOPER  |
| TURNER | BLAKE | DEVELOPER  |
| JAMES  | BLAKE | DEVELOPER  |
+--------+-------+------------+
11 rows in set (0.0023 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname ,max(e.sal) from emp e join dept d on e.deptno=d.deptno group by d.dname ;
+------------+------------+
| dname      | max(e.sal) |
+------------+------------+
| ACCOUNTING |   30000.00 |
| RESEARCH   |    3475.00 |
| DEVELOPER  |   12345.00 |
+------------+------------+
3 rows in set (0.0205 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.job,e.sal,d.dname from emp e join dept d on e.deptno=d.deptno where d.loc='DALLAS';
+-------+---------+---------+----------+
| ename | job     | sal     | dname    |
+-------+---------+---------+----------+
| JONES | MANAGER | 3475.00 | RESEARCH |
| SCOTT | ANALYST | 3000.00 | RESEARCH |
| ADAMS | CLERK   | 1100.00 | RESEARCH |
| FORD  | ANALYST | 3000.00 | RESEARCH |
+-------+---------+---------+----------+
4 rows in set (0.0021 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,sum(e.sal) as total_salary from emp e join dept d on e.detno=d.deptno group by d.dname;
ERROR: 1054: Unknown column 'e.detno' in 'on clause'
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,sum(e.sal) as total_salary from emp e join dept d on e.deptno=d.deptno group by d.dname;
+------------+--------------+
| dname      | total_salary |
+------------+--------------+
| ACCOUNTING |     33800.00 |
| RESEARCH   |     10575.00 |
| DEVELOPER  |     18895.00 |
+------------+--------------+
3 rows in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.job,d.dname,d.loc from emp e join dept d on e.deptno=d.deptno where e.comm is not null and e.comm>0;
+--------+----------+-----------+---------+
| ename  | job      | dname     | loc     |
+--------+----------+-----------+---------+
| WARD   | SALESMAN | DEVELOPER | CHICAGO |
| MARTIN | SALESMAN | DEVELOPER | CHICAGO |
+--------+----------+-----------+---------+
2 rows in set (0.0023 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.sal,d.dname,d.loc from emp e join dept d on e.deptno=d.deptno where d.loc='NEW YORK' and e.sal>2000;
+-------+----------+------------+----------+
| ename | sal      | dname      | loc      |
+-------+----------+------------+----------+
| raju  |  2500.00 | ACCOUNTING | NEW YORK |
| KING  | 30000.00 | ACCOUNTING | NEW YORK |
+-------+----------+------------+----------+
2 rows in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.danme,count(e.job) from emp e join dept d on e.deptno=d.deptno group by d.dname having e.job='CLERK';
ERROR: 1054: Unknown column 'd.danme' in 'field list'
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.job) from emp e join dept d on e.deptno=d.deptno group by d.dname having e.job='CLERK';
ERROR: 1054: Unknown column 'e.job' in 'having clause'
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.empno) from emp e join dept d on e.deptno=d.deptno group by d.dname having e.job='CLERK';
ERROR: 1054: Unknown column 'e.job' in 'having clause'
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.empno) from emp e join dept d on e.deptno=d.deptno group by d.dname where e.job='CLERK';
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where e.job='CLERK'' at line 1
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.empno) from emp e join dept d on e.deptno=d.deptno where e.job='CLERK' group by d.dname;
+------------+----------------+
| dname      | count(e.empno) |
+------------+----------------+
| RESEARCH   |              1 |
| DEVELOPER  |              1 |
| ACCOUNTING |              1 |
+------------+----------------+
3 rows in set (0.0203 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,d.dname,e.sal from emp e join dept d on e.deptno=d.deptno where e.sal between (1000 and 3000);
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,d.dname,e.sal from emp e join dept d on e.deptno=d.deptno where e.sal between (1000 and 3000);
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,d.dname,e.sal from emp e join dept d on e.deptno=d.deptno where e.sal between (1000 ,3000);

ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,d.dname,e.sal from emp e join dept d on e.deptno=d.deptno where e.sal between 1000 and 3000;
+--------+------------+---------+
| ename  | dname      | sal     |
+--------+------------+---------+
| MARTIN | DEVELOPER  | 1250.00 |
| BLAKE  | DEVELOPER  | 2850.00 |
| raju   | ACCOUNTING | 2500.00 |
| SCOTT  | RESEARCH   | 3000.00 |
| TURNER | DEVELOPER  | 1500.00 |
| ADAMS  | RESEARCH   | 1100.00 |
| FORD   | RESEARCH   | 3000.00 |
| MILLER | ACCOUNTING | 1300.00 |
+--------+------------+---------+
8 rows in set (0.0221 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL >




