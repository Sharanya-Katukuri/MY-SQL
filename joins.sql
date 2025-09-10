 select * from emp;
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
15 rows in set (0.0026 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from dept;
+--------+------------+----------+
| deptno | dname      | loc      |
+--------+------------+----------+
|     10 | ACCOUNTING | NEW YORK |
|     20 | RESEARCH   | DALLAS   |
|     30 | DEVELOPER  | CHICAGO  |
|     40 | OPERATIONS | BOSTON   |
+--------+------------+----------+
4 rows in set (0.0206 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.deptno,d.dname,d.deptno from emp e join dept d on e.deptno=d.deptno;
+--------+--------+------------+--------+
| ename  | deptno | dname      | deptno |
+--------+--------+------------+--------+
| raju   |     10 | ACCOUNTING |     10 |
| KING   |     10 | ACCOUNTING |     10 |
| MILLER |     10 | ACCOUNTING |     10 |
| JONES  |     20 | RESEARCH   |     20 |
| SCOTT  |     20 | RESEARCH   |     20 |
| ADAMS  |     20 | RESEARCH   |     20 |
| FORD   |     20 | RESEARCH   |     20 |
| WARD   |     30 | DEVELOPER  |     30 |
| MARTIN |     30 | DEVELOPER  |     30 |
| BLAKE  |     30 | DEVELOPER  |     30 |
| TURNER |     30 | DEVELOPER  |     30 |
| JAMES  |     30 | DEVELOPER  |     30 |
+--------+--------+------------+--------+
12 rows in set (0.0023 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.deptno,d.dname,d.deptno from emp e join dept d on e.deptno=d.deptno where deptno=10;
ERROR: 1052: Column 'deptno' in where clause is ambiguous
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.deptno,d.dname,d.deptno from emp e join dept d on e.deptno=d.deptno where e.deptno=10;
+--------+--------+------------+--------+
| ename  | deptno | dname      | deptno |
+--------+--------+------------+--------+
| raju   |     10 | ACCOUNTING |     10 |
| KING   |     10 | ACCOUNTING |     10 |
| MILLER |     10 | ACCOUNTING |     10 |
+--------+--------+------------+--------+
3 rows in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.deptno,d.dname,d.deptno from emp e join dept d on e.deptno=d.deptno where e.job='salesman';
+--------+--------+-----------+--------+
| ename  | deptno | dname     | deptno |
+--------+--------+-----------+--------+
| WAR^C  |     30 | DEVELOPER |     30 |      select d.dname,count(e.deptno) from
 MySQL  localhost:33060+ ssl  charanya  SQL > ^Clect d.dname,count(e.deptno) from
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.deptno) fro
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.deptno) fr
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.deptno) f
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.deptno)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.empno) from emp e join dept d on e.deptno=d.deptno;
ERROR: 1140: In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'charanya.d.dname'; this is incompatible with sql_mode=only_full_group_by
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,count(e.empno) from emp e join dept d on e.deptno=d.deptno group by d.deptno;
+------------+----------------+
| dname      | count(e.empno) |
+------------+----------------+
| ACCOUNTING |              3 |
| RESEARCH   |              4 |
| DEVELOPER  |              5 |
+------------+----------------+
3 rows in set (0.0238 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,avg(e.sal) from emp e join dept d on e.deptno=d.deptno group by d.dname;
+------------+--------------+
| dname      | avg(e.sal)   |
+------------+--------------+
| ACCOUNTING | 11266.666667 |
| RESEARCH   |  2643.750000 |
| DEVELOPER  |  3779.000000 |
+------------+--------------+
3 rows in set (0.0026 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,d.loc,count(*) from emp e join dept d on e.deptno=d.deptno group by d.dname,d.dloc;
ERROR: 1054: Unknown column 'd.dloc' in 'group statement'
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,d.loc,count(*) from emp e join dept d on e.deptno=d.deptno group by d.dloc;
ERROR: 1054: Unknown column 'd.dloc' in 'group statement'
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,d.loc,count(*) from emp e join dept d on e.deptno=d.deptno group by d.loc;
ERROR: 1055: Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'charanya.d.dname' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
 MySQL  localhost:33060+ ssl  charanya  SQL > select d.dname,d.loc,count(*) from emp e join dept d on e.deptno=d.deptno group by d.loc,d.dname;
+------------+----------+----------+
| dname      | loc      | count(*) |
+------------+----------+----------+
| ACCOUNTING | NEW YORK |        3 |
| RESEARCH   | DALLAS   |        4 |
| DEVELOPER  | CHICAGO  |        5 |
+------------+----------+----------+
3 rows in set (0.0018 sec)
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
15 rows in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from dept;
+--------+------------+----------+
| deptno | dname      | loc      |
+--------+------------+----------+
|     10 | ACCOUNTING | NEW YORK |
|     20 | RESEARCH   | DALLAS   |
|     30 | DEVELOPER  | CHICAGO  |
|     40 | OPERATIONS | BOSTON   |
+--------+------------+----------+
4 rows in set (0.0014 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,d.dname from emp e left join dept d on d.deptno=e.deptno;
+----------+------------+
| ename    | dname      |
+----------+------------+
| sharanya | NULL       |
| ganesh   | NULL       |
| WARD     | DEVELOPER  |
| JONES    | RESEARCH   |
| MARTIN   | DEVELOPER  |
| BLAKE    | DEVELOPER  |
| raju     | ACCOUNTING |
| SCOTT    | RESEARCH   |
| KING     | ACCOUNTING |
| TURNER   | DEVELOPER  |
| ADAMS    | RESEARCH   |
| JAMES    | DEVELOPER  |
| FORD     | RESEARCH   |
| MILLER   | ACCOUNTING |
| abcd     | NULL       |
+----------+------------+
15 rows in set (0.0017 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,d.dname from dept dleft join emp e on d.deptno=e.deptno;
ERROR: 1054: Unknown column 'd.dname' in 'field list'
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
13 rows in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.sal,m.ename,m.sal from emp e self join emp m on e.mgr=m.mgr;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'self join emp m on e.mgr=m.mgr' at line 1
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.sal,m.ename,m.sal from emp e join emp m on e.mgr=m.mgr;
+--------+----------+--------+----------+
| ename  | sal      | ename  | sal      |
+--------+----------+--------+----------+
| ganesh |     NULL | ganesh |     NULL |
| JAMES  |   950.00 | WARD   | 12345.00 |
| TURNER |  1500.00 | WARD   | 12345.00 |
| MARTIN |  1250.00 | WARD   | 12345.00 |
| WARD   | 12345.00 | WARD   | 12345.00 |
| raju   |  2500.00 | JONES  |  3475.00 |
| BLAKE  |  2850.00 | JONES  |  3475.00 |
| JONES  |  3475.00 | JONES  |  3475.00 |
| JAMES  |   950.00 | MARTIN |  1250.00 |
| TURNER |  1500.00 | MARTIN |  1250.00 |
| MARTIN |  1250.00 | MARTIN |  1250.00 |
| WARD   | 12345.00 | MARTIN |  1250.00 |
| raju   |  2500.00 | BLAKE  |  2850.00 |
| BLAKE  |  2850.00 | BLAKE  |  2850.00 |
| JONES  |  3475.00 | BLAKE  |  2850.00 |
| raju   |  2500.00 | raju   |  2500.00 |
| BLAKE  |  2850.00 | raju   |  2500.00 |
| JONES  |  3475.00 | raju   |  2500.00 |
| FORD   |  3000.00 | SCOTT  |  3000.00 |
| SCOTT  |  3000.00 | SCOTT  |  3000.00 |
| JAMES  |   950.00 | TURNER |  1500.00 |
| TURNER |  1500.00 | TURNER |  1500.00 |
| MARTIN |  1250.00 | TURNER |  1500.00 |
| WARD   | 12345.00 | TURNER |  1500.00 |
| ADAMS  |  1100.00 | ADAMS  |  1100.00 |
| JAMES  |   950.00 | JAMES  |   950.00 |
| TURNER |  1500.00 | JAMES  |   950.00 |
| MARTIN |  1250.00 | JAMES  |   950.00 |
| WARD   | 12345.00 | JAMES  |   950.00 |
| FORD   |  3000.00 | FORD   |  3000.00 |
| SCOTT  |  3000.00 | FORD   |  3000.00 |
| abcd   |  2000.00 | MILLER |  1300.00 |
| MILLER |  1300.00 | MILLER |  1300.00 |
| abcd   |  2000.00 | abcd   |  2000.00 |
| MILLER |  1300.00 | abcd   |  2000.00 |
+--------+----------+--------+----------+
35 rows in set (0.0238 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.sal,m.ename,m.sal from emp e join emp m on e.mgr=m.empno;
+--------+----------+--------+----------+
| ename  | sal      | ename  | sal      |
+--------+----------+--------+----------+
| ganesh |     NULL | ganesh |     NULL |
| WARD   | 12345.00 | BLAKE  |  2850.00 |
| JONES  |  3475.00 | KING   | 30000.00 |
| MARTIN |  1250.00 | BLAKE  |  2850.00 |
| BLAKE  |  2850.00 | KING   | 30000.00 |
| raju   |  2500.00 | KING   | 30000.00 |
| SCOTT  |  3000.00 | JONES  |  3475.00 |
| TURNER |  1500.00 | BLAKE  |  2850.00 |
| ADAMS  |  1100.00 | SCOTT  |  3000.00 |
| JAMES  |   950.00 | BLAKE  |  2850.00 |
| FORD   |  3000.00 | JONES  |  3475.00 |
| MILLER |  1300.00 | raju   |  2500.00 |
| abcd   |  2000.00 | raju   |  2500.00 |
+--------+----------+--------+----------+
13 rows in set (0.0023 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.sal,m.ename,m.sal from emp e join emp m on e.mgr=m.empno where e.sal>m.sal;
+-------+----------+-------+---------+
| ename | sal      | ename | sal     |
+-------+----------+-------+---------+
| WARD  | 12345.00 | BLAKE | 2850.00 |
+-------+----------+-------+---------+
1 row in set (0.0210 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,m.ename from emp e join emp m on e.empno=m.mgr;
+--------+--------+
| ename  | ename  |
+--------+--------+
| ganesh | ganesh |
| BLAKE  | WARD   |
| KING   | JONES  |
| BLAKE  | MARTIN |
| KING   | BLAKE  |
| KING   | raju   |
| JONES  | SCOTT  |
| BLAKE  | TURNER |
| SCOTT  | ADAMS  |
| BLAKE  | JAMES  |
| JONES  | FORD   |
| raju   | MILLER |
| raju   | abcd   |
+--------+--------+
13 rows in set (0.0022 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select * from emp where mgr is null;
+-------+----------+-----------+------+------------+----------+------+--------+
| empno | ename    | job       | mgr  | hiredate   | sal      | comm | deptno |
+-------+----------+-----------+------+------------+----------+------+--------+
|   124 | sharanya | NULL      | NULL | NULL       |     NULL | NULL |   NULL |
|  7839 | KING     | PRESIDENT | NULL | 1981-11-17 | 30000.00 | NULL |     10 |
+-------+----------+-----------+------+------------+----------+------+--------+
2 rows in set (0.0231 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.sal,m.ename,m.sal from emp e join emp m on e.mgr=m.empno where e.mgr is null;
Empty set (0.0019 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.sal,m.ename,m.sal from emp e join emp m  where e.mgr is null;
+----------+----------+----------+----------+
| ename    | sal      | ename    | sal      |
+----------+----------+----------+----------+
| KING     | 30000.00 | sharanya |     NULL |
| sharanya |     NULL | sharanya |     NULL |
| KING     | 30000.00 | ganesh   |     NULL |
| sharanya |     NULL | ganesh   |     NULL |
| KING     | 30000.00 | WARD     | 12345.00 |
| sharanya |     NULL | WARD     | 12345.00 |
| KING     | 30000.00 | JONES    |  3475.00 |
| sharanya |     NULL | JONES    |  3475.00 |
| KING     | 30000.00 | MARTIN   |  1250.00 |
| sharanya |     NULL | MARTIN   |  1250.00 |
| KING     | 30000.00 | BLAKE    |  2850.00 |
| sharanya |     NULL | BLAKE    |  2850.00 |
| KING     | 30000.00 | raju     |  2500.00 |
| sharanya |     NULL | raju     |  2500.00 |
| KING     | 30000.00 | SCOTT    |  3000.00 |
| sharanya |     NULL | SCOTT    |  3000.00 |
| KING     | 30000.00 | KING     | 30000.00 |
| sharanya |     NULL | KING     | 30000.00 |
| KING     | 30000.00 | TURNER   |  1500.00 |
| sharanya |     NULL | TURNER   |  1500.00 |
| KING     | 30000.00 | ADAMS    |  1100.00 |
| sharanya |     NULL | ADAMS    |  1100.00 |
| KING     | 30000.00 | JAMES    |   950.00 |
| sharanya |     NULL | JAMES    |   950.00 |
| KING     | 30000.00 | FORD     |  3000.00 |
| sharanya |     NULL | FORD     |  3000.00 |
| KING     | 30000.00 | MILLER   |  1300.00 |
| sharanya |     NULL | MILLER   |  1300.00 |
| KING     | 30000.00 | abcd     |  2000.00 |
| sharanya |     NULL | abcd     |  2000.00 |
+----------+----------+----------+----------+
30 rows in set (0.0106 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,e.sal,m.ename,m.sal from emp e join emp m on e.empno=m.empno where e.mgr is null;
+----------+----------+----------+----------+
| ename    | sal      | ename    | sal      |
+----------+----------+----------+----------+
| sharanya |     NULL | sharanya |     NULL |
| KING     | 30000.00 | KING     | 30000.00 |
+----------+----------+----------+----------+
2 rows in set (0.0018 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename,m.ename from emp e join emp m on e.empno=m.empno where e.mgr is null;
+----------+----------+
| ename    | ename    |
+----------+----------+
| sharanya | sharanya |
| KING     | KING     |
+----------+----------+
2 rows in set (0.0015 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename from emp e join emp m on e.empno=m.empno where e.mgr is null;
+----------+
| ename    |
+----------+
| sharanya |
| KING     |
+----------+
2 rows in set (0.0020 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename ,d.dname from emp e left join dept d on e.deptno=d.deptno union selecte e.ename,d.dname from emp e right join dept d on e.deptno=d.deptno;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'selecte e.ename,d.dname from emp e right join dept d on e.deptno=d.deptno' at line 1
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename ,d.dname from emp e left join dept d on e.deptno=d.deptno union selecte e.ename,d.dname from emp e right join dept d on e.deptno=d.deptno;
ERROR: 1064: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'selecte e.ename,d.dname from emp e right join dept d on e.deptno=d.deptno' at line 1
 MySQL  localhost:33060+ ssl  charanya  SQL > select e.ename ,d.dname from emp e left join dept d on e.deptno=d.deptno union select e.ename,d.dname from emp e right join dept d on e.deptno=d.deptno;
+----------+------------+
| ename    | dname      |
+----------+------------+
| sharanya | NULL       |
| ganesh   | NULL       |
| WARD     | DEVELOPER  |
| JONES    | RESEARCH   |
| MARTIN   | DEVELOPER  |
| BLAKE    | DEVELOPER  |
| raju     | ACCOUNTING |
| SCOTT    | RESEARCH   |
| KING     | ACCOUNTING |
| TURNER   | DEVELOPER  |
| ADAMS    | RESEARCH   |
| JAMES    | DEVELOPER  |
| FORD     | RESEARCH   |
| MILLER   | ACCOUNTING |
| abcd     | NULL       |
| NULL     | OPERATIONS |
+----------+------------+
16 rows in set (0.0264 sec)
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
60 rows in set (0.0027 sec)
 MySQL  localhost:33060+ ssl  charanya  SQL >