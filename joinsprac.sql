
Copyright (c) 2016, 2025, Oracle and/or its affiliates.
Oracle is a registered trademark of Oracle Corporation and/or its affiliates.
Other names may be trademarks of their respective owners.

Type '\help' or '\?' for help; '\quit' to exit.
 MySQL  JS > \sql
Switching to SQL mode... Commands end with ;
 MySQL  SQL > \c root@localhost
Creating a session to 'root@localhost'
Fetching global names for auto-completion... Press ^C to stop.
Your MySQL connection id is 103 (X protocol)
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
15 rows in set (0.0310 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from dept;
+--------+------------+----------+
| deptno | dname      | loc      |
+--------+------------+----------+
|     10 | ACCOUNTING | NEW YORK |
|     20 | RESEARCH   | DALLAS   |
|     30 | DEVELOPER  | CHICAGO  |
|     40 | OPERATIONS | BOSTON   |
+--------+------------+----------+
4 rows in set (0.0024 sec)
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
12 rows in set (0.0020 sec)
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
12 rows in set (0.0043 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.empno) from emp e join dept d on e.deptno=d.deptno group by d.dname;
+------------+----------------+
| dname      | count(e.empno) |
+------------+----------------+
| ACCOUNTING |              3 |
| RESEARCH   |              4 |
| DEVELOPER  |              5 |
+------------+----------------+
3 rows in set (0.1170 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.sal,d.dname from emp e join dept d on e.deptno=d.deptno where e.sal>2500;
+-------+----------+------------+
| ename | sal      | dname      |
+-------+----------+------------+
| WARD  | 12345.00 | DEVELOPER  |
| JONES |  3475.00 | RESEARCH   |
| BLAKE |  2850.00 | DEVELOPER  |
| SCOTT |  3000.00 | RESEARCH   |
| KING  | 30000.00 | ACCOUNTING |
| FORD  |  3000.00 | RESEARCH   |
+-------+----------+------------+
6 rows in set (0.0332 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,avg(e.sal) from emp e join dept d on e.deptno=d.deptno group by d.dname;
+------------+--------------+
| dname      | avg(e.sal)   |
+------------+--------------+
| ACCOUNTING | 11266.666667 |
| RESEARCH   |  2643.750000 |
| DEVELOPER  |  3779.000000 |
+------------+--------------+
3 rows in set (0.0052 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.job,d.dname,d.loc from emp e join dept d on e.deptno=d.deptno where d.dname='SALES';
Empty set (0.0202 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,m.ename,d.dnamefrom emp e join emp m on e.mgr=m.empno join dept d on e.deptno=d.deptno;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'e join emp m on e.mgr=m.empno join dept d on e.deptno=d.deptno' at line 1
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,m.ename,d.dname from emp e join emp m on e.mgr=m.empno join dept d on e.deptno=d.deptno;
+--------+-------+------------+
| ename  | ename | dname      |
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
11 rows in set (0.0925 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,max(e.sal) as highest_salary from emp e join dept d on e.deptno=d.deptno group by d.dname;
+------------+----------------+
| dname      | highest_salary |
+------------+----------------+
| ACCOUNTING |       30000.00 |
| RESEARCH   |        3475.00 |
| DEVELOPER  |       12345.00 |
+------------+----------------+
3 rows in set (0.0065 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select *,d.danme from emp e left join dept d on e.deptno=d.deptno;
ERROR: 1054: Unknown column 'd.danme' in 'field list'
 MySQL  localhost:33060+ ssl  charanya  SQL > select *,d.dname from emp e left join dept d on e.deptno=d.deptno;
+-------+----------+-----------+------+------------+----------+---------+--------+--------+------------+----------+------------+
| empno | ename    | job       | mgr  | hiredate   | sal      | comm    | deptno | deptno | dname      | loc      | dname      |
+-------+----------+-----------+------+------------+----------+---------+--------+--------+------------+----------+------------+
|   124 | sharanya | NULL      | NULL | NULL       |     NULL |    NULL |   NULL |   NULL | NULL       | NULL     | NULL       |
|  1234 | ganesh   | saleman   | 1234 | NULL       |     NULL |    NULL |   NULL |   NULL | NULL       | NULL     | NULL       |
|  7521 | WARD     | SALESMAN  | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |     30 | DEVELOPER  | CHICAGO  | DEVELOPER  |
|  7566 | JONES    | MANAGER   | 7839 | 1981-04-02 |  3475.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   | RESEARCH   |
|  7654 | MARTIN   | SALESMAN  | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |     30 | DEVELOPER  | CHICAGO  | DEVELOPER  |
|  7698 | BLAKE    | MANAGER   | 7839 | 1981-05-01 |  2850.00 |    NULL |     30 |     30 | DEVELOPER  | CHICAGO  | DEVELOPER  |
|  7782 | raju     | MANAGER   | 7839 | 1981-06-09 |  2500.00 |    NULL |     10 |     10 | ACCOUNTING | NEW YORK | ACCOUNTING |
|  7788 | SCOTT    | ANALYST   | 7566 | 1982-12-09 |  3000.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   | RESEARCH   |
|  7839 | KING     | PRESIDENT | NULL | 1981-11-17 | 30000.00 |    NULL |     10 |     10 | ACCOUNTING | NEW YORK | ACCOUNTING |
|  7844 | TURNER   | SALESMAN  | 7698 | 1981-09-08 |  1500.00 |    0.00 |     30 |     30 | DEVELOPER  | CHICAGO  | DEVELOPER  |
|  7876 | ADAMS    | CLERK     | 7788 | 1983-01-12 |  1100.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   | RESEARCH   |
|  7900 | JAMES    | CLERK     | 7698 | 1981-12-03 |   950.00 |    NULL |     30 |     30 | DEVELOPER  | CHICAGO  | DEVELOPER  |
|  7902 | FORD     | ANALYST   | 7566 | 1981-12-03 |  3000.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   | RESEARCH   |
|  7934 | MILLER   | CLERK     | 7782 | 1982-01-23 |  1300.00 |    NULL |     10 |     10 | ACCOUNTING | NEW YORK | ACCOUNTING |
|  7936 | abcd     | clerk     | 7782 | 1982-01-22 |  2000.00 |    NULL |   NULL |   NULL | NULL       | NULL     | NULL       |
+-------+----------+-----------+------+------------+----------+---------+--------+--------+------------+----------+------------+
15 rows in set (0.0311 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from emp e left join dept d on e.deptno=d.deptno;
+-------+----------+-----------+------+------------+----------+---------+--------+--------+------------+----------+
| empno | ename    | job       | mgr  | hiredate   | sal      | comm    | deptno | deptno | dname      | loc      |
+-------+----------+-----------+------+------------+----------+---------+--------+--------+------------+----------+
|   124 | sharanya | NULL      | NULL | NULL       |     NULL |    NULL |   NULL |   NULL | NULL       | NULL     |
|  1234 | ganesh   | saleman   | 1234 | NULL       |     NULL |    NULL |   NULL |   NULL | NULL       | NULL     |
|  7521 | WARD     | SALESMAN  | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |     30 | DEVELOPER  | CHICAGO  |
|  7566 | JONES    | MANAGER   | 7839 | 1981-04-02 |  3475.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7654 | MARTIN   | SALESMAN  | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |     30 | DEVELOPER  | CHICAGO  |
|  7698 | BLAKE    | MANAGER   | 7839 | 1981-05-01 |  2850.00 |    NULL |     30 |     30 | DEVELOPER  | CHICAGO  |
|  7782 | raju     | MANAGER   | 7839 | 1981-06-09 |  2500.00 |    NULL |     10 |     10 | ACCOUNTING | NEW YORK |
|  7788 | SCOTT    | ANALYST   | 7566 | 1982-12-09 |  3000.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7839 | KING     | PRESIDENT | NULL | 1981-11-17 | 30000.00 |    NULL |     10 |     10 | ACCOUNTING | NEW YORK |
|  7844 | TURNER   | SALESMAN  | 7698 | 1981-09-08 |  1500.00 |    0.00 |     30 |     30 | DEVELOPER  | CHICAGO  |
|  7876 | ADAMS    | CLERK     | 7788 | 1983-01-12 |  1100.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7900 | JAMES    | CLERK     | 7698 | 1981-12-03 |   950.00 |    NULL |     30 |     30 | DEVELOPER  | CHICAGO  |
|  7902 | FORD     | ANALYST   | 7566 | 1981-12-03 |  3000.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7934 | MILLER   | CLERK     | 7782 | 1982-01-23 |  1300.00 |    NULL |     10 |     10 | ACCOUNTING | NEW YORK |
|  7936 | abcd     | clerk     | 7782 | 1982-01-22 |  2000.00 |    NULL |   NULL |   NULL | NULL       | NULL     |
+-------+----------+-----------+------+------------+----------+---------+--------+--------+------------+----------+
15 rows in set (0.0203 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.enmae,e.job,d.dname from emp e left join dept d on e.deptno=d.deptno;
ERROR: 1054: Unknown column 'e.enmae' in 'field list'
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.job,d.dname from emp e left join dept d on e.deptno=d.deptno;
+----------+-----------+------------+
| ename    | job       | dname      |
+----------+-----------+------------+
| sharanya | NULL      | NULL       |
| ganesh   | saleman   | NULL       |
| WARD     | SALESMAN  | DEVELOPER  |
| JONES    | MANAGER   | RESEARCH   |
| MARTIN   | SALESMAN  | DEVELOPER  |
| BLAKE    | MANAGER   | DEVELOPER  |
| raju     | MANAGER   | ACCOUNTING |
| SCOTT    | ANALYST   | RESEARCH   |
| KING     | PRESIDENT | ACCOUNTING |
| TURNER   | SALESMAN  | DEVELOPER  |
| ADAMS    | CLERK     | RESEARCH   |
| JAMES    | CLERK     | DEVELOPER  |
| FORD     | ANALYST   | RESEARCH   |
| MILLER   | CLERK     | ACCOUNTING |
| abcd     | clerk     | NULL       |
+----------+-----------+------------+
15 rows in set (0.0204 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,e.ename from dept d left join emp e on d.deptno=e.deptno;
+------------+--------+
| dname      | ename  |
+------------+--------+
| ACCOUNTING | raju   |
| ACCOUNTING | KING   |
| ACCOUNTING | MILLER |
| RESEARCH   | JONES  |
| RESEARCH   | SCOTT  |
| RESEARCH   | ADAMS  |
| RESEARCH   | FORD   |
| DEVELOPER  | WARD   |
| DEVELOPER  | MARTIN |
| DEVELOPER  | BLAKE  |
| DEVELOPER  | TURNER |
| DEVELOPER  | JAMES  |
| OPERATIONS | NULL   |
+------------+--------+
13 rows in set (0.1520 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.sal,d.dname from emp e left join dept d on e.deptno=d.deptno order by e.sal desc;
+----------+----------+------------+
| ename    | sal      | dname      |
+----------+----------+------------+
| KING     | 30000.00 | ACCOUNTING |
| WARD     | 12345.00 | DEVELOPER  |
| JONES    |  3475.00 | RESEARCH   |
| SCOTT    |  3000.00 | RESEARCH   |
| FORD     |  3000.00 | RESEARCH   |
| BLAKE    |  2850.00 | DEVELOPER  |
| raju     |  2500.00 | ACCOUNTING |
| abcd     |  2000.00 | NULL       |
| TURNER   |  1500.00 | DEVELOPER  |
| MILLER   |  1300.00 | ACCOUNTING |
| MARTIN   |  1250.00 | DEVELOPER  |
| ADAMS    |  1100.00 | RESEARCH   |
| JAMES    |   950.00 | DEVELOPER  |
| sharanya |     NULL | NULL       |
| ganesh   |     NULL | NULL       |
+----------+----------+------------+
15 rows in set (0.0239 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from emp e left join dept d on e.deptno=d.deptno;
+-------+----------+-----------+------+------------+----------+---------+--------+--------+------------+----------+
| empno | ename    | job       | mgr  | hiredate   | sal      | comm    | deptno | deptno | dname      | loc      |
+-------+----------+-----------+------+------------+----------+---------+--------+--------+------------+----------+
|   124 | sharanya | NULL      | NULL | NULL       |     NULL |    NULL |   NULL |   NULL | NULL       | NULL     |
|  1234 | ganesh   | saleman   | 1234 | NULL       |     NULL |    NULL |   NULL |   NULL | NULL       | NULL     |
|  7521 | WARD     | SALESMAN  | 7698 | 1981-02-22 | 12345.00 |  500.00 |     30 |     30 | DEVELOPER  | CHICAGO  |
|  7566 | JONES    | MANAGER   | 7839 | 1981-04-02 |  3475.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7654 | MARTIN   | SALESMAN  | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |     30 | DEVELOPER  | CHICAGO  |
|  7698 | BLAKE    | MANAGER   | 7839 | 1981-05-01 |  2850.00 |    NULL |     30 |     30 | DEVELOPER  | CHICAGO  |
|  7782 | raju     | MANAGER   | 7839 | 1981-06-09 |  2500.00 |    NULL |     10 |     10 | ACCOUNTING | NEW YORK |
|  7788 | SCOTT    | ANALYST   | 7566 | 1982-12-09 |  3000.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7839 | KING     | PRESIDENT | NULL | 1981-11-17 | 30000.00 |    NULL |     10 |     10 | ACCOUNTING | NEW YORK |
|  7844 | TURNER   | SALESMAN  | 7698 | 1981-09-08 |  1500.00 |    0.00 |     30 |     30 | DEVELOPER  | CHICAGO  |
|  7876 | ADAMS    | CLERK     | 7788 | 1983-01-12 |  1100.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7900 | JAMES    | CLERK     | 7698 | 1981-12-03 |   950.00 |    NULL |     30 |     30 | DEVELOPER  | CHICAGO  |
|  7902 | FORD     | ANALYST   | 7566 | 1981-12-03 |  3000.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7934 | MILLER   | CLERK     | 7782 | 1982-01-23 |  1300.00 |    NULL |     10 |     10 | ACCOUNTING | NEW YORK |
|  7936 | abcd     | clerk     | 7782 | 1982-01-22 |  2000.00 |    NULL |   NULL |   NULL | NULL       | NULL     |
+-------+----------+-----------+------+------------+----------+---------+--------+--------+------------+----------+
15 rows in set (0.0121 sec)

 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,d.loc from emp e left join dept d on e.deptno=d.deptno;
+----------+----------+
| ename    | loc      |
+----------+----------+
| sharanya | NULL     |
| ganesh   | NULL     |
| WARD     | CHICAGO  |
| JONES    | DALLAS   |
| MARTIN   | CHICAGO  |
| BLAKE    | CHICAGO  |
| raju     | NEW YORK |
| SCOTT    | DALLAS   |
| KING     | NEW YORK |
| TURNER   | CHICAGO  |
| ADAMS    | DALLAS   |
| JAMES    | CHICAGO  |
| FORD     | DALLAS   |
| MILLER   | NEW YORK |
| abcd     | NULL     |
+----------+----------+
15 rows in set (0.0042 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.enmae,d.dname,e.sal from emp e left join dept d on e.deptno=d.deptno where e.sal>2000;
ERROR: 1054: Unknown column 'e.enmae' in 'field list'
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,d.dname,e.sal from emp e left join dept d on e.deptno=d.deptno where e.sal>2000;
+-------+------------+----------+
| ename | dname      | sal      |
+-------+------------+----------+
| WARD  | DEVELOPER  | 12345.00 |
| JONES | RESEARCH   |  3475.00 |
| BLAKE | DEVELOPER  |  2850.00 |
| raju  | ACCOUNTING |  2500.00 |
| SCOTT | RESEARCH   |  3000.00 |
| KING  | ACCOUNTING | 30000.00 |
| FORD  | RESEARCH   |  3000.00 |
+-------+------------+----------+
7 rows in set (0.0264 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.empno) from dept d left join emp e on d.deptno=e.deptno;
ERROR: 1140: In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'charanya.d.dname'; this is incompatible with sql_mode=only_full_group_by
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.empno) from dept d left join emp e on d.deptno=e.deptno gruop by d.dname;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'gruop by d.dname' at line 1
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.empno) from dept d left join emp e on d.deptno=e.deptno group by d.dname;
+------------+----------------+
| dname      | count(e.empno) |
+------------+----------------+
| ACCOUNTING |              3 |
| RESEARCH   |              4 |
| DEVELOPER  |              5 |
| OPERATIONS |              0 |
+------------+----------------+
4 rows in set (0.0168 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,d.dname,d.loc from emp e left join dept d on e.deptno=d.deptno order by d.dname;
+----------+------------+----------+
| ename    | dname      | loc      |
+----------+------------+----------+
| sharanya | NULL       | NULL     |
| ganesh   | NULL       | NULL     |
| abcd     | NULL       | NULL     |
| raju     | ACCOUNTING | NEW YORK |
| KING     | ACCOUNTING | NEW YORK |
| MILLER   | ACCOUNTING | NEW YORK |
| WARD     | DEVELOPER  | CHICAGO  |
| MARTIN   | DEVELOPER  | CHICAGO  |
| BLAKE    | DEVELOPER  | CHICAGO  |
| TURNER   | DEVELOPER  | CHICAGO  |
| JAMES    | DEVELOPER  | CHICAGO  |
| JONES    | RESEARCH   | DALLAS   |
| SCOTT    | RESEARCH   | DALLAS   |
| ADAMS    | RESEARCH   | DALLAS   |
| FORD     | RESEARCH   | DALLAS   |
+----------+------------+----------+
15 rows in set (0.0203 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,e.ename from emp e right join dept d on e.deptno=d.deptno;
+------------+--------+
| dname      | ename  |
+------------+--------+
| ACCOUNTING | raju   |
| ACCOUNTING | KING   |
| ACCOUNTING | MILLER |
| RESEARCH   | JONES  |
| RESEARCH   | SCOTT  |
| RESEARCH   | ADAMS  |
| RESEARCH   | FORD   |
| DEVELOPER  | WARD   |
| DEVELOPER  | MARTIN |
| DEVELOPER  | BLAKE  |
| DEVELOPER  | TURNER |
| DEVELOPER  | JAMES  |
| OPERATIONS | NULL   |
+------------+--------+
13 rows in set (0.0238 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.job,d.dname from emp e right join dept d on e.deptno=d.deptno;
+--------+-----------+------------+
| ename  | job       | dname      |
+--------+-----------+------------+
| raju   | MANAGER   | ACCOUNTING |
| KING   | PRESIDENT | ACCOUNTING |
| MILLER | CLERK     | ACCOUNTING |
| JONES  | MANAGER   | RESEARCH   |
| SCOTT  | ANALYST   | RESEARCH   |
| ADAMS  | CLERK     | RESEARCH   |
| FORD   | ANALYST   | RESEARCH   |
| WARD   | SALESMAN  | DEVELOPER  |
| MARTIN | SALESMAN  | DEVELOPER  |
| BLAKE  | MANAGER   | DEVELOPER  |
| TURNER | SALESMAN  | DEVELOPER  |
| JAMES  | CLERK     | DEVELOPER  |
| NULL   | NULL      | OPERATIONS |
+--------+-----------+------------+
13 rows in set (0.0023 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,e.ename,e.sal from emp e right join dept d on e.deptno=d.deptno;
+------------+--------+----------+
| dname      | ename  | sal      |
+------------+--------+----------+
| ACCOUNTING | raju   |  2500.00 |
| ACCOUNTING | KING   | 30000.00 |
| ACCOUNTING | MILLER |  1300.00 |
| RESEARCH   | JONES  |  3475.00 |
| RESEARCH   | SCOTT  |  3000.00 |
| RESEARCH   | ADAMS  |  1100.00 |
| RESEARCH   | FORD   |  3000.00 |
| DEVELOPER  | WARD   | 12345.00 |
| DEVELOPER  | MARTIN |  1250.00 |
| DEVELOPER  | BLAKE  |  2850.00 |
| DEVELOPER  | TURNER |  1500.00 |
| DEVELOPER  | JAMES  |   950.00 |
| OPERATIONS | NULL   |     NULL |
+------------+--------+----------+
13 rows in set (0.0296 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,e.ename,e.sal from emp e right join dept d on e.deptno=d.deptno order by e.sal desc;
+------------+--------+----------+
| dname      | ename  | sal      |
+------------+--------+----------+
| ACCOUNTING | KING   | 30000.00 |
| DEVELOPER  | WARD   | 12345.00 |
| RESEARCH   | JONES  |  3475.00 |
| RESEARCH   | SCOTT  |  3000.00 |
| RESEARCH   | FORD   |  3000.00 |
| DEVELOPER  | BLAKE  |  2850.00 |
| ACCOUNTING | raju   |  2500.00 |
| DEVELOPER  | TURNER |  1500.00 |
| ACCOUNTING | MILLER |  1300.00 |
| DEVELOPER  | MARTIN |  1250.00 |
| RESEARCH   | ADAMS  |  1100.00 |
| DEVELOPER  | JAMES  |   950.00 |
| OPERATIONS | NULL   |     NULL |
+------------+--------+----------+
13 rows in set (0.0207 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.empno) from emp e right join dept d on e.deptno=d.deptno group by d.dname;
+------------+----------------+
| dname      | count(e.empno) |
+------------+----------------+
| ACCOUNTING |              3 |
| RESEARCH   |              4 |
| DEVELOPER  |              5 |
| OPERATIONS |              0 |
+------------+----------------+
4 rows in set (0.0027 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,d.dname,d.loc from emp e left join dept d on e.deptno=d.deptno union select e.ename,d.dname,d.loc from emp e right join dept d on e.deptno=d.deptno;
+----------+------------+----------+
| ename    | dname      | loc      |
+----------+------------+----------+
| sharanya | NULL       | NULL     |
| ganesh   | NULL       | NULL     |
| WARD     | DEVELOPER  | CHICAGO  |
| JONES    | RESEARCH   | DALLAS   |
| MARTIN   | DEVELOPER  | CHICAGO  |
| BLAKE    | DEVELOPER  | CHICAGO  |
| raju     | ACCOUNTING | NEW YORK |
| SCOTT    | RESEARCH   | DALLAS   |
| KING     | ACCOUNTING | NEW YORK |
| TURNER   | DEVELOPER  | CHICAGO  |
| ADAMS    | RESEARCH   | DALLAS   |
| JAMES    | DEVELOPER  | CHICAGO  |
| FORD     | RESEARCH   | DALLAS   |
| MILLER   | ACCOUNTING | NEW YORK |
| abcd     | NULL       | NULL     |
| NULL     | OPERATIONS | BOSTON   |
+----------+------------+----------+
16 rows in set (0.0844 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.sal,d.dname from emp e left join dept d on e.deptno=d.deptno union select e.ename,d.dname,d.loc from emp e right join dept d on e.deptno=d.deptno;
+----------+------------+------------+
| ename    | sal        | dname      |
+----------+------------+------------+
| sharanya | NULL       | NULL       |
| ganesh   | NULL       | NULL       |
| WARD     | 12345.00   | DEVELOPER  |
| JONES    | 3475.00    | RESEARCH   |
| MARTIN   | 1250.00    | DEVELOPER  |
| BLAKE    | 2850.00    | DEVELOPER  |
| raju     | 2500.00    | ACCOUNTING |
| SCOTT    | 3000.00    | RESEARCH   |
| KING     | 30000.00   | ACCOUNTING |
| TURNER   | 1500.00    | DEVELOPER  |
| ADAMS    | 1100.00    | RESEARCH   |
| JAMES    | 950.00     | DEVELOPER  |
| FORD     | 3000.00    | RESEARCH   |
| MILLER   | 1300.00    | ACCOUNTING |
| abcd     | 2000.00    | NULL       |
| raju     | ACCOUNTING | NEW YORK   |
| KING     | ACCOUNTING | NEW YORK   |
| MILLER   | ACCOUNTING | NEW YORK   |
| JONES    | RESEARCH   | DALLAS     |
| SCOTT    | RESEARCH   | DALLAS     |
| ADAMS    | RESEARCH   | DALLAS     |
| FORD     | RESEARCH   | DALLAS     |
| WARD     | DEVELOPER  | CHICAGO    |
| MARTIN   | DEVELOPER  | CHICAGO    |
| BLAKE    | DEVELOPER  | CHICAGO    |
| TURNER   | DEVELOPER  | CHICAGO    |
| JAMES    | DEVELOPER  | CHICAGO    |
| NULL     | OPERATIONS | BOSTON     |
+----------+------------+------------+
28 rows in set (0.0270 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.sal,d.dname from emp e left join dept d on e.deptno=d.deptno union select e.ename,e.sal,d.dnamefrom emp e right join dept d on e.deptno=d.deptno;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'e right join dept d on e.deptno=d.deptno' at line 1
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.sal,d.dname from emp e left join dept d on e.deptno=d.deptno union select e.ename,e.sal,d.dname from emp e right join dept d on e.deptno=d.deptno;
+----------+----------+------------+
| ename    | sal      | dname      |
+----------+----------+------------+
| sharanya |     NULL | NULL       |
| ganesh   |     NULL | NULL       |
| WARD     | 12345.00 | DEVELOPER  |
| JONES    |  3475.00 | RESEARCH   |
| MARTIN   |  1250.00 | DEVELOPER  |
| BLAKE    |  2850.00 | DEVELOPER  |
| raju     |  2500.00 | ACCOUNTING |
| SCOTT    |  3000.00 | RESEARCH   |
| KING     | 30000.00 | ACCOUNTING |
| TURNER   |  1500.00 | DEVELOPER  |
| ADAMS    |  1100.00 | RESEARCH   |
| JAMES    |   950.00 | DEVELOPER  |
| FORD     |  3000.00 | RESEARCH   |
| MILLER   |  1300.00 | ACCOUNTING |
| abcd     |  2000.00 | NULL       |
| NULL     |     NULL | OPERATIONS |
+----------+----------+------------+
16 rows in set (0.0206 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.job,d.dname,d.loc from emp e left join dept d on e.deptno=d.deptno union select e.ename,e.job,d.dname,d.loc from emp e right join dept d on e.deptno-d.deptno;
+----------+-----------+------------+----------+
| ename    | job       | dname      | loc      |
+----------+-----------+------------+----------+
| sharanya | NULL      | NULL       | NULL     |
| ganesh   | saleman   | NULL       | NULL     |
| WARD     | SALESMAN  | DEVELOPER  | CHICAGO  |
| JONES    | MANAGER   | RESEARCH   | DALLAS   |
| MARTIN   | SALESMAN  | DEVELOPER  | CHICAGO  |
| BLAKE    | MANAGER   | DEVELOPER  | CHICAGO  |
| raju     | MANAGER   | ACCOUNTING | NEW YORK |
| SCOTT    | ANALYST   | RESEARCH   | DALLAS   |
| KING     | PRESIDENT | ACCOUNTING | NEW YORK |
| TURNER   | SALESMAN  | DEVELOPER  | CHICAGO  |
| ADAMS    | CLERK     | RESEARCH   | DALLAS   |
| JAMES    | CLERK     | DEVELOPER  | CHICAGO  |
| FORD     | ANALYST   | RESEARCH   | DALLAS   |
| MILLER   | CLERK     | ACCOUNTING | NEW YORK |
| abcd     | clerk     | NULL       | NULL     |
| FORD     | ANALYST   | ACCOUNTING | NEW YORK |
| JAMES    | CLERK     | ACCOUNTING | NEW YORK |
| ADAMS    | CLERK     | ACCOUNTING | NEW YORK |
| TURNER   | SALESMAN  | ACCOUNTING | NEW YORK |
| SCOTT    | ANALYST   | ACCOUNTING | NEW YORK |
| BLAKE    | MANAGER   | ACCOUNTING | NEW YORK |
| MARTIN   | SALESMAN  | ACCOUNTING | NEW YORK |
| JONES    | MANAGER   | ACCOUNTING | NEW YORK |
| WARD     | SALESMAN  | ACCOUNTING | NEW YORK |
| MILLER   | CLERK     | RESEARCH   | DALLAS   |
| JAMES    | CLERK     | RESEARCH   | DALLAS   |
| TURNER   | SALESMAN  | RESEARCH   | DALLAS   |
| KING     | PRESIDENT | RESEARCH   | DALLAS   |
| raju     | MANAGER   | RESEARCH   | DALLAS   |
| BLAKE    | MANAGER   | RESEARCH   | DALLAS   |
| MARTIN   | SALESMAN  | RESEARCH   | DALLAS   |
| WARD     | SALESMAN  | RESEARCH   | DALLAS   |
| MILLER   | CLERK     | DEVELOPER  | CHICAGO  |
| FORD     | ANALYST   | DEVELOPER  | CHICAGO  |
| ADAMS    | CLERK     | DEVELOPER  | CHICAGO  |
| KING     | PRESIDENT | DEVELOPER  | CHICAGO  |
| SCOTT    | ANALYST   | DEVELOPER  | CHICAGO  |
| raju     | MANAGER   | DEVELOPER  | CHICAGO  |
| JONES    | MANAGER   | DEVELOPER  | CHICAGO  |
| MILLER   | CLERK     | OPERATIONS | BOSTON   |
| FORD     | ANALYST   | OPERATIONS | BOSTON   |
| JAMES    | CLERK     | OPERATIONS | BOSTON   |
| ADAMS    | CLERK     | OPERATIONS | BOSTON   |
| TURNER   | SALESMAN  | OPERATIONS | BOSTON   |
| KING     | PRESIDENT | OPERATIONS | BOSTON   |
| SCOTT    | ANALYST   | OPERATIONS | BOSTON   |
| raju     | MANAGER   | OPERATIONS | BOSTON   |
| BLAKE    | MANAGER   | OPERATIONS | BOSTON   |
| MARTIN   | SALESMAN  | OPERATIONS | BOSTON   |
| JONES    | MANAGER   | OPERATIONS | BOSTON   |
| WARD     | SALESMAN  | OPERATIONS | BOSTON   |
+----------+-----------+------------+----------+
51 rows in set (0.2078 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.job,d.dname,d.loc from emp e left join dept d on e.deptno=d.deptno union select e.ename,e.job,d.dname,d.loc from emp e right join dept d on e.deptno=d.deptno;
+----------+-----------+------------+----------+
| ename    | job       | dname      | loc      |
+----------+-----------+------------+----------+
| sharanya | NULL      | NULL       | NULL     |
| ganesh   | saleman   | NULL       | NULL     |
| WARD     | SALESMAN  | DEVELOPER  | CHICAGO  |
| JONES    | MANAGER   | RESEARCH   | DALLAS   |
| MARTIN   | SALESMAN  | DEVELOPER  | CHICAGO  |
| BLAKE    | MANAGER   | DEVELOPER  | CHICAGO  |
| raju     | MANAGER   | ACCOUNTING | NEW YORK |
| SCOTT    | ANALYST   | RESEARCH   | DALLAS   |
| KING     | PRESIDENT | ACCOUNTING | NEW YORK |
| TURNER   | SALESMAN  | DEVELOPER  | CHICAGO  |
| ADAMS    | CLERK     | RESEARCH   | DALLAS   |
| JAMES    | CLERK     | DEVELOPER  | CHICAGO  |
| FORD     | ANALYST   | RESEARCH   | DALLAS   |
| MILLER   | CLERK     | ACCOUNTING | NEW YORK |
| abcd     | clerk     | NULL       | NULL     |
| NULL     | NULL      | OPERATIONS | BOSTON   |
+----------+-----------+------------+----------+
16 rows in set (0.0074 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,e.ename,e.sal from emp e left join dept d on e.deptno=d.deptno union select d.dname,e.ename,e.sal from emp e right join dept d on e.deptno=d.deptno;
+------------+----------+----------+
| dname      | ename    | sal      |
+------------+----------+----------+
| NULL       | sharanya |     NULL |
| NULL       | ganesh   |     NULL |
| DEVELOPER  | WARD     | 12345.00 |
| RESEARCH   | JONES    |  3475.00 |
| DEVELOPER  | MARTIN   |  1250.00 |
| DEVELOPER  | BLAKE    |  2850.00 |
| ACCOUNTING | raju     |  2500.00 |
| RESEARCH   | SCOTT    |  3000.00 |
| ACCOUNTING | KING     | 30000.00 |
| DEVELOPER  | TURNER   |  1500.00 |
| RESEARCH   | ADAMS    |  1100.00 |
| DEVELOPER  | JAMES    |   950.00 |
| RESEARCH   | FORD     |  3000.00 |
| ACCOUNTING | MILLER   |  1300.00 |
| NULL       | abcd     |  2000.00 |
| OPERATIONS | NULL     |     NULL |
+------------+----------+----------+
16 rows in set (0.0122 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,m.ename from emp e join emp m on e.mgr=m.empno;
+--------+--------+
| ename  | ename  |
+--------+--------+
| ganesh | ganesh |
| WARD   | BLAKE  |
| JONES  | KING   |
| MARTIN | BLAKE  |
| BLAKE  | KING   |
| raju   | KING   |
| SCOTT  | JONES  |
| TURNER | BLAKE  |
| ADAMS  | SCOTT  |
| JAMES  | BLAKE  |
| FORD   | JONES  |
| MILLER | raju   |
| abcd   | raju   |
+--------+--------+
13 rows in set (0.0085 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.enmae,e.job,m.enmae,m.job from emp e join emp m on e.mgr=m.empno;
ERROR: 1054: Unknown column 'e.enmae' in 'field list'
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.job,m.enmae,m.job from emp e join emp m on e.mgr=m.empno;
ERROR: 1054: Unknown column 'm.enmae' in 'field list'
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.job,m.ename,m.job from emp e join emp m on e.mgr=m.empno;
+--------+----------+--------+-----------+
| ename  | job      | ename  | job       |
+--------+----------+--------+-----------+
| ganesh | saleman  | ganesh | saleman   |
| WARD   | SALESMAN | BLAKE  | MANAGER   |
| JONES  | MANAGER  | KING   | PRESIDENT |
| MARTIN | SALESMAN | BLAKE  | MANAGER   |
| BLAKE  | MANAGER  | KING   | PRESIDENT |
| raju   | MANAGER  | KING   | PRESIDENT |
| SCOTT  | ANALYST  | JONES  | MANAGER   |
| TURNER | SALESMAN | BLAKE  | MANAGER   |
| ADAMS  | CLERK    | SCOTT  | ANALYST   |
| JAMES  | CLERK    | BLAKE  | MANAGER   |
| FORD   | ANALYST  | JONES  | MANAGER   |
| MILLER | CLERK    | raju   | MANAGER   |
| abcd   | clerk    | raju   | MANAGER   |
+--------+----------+--------+-----------+
13 rows in set (0.0033 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.deptno,m.enmae,m.deptno from emp e join emp m on e.mgr=m.empno;
ERROR: 1054: Unknown column 'm.enmae' in 'field list'
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.deptno,m.ename,m.deptno from emp e join emp m on e.mgr=m.empno;
+--------+--------+--------+--------+
| ename  | deptno | ename  | deptno |
+--------+--------+--------+--------+
| ganesh |   NULL | ganesh |   NULL |
| WARD   |     30 | BLAKE  |     30 |
| JONES  |     20 | KING   |     10 |
| MARTIN |     30 | BLAKE  |     30 |
| BLAKE  |     30 | KING   |     10 |
| raju   |     10 | KING   |     10 |
| SCOTT  |     20 | JONES  |     20 |
| TURNER |     30 | BLAKE  |     30 |
| ADAMS  |     20 | SCOTT  |     20 |
| JAMES  |     30 | BLAKE  |     30 |
| FORD   |     20 | JONES  |     20 |
| MILLER |     10 | raju   |     10 |
| abcd   |   NULL | raju   |     10 |
+--------+--------+--------+--------+
13 rows in set (0.0019 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,d.dname from emp e cross join dept d on e.deptno=d.deptno;
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
12 rows in set (0.0026 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,d.dname from emp e cross join dept d;
+----------+------------+
| ename    | dname      |
+----------+------------+
| sharanya | OPERATIONS |
| sharanya | DEVELOPER  |
| sharanya | RESEARCH   |
| sharanya | ACCOUNTING |
| ganesh   | OPERATIONS |
| ganesh   | DEVELOPER  |
| ganesh   | RESEARCH   |
| ganesh   | ACCOUNTING |
| WARD     | OPERATIONS |
| WARD     | DEVELOPER  |
| WARD     | RESEARCH   |
| WARD     | ACCOUNTING |
| JONES    | OPERATIONS |
| JONES    | DEVELOPER  |
| JONES    | RESEARCH   |
| JONES    | ACCOUNTING |
| MARTIN   | OPERATIONS |
| MARTIN   | DEVELOPER  |
| MARTIN   | RESEARCH   |
| MARTIN   | ACCOUNTING |
| BLAKE    | OPERATIONS |
| BLAKE    | DEVELOPER  |
| BLAKE    | RESEARCH   |
| BLAKE    | ACCOUNTING |
| raju     | OPERATIONS |
| raju     | DEVELOPER  |
| raju     | RESEARCH   |
| raju     | ACCOUNTING |
| SCOTT    | OPERATIONS |
| SCOTT    | DEVELOPER  |
| SCOTT    | RESEARCH   |
| SCOTT    | ACCOUNTING |
| KING     | OPERATIONS |
| KING     | DEVELOPER  |
| KING     | RESEARCH   |
| KING     | ACCOUNTING |
| TURNER   | OPERATIONS |
| TURNER   | DEVELOPER  |
| TURNER   | RESEARCH   |
| TURNER   | ACCOUNTING |
| ADAMS    | OPERATIONS |
| ADAMS    | DEVELOPER  |
| ADAMS    | RESEARCH   |
| ADAMS    | ACCOUNTING |
| JAMES    | OPERATIONS |
| JAMES    | DEVELOPER  |
| JAMES    | RESEARCH   |
| JAMES    | ACCOUNTING |
| FORD     | OPERATIONS |
| FORD     | DEVELOPER  |
| FORD     | RESEARCH   |
| FORD     | ACCOUNTING |
| MILLER   | OPERATIONS |
| MILLER   | DEVELOPER  |
| MILLER   | RESEARCH   |
| MILLER   | ACCOUNTING |
| abcd     | OPERATIONS |
| abcd     | DEVELOPER  |
| abcd     | RESEARCH   |
| abcd     | ACCOUNTING |
+----------+------------+
60 rows in set (0.0084 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.job from emp e cross join dept d;
+----------+-----------+
| ename    | job       |
+----------+-----------+
| sharanya | NULL      |
| sharanya | NULL      |
| sharanya | NULL      |
| sharanya | NULL      |
| ganesh   | saleman   |
| ganesh   | saleman   |
| ganesh   | saleman   |
| ganesh   | saleman   |
| WARD     | SALESMAN  |
| WARD     | SALESMAN  |
| WARD     | SALESMAN  |
| WARD     | SALESMAN  |
| JONES    | MANAGER   |
| JONES    | MANAGER   |
| JONES    | MANAGER   |
| JONES    | MANAGER   |
| MARTIN   | SALESMAN  |
| MARTIN   | SALESMAN  |
| MARTIN   | SALESMAN  |
| MARTIN   | SALESMAN  |
| BLAKE    | MANAGER   |
| BLAKE    | MANAGER   |
| BLAKE    | MANAGER   |
| BLAKE    | MANAGER   |
| raju     | MANAGER   |
| raju     | MANAGER   |
| raju     | MANAGER   |
| raju     | MANAGER   |
| SCOTT    | ANALYST   |
| SCOTT    | ANALYST   |
| SCOTT    | ANALYST   |
| SCOTT    | ANALYST   |
| KING     | PRESIDENT |
| KING     | PRESIDENT |
| KING     | PRESIDENT |
| KING     | PRESIDENT |
| TURNER   | SALESMAN  |
| TURNER   | SALESMAN  |
| TURNER   | SALESMAN  |
| TURNER   | SALESMAN  |
| ADAMS    | CLERK     |
| ADAMS    | CLERK     |
| ADAMS    | CLERK     |
| ADAMS    | CLERK     |
| JAMES    | CLERK     |
| JAMES    | CLERK     |
| JAMES    | CLERK     |
| JAMES    | CLERK     |
| FORD     | ANALYST   |
| FORD     | ANALYST   |
| FORD     | ANALYST   |
| FORD     | ANALYST   |
| MILLER   | CLERK     |
| MILLER   | CLERK     |
| MILLER   | CLERK     |
| MILLER   | CLERK     |
| abcd     | clerk     |
| abcd     | clerk     |
| abcd     | clerk     |
| abcd     | clerk     |
+----------+-----------+
60 rows in set (0.0044 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e1.job from emp e cross join emp e1;
+----------+-----------+
| ename    | job       |
+----------+-----------+
| abcd     | NULL      |
| MILLER   | NULL      |
| FORD     | NULL      |
| JAMES    | NULL      |
| ADAMS    | NULL      |
| TURNER   | NULL      |
| KING     | NULL      |
| SCOTT    | NULL      |
| raju     | NULL      |
| BLAKE    | NULL      |
| MARTIN   | NULL      |
| JONES    | NULL      |
| WARD     | NULL      |
| ganesh   | NULL      |
| sharanya | NULL      |
| abcd     | saleman   |
| MILLER   | saleman   |
| FORD     | saleman   |
| JAMES    | saleman   |
| ADAMS    | saleman   |
| TURNER   | saleman   |
| KING     | saleman   |
| SCOTT    | saleman   |
| raju     | saleman   |
| BLAKE    | saleman   |
| MARTIN   | saleman   |
| JONES    | saleman   |
| WARD     | saleman   |
| ganesh   | saleman   |
| sharanya | saleman   |
| abcd     | SALESMAN  |
| MILLER   | SALESMAN  |
| FORD     | SALESMAN  |
| JAMES    | SALESMAN  |
| ADAMS    | SALESMAN  |
| TURNER   | SALESMAN  |
| KING     | SALESMAN  |
| SCOTT    | SALESMAN  |
| raju     | SALESMAN  |
| BLAKE    | SALESMAN  |
| MARTIN   | SALESMAN  |
| JONES    | SALESMAN  |
| WARD     | SALESMAN  |
| ganesh   | SALESMAN  |
| sharanya | SALESMAN  |
| abcd     | MANAGER   |
| MILLER   | MANAGER   |
| FORD     | MANAGER   |
| JAMES    | MANAGER   |
| ADAMS    | MANAGER   |
| TURNER   | MANAGER   |
| KING     | MANAGER   |
| SCOTT    | MANAGER   |
| raju     | MANAGER   |
| BLAKE    | MANAGER   |
| MARTIN   | MANAGER   |
| JONES    | MANAGER   |
| WARD     | MANAGER   |
| ganesh   | MANAGER   |
| sharanya | MANAGER   |
| abcd     | SALESMAN  |
| MILLER   | SALESMAN  |
| FORD     | SALESMAN  |
| JAMES    | SALESMAN  |
| ADAMS    | SALESMAN  |
| TURNER   | SALESMAN  |
| KING     | SALESMAN  |
| SCOTT    | SALESMAN  |
| raju     | SALESMAN  |
| BLAKE    | SALESMAN  |
| MARTIN   | SALESMAN  |
| JONES    | SALESMAN  |
| WARD     | SALESMAN  |
| ganesh   | SALESMAN  |
| sharanya | SALESMAN  |
| abcd     | MANAGER   |
| MILLER   | MANAGER   |
| FORD     | MANAGER   |
| JAMES    | MANAGER   |
| ADAMS    | MANAGER   |
| TURNER   | MANAGER   |
| KING     | MANAGER   |
| SCOTT    | MANAGER   |
| raju     | MANAGER   |
| BLAKE    | MANAGER   |
| MARTIN   | MANAGER   |
| JONES    | MANAGER   |
| WARD     | MANAGER   |
| ganesh   | MANAGER   |
| sharanya | MANAGER   |
| abcd     | MANAGER   |
| MILLER   | MANAGER   |
| FORD     | MANAGER   |
| JAMES    | MANAGER   |
| ADAMS    | MANAGER   |
| TURNER   | MANAGER   |
| KING     | MANAGER   |
| SCOTT    | MANAGER   |
| raju     | MANAGER   |
| BLAKE    | MANAGER   |
| MARTIN   | MANAGER   |
| JONES    | MANAGER   |
| WARD     | MANAGER   |
| ganesh   | MANAGER   |
| sharanya | MANAGER   |
| abcd     | ANALYST   |
| MILLER   | ANALYST   |
| FORD     | ANALYST   |
| JAMES    | ANALYST   |
| ADAMS    | ANALYST   |
| TURNER   | ANALYST   |
| KING     | ANALYST   |
| SCOTT    | ANALYST   |
| raju     | ANALYST   |
| BLAKE    | ANALYST   |
| MARTIN   | ANALYST   |
| JONES    | ANALYST   |
| WARD     | ANALYST   |
| ganesh   | ANALYST   |
| sharanya | ANALYST   |
| abcd     | PRESIDENT |
| MILLER   | PRESIDENT |
| FORD     | PRESIDENT |
| JAMES    | PRESIDENT |
| ADAMS    | PRESIDENT |
| TURNER   | PRESIDENT |
| KING     | PRESIDENT |
| SCOTT    | PRESIDENT |
| raju     | PRESIDENT |
| BLAKE    | PRESIDENT |
| MARTIN   | PRESIDENT |
| JONES    | PRESIDENT |
| WARD     | PRESIDENT |
| ganesh   | PRESIDENT |
| sharanya | PRESIDENT |
| abcd     | SALESMAN  |
| MILLER   | SALESMAN  |
| FORD     | SALESMAN  |
| JAMES    | SALESMAN  |
| ADAMS    | SALESMAN  |
| TURNER   | SALESMAN  |
| KING     | SALESMAN  |
| SCOTT    | SALESMAN  |
| raju     | SALESMAN  |
| BLAKE    | SALESMAN  |
| MARTIN   | SALESMAN  |
| JONES    | SALESMAN  |
| WARD     | SALESMAN  |
| ganesh   | SALESMAN  |
| sharanya | SALESMAN  |
| abcd     | CLERK     |
| MILLER   | CLERK     |
| FORD     | CLERK     |
| JAMES    | CLERK     |
| ADAMS    | CLERK     |
| TURNER   | CLERK     |
| KING     | CLERK     |
| SCOTT    | CLERK     |
| raju     | CLERK     |
| BLAKE    | CLERK     |
| MARTIN   | CLERK     |
| JONES    | CLERK     |
| WARD     | CLERK     |
| ganesh   | CLERK     |
| sharanya | CLERK     |
| abcd     | CLERK     |
| MILLER   | CLERK     |
| FORD     | CLERK     |
| JAMES    | CLERK     |
| ADAMS    | CLERK     |
| TURNER   | CLERK     |
| KING     | CLERK     |
| SCOTT    | CLERK     |
| raju     | CLERK     |
| BLAKE    | CLERK     |
| MARTIN   | CLERK     |
| JONES    | CLERK     |
| WARD     | CLERK     |
| ganesh   | CLERK     |
| sharanya | CLERK     |
| abcd     | ANALYST   |
| MILLER   | ANALYST   |
| FORD     | ANALYST   |
| JAMES    | ANALYST   |
| ADAMS    | ANALYST   |
| TURNER   | ANALYST   |
| KING     | ANALYST   |
| SCOTT    | ANALYST   |
| raju     | ANALYST   |
| BLAKE    | ANALYST   |
| MARTIN   | ANALYST   |
| JONES    | ANALYST   |
| WARD     | ANALYST   |
| ganesh   | ANALYST   |
| sharanya | ANALYST   |
| abcd     | CLERK     |
| MILLER   | CLERK     |
| FORD     | CLERK     |
| JAMES    | CLERK     |
| ADAMS    | CLERK     |
| TURNER   | CLERK     |
| KING     | CLERK     |
| SCOTT    | CLERK     |
| raju     | CLERK     |
| BLAKE    | CLERK     |
| MARTIN   | CLERK     |
| JONES    | CLERK     |
| WARD     | CLERK     |
| ganesh   | CLERK     |
| sharanya | CLERK     |
| abcd     | clerk     |
| MILLER   | clerk     |
| FORD     | clerk     |
| JAMES    | clerk     |
| ADAMS    | clerk     |
| TURNER   | clerk     |
| KING     | clerk     |
| SCOTT    | clerk     |
| raju     | clerk     |
| BLAKE    | clerk     |
| MARTIN   | clerk     |
| JONES    | clerk     |
| WARD     | clerk     |
| ganesh   | clerk     |
| sharanya | clerk     |
+----------+-----------+
225 rows in set (0.0097 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,d.loc from emp e cross join dept d;
+----------+----------+
| ename    | loc      |
+----------+----------+
| sharanya | BOSTON   |
| sharanya | CHICAGO  |
| sharanya | DALLAS   |
| sharanya | NEW YORK |
| ganesh   | BOSTON   |
| ganesh   | CHICAGO  |
| ganesh   | DALLAS   |
| ganesh   | NEW YORK |
| WARD     | BOSTON   |
| WARD     | CHICAGO  |
| WARD     | DALLAS   |
| WARD     | NEW YORK |
| JONES    | BOSTON   |
| JONES    | CHICAGO  |
| JONES    | DALLAS   |
| JONES    | NEW YORK |
| MARTIN   | BOSTON   |
| MARTIN   | CHICAGO  |
| MARTIN   | DALLAS   |
| MARTIN   | NEW YORK |
| BLAKE    | BOSTON   |
| BLAKE    | CHICAGO  |
| BLAKE    | DALLAS   |
| BLAKE    | NEW YORK |
| raju     | BOSTON   |
| raju     | CHICAGO  |
| raju     | DALLAS   |
| raju     | NEW YORK |
| SCOTT    | BOSTON   |
| SCOTT    | CHICAGO  |
| SCOTT    | DALLAS   |
| SCOTT    | NEW YORK |
| KING     | BOSTON   |
| KING     | CHICAGO  |
| KING     | DALLAS   |
| KING     | NEW YORK |
| TURNER   | BOSTON   |
| TURNER   | CHICAGO  |
| TURNER   | DALLAS   |
| TURNER   | NEW YORK |
| ADAMS    | BOSTON   |
| ADAMS    | CHICAGO  |
| ADAMS    | DALLAS   |
| ADAMS    | NEW YORK |
| JAMES    | BOSTON   |
| JAMES    | CHICAGO  |
| JAMES    | DALLAS   |
| JAMES    | NEW YORK |
| FORD     | BOSTON   |
| FORD     | CHICAGO  |
| FORD     | DALLAS   |
| FORD     | NEW YORK |
| MILLER   | BOSTON   |
| MILLER   | CHICAGO  |
| MILLER   | DALLAS   |
| MILLER   | NEW YORK |
| abcd     | BOSTON   |
| abcd     | CHICAGO  |
| abcd     | DALLAS   |
| abcd     | NEW YORK |
+----------+----------+
60 rows in set (0.0033 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL >                               