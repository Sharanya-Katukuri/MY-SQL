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
Your MySQL connection id is 10 (X protocol)
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
15 rows in set (0.0117 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal from emp where sal>(select avg(sal) from emp);
+-------+----------+
| ename | sal      |
+-------+----------+
| WARD  | 12345.00 |
| KING  | 30000.00 |
+-------+----------+
2 rows in set (0.0074 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,deptno from emp where deptno=(select deptno from emp where ename='smith');
Empty set (0.0016 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,deptno from emp where deptno=(select deptno from emp where ename='ford');
+-------+--------+
| ename | deptno |
+-------+--------+
| JONES |     20 |
| SCOTT |     20 |
| ADAMS |     20 |
| FORD  |     20 |
+-------+--------+
4 rows in set (0.0008 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal from emp where sal>all(select sal from emp where deptno=30);
+-------+----------+
| ename | sal      |
+-------+----------+
| KING  | 30000.00 |
+-------+----------+
1 row in set (0.0020 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal from emp where sal=(select max(sal) from emp);
+-------+----------+
| ename | sal      |
+-------+----------+
| KING  | 30000.00 |
+-------+----------+
1 row in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select deptno,dname from dept where deptno not in (select distinct deptno from emp);
Empty set (0.0079 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,deptno,sal from emp e where sal>(select avg(sal) from emp where deptno=e.deptno);
+-------+--------+----------+
| ename | deptno | sal      |
+-------+--------+----------+
| WARD  |     30 | 12345.00 |
| JONES |     20 |  3475.00 |
| SCOTT |     20 |  3000.00 |
| KING  |     10 | 30000.00 |
| FORD  |     20 |  3000.00 |
+-------+--------+----------+
5 rows in set (0.0021 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,hiredate from emp where hiredate <(select min(hiredate) from emp where deptno=20);
+-------+------------+
| ename | hiredate   |
+-------+------------+
| WARD  | 1981-02-22 |
+-------+------------+
1 row in set (0.0050 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,job from emp where job in (select distinct job from emp where deptno=10);
+--------+-----------+
| ename  | job       |
+--------+-----------+
| JONES  | MANAGER   |
| BLAKE  | MANAGER   |
| raju   | MANAGER   |
| KING   | PRESIDENT |
| ADAMS  | CLERK     |
| JAMES  | CLERK     |
| MILLER | CLERK     |
| abcd   | clerk     |
+--------+-----------+
8 rows in set (0.0046 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal from emp where sal >(select sal from emp where ename='allen');
Empty set (0.0013 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal from emp where sal >(select sal from emp where ename='miller');
+--------+----------+
| ename  | sal      |
+--------+----------+
| WARD   | 12345.00 |
| JONES  |  3475.00 |
| BLAKE  |  2850.00 |
| raju   |  2500.00 |
| SCOTT  |  3000.00 |
| KING   | 30000.00 |
| TURNER |  1500.00 |
| FORD   |  3000.00 |
| abcd   |  2000.00 |
+--------+----------+
9 rows in set (0.0019 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal from emp where sal=(select max(sal) from emp where sal<(select max(sal) from emp));
+-------+----------+
| ename | sal      |
+-------+----------+
| WARD  | 12345.00 |
+-------+----------+
1 row in set (0.0024 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select deptno from emp group by deptno having avg(sal)>(select avg(sal) from emp);
+--------+
| deptno |
+--------+
|     10 |
+--------+
1 row in set (0.0016 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.sal,e.mgr,m.ename as manager_name,m.sal as manager_sal from emp e join emp m on e.mgr=m.empno where e.sal>m.sal;
+-------+----------+------+--------------+-------------+
| ename | sal      | mgr  | manager_name | manager_sal |
+-------+----------+------+--------------+-------------+
| WARD  | 12345.00 | 7698 | BLAKE        |     2850.00 |
+-------+----------+------+--------------+-------------+
1 row in set (0.0041 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,hiredate from emp where hiredate >(Select max(hiredate) from emp where deptno=10);
+-------+------------+
| ename | hiredate   |
+-------+------------+
| SCOTT | 1982-12-09 |
| ADAMS | 1983-01-12 |
+-------+------------+
2 rows in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,sal from emp where sal> any(select sal from emp where deptno=20);
+--------+----------+
| ename  | sal      |
+--------+----------+
| WARD   | 12345.00 |
| JONES  |  3475.00 |
| MARTIN |  1250.00 |
| BLAKE  |  2850.00 |
| raju   |  2500.00 |
| SCOTT  |  3000.00 |
| KING   | 30000.00 |
| TURNER |  1500.00 |
| FORD   |  3000.00 |
| MILLER |  1300.00 |
| abcd   |  2000.00 |
+--------+----------+
11 rows in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,job,deptno from emp where job=(select job from emp where ename='ford') and deptno <> (select deptno from emp where ename='ford');
Empty set (0.0032 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select ename,job,deptno from emp where job=(select job from emp where ename='miller') and deptno <> (select deptno from emp where ename='miller');
+-------+-------+--------+
| ename | job   | deptno |
+-------+-------+--------+
| ADAMS | CLERK |     20 |
| JAMES | CLERK |     30 |
+-------+-------+--------+
2 rows in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL >