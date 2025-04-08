use b105;
select * from emp;


-- Q-1. Write an SQL query to fetch “ename” from Worker table using the alias name as <EMPLOYEE_NAME>.
select ename EMPLOYEE_NAME from emp;


-- Q-2. Write an SQL query to fetch unique values of deptno from emp table.
select DISTINCT deptno from emp;


-- Q-3. Write an SQL query to show the last 5 record from a table.
select ename from emp where sal = (select max(sal) from emp group by  deptno);


-- Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
select substring(ename,1,3)  as First_Three_Char from emp;


-- Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the ename column ‘ALLEN’ from emp table.
select instr('ALLEN','a') as positionOfA;


-- Q-6. Write an SQL query to print the name of employees having the highest salary in each department.
select ename,sal,deptno from emp where sal in (select max(sal) from emp group by deptno);


-- Q-7. Write an SQL query to print the ename from emp table after removing white spaces from the right side.
select rtrim(ename) as Trimmed_Name from emp;

-- Q-8. Write an SQL query that fetches the unique values of deptno from emp table and prints its length.
SELECT DISTINCT deptno, LENGTH(deptno) AS Dept_Length FROM emp;


-- Q-9. Write an SQL query to fetch nth max salaries from a table.



-- Q-10. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
SELECT REPLACE(ename, 'a', 'A') AS MODIFIED_NAME  FROM emp;


-- Q-11. Write an SQL query to print all Worker details from the Worker table order by ename Ascending and deptno Descending.
SELECT * FROM emp ORDER BY ename ASC, deptno DESC;


-- Q-12. Write an SQL query to fetch the names of workers who earn the highest salary.
SELECT ename FROM emp WHERE sal = (SELECT MAX(sal) FROM emp);


-- Q-13. Write an SQL query to print details of employes excluding ename, “blake" and “allen” from emp table.
SELECT * FROM emp WHERE ename NOT IN ('BLAKE', 'ALLEN');


-- Q-14. Write an SQL query to print details of the employes whose FIRST_NAME ends with ‘n’ and contains six alphabets.
SELECT * FROM emp WHERE ename LIKE '_____n';


-- Q-15. Write a query to validate Email of Employee.



-- Q-16. Write an SQL query to print details of the employes who have joined in sept’1981.
SELECT * FROM emp WHERE MONTH(hiredate) = 9 AND YEAR(hiredate) = 1981;

-- Q-17. Write an SQL query to fetch duplicate records having matching data in some fields of a table.



-- Q-18. How to remove duplicate rows from Employees table.



-- Q-19. Write an SQL query to show only odd rows from a table.



-- Q-20. Write an SQL query to clone a new table from another table.
CREATE TABLE copy_emp AS SELECT * FROM emp;


-- Q-21. Write an SQL query to fetch intersecting records of two tables.
select  * from dept;


-- Q-22. Write an SQL query to show records from one table that another table does not have.
SELECT * FROM emp ORDER BY sal DESC LIMIT 10;


-- Q-23.  Write an SQL query to show the top n (say 10) records of a table.Q-18. Write an SQL query to determine the nth (say n=5) highest salary from a table.
SELECT DISTINCT sal FROM emp ORDER BY sal DESC LIMIT 1 OFFSET 4;


-- Q-24. Write an SQL query to determine the 5th highest salary without using TOP or limit method.


-- Q-25. Write an SQL query to fetch the list of employees with the same salary.
SELECT * FROM emp WHERE sal IN ( SELECT sal FROM emp GROUP BY sal HAVING COUNT(*) > 1 );






















