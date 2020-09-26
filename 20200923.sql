MULTIPLE INSERT : 조건에 따라 여러 테이블에 데이터를 입력하는 INSERT 

기존에 배운 쿼리는 하나의 테이블에 여러건의 데이터를 입력하는 쿼리

INSERT INTO emp(empno, ename)
SELECT empno, ename
FROM emp;


1.Unconditional insert : 여러 테이블에 insert
2.conditional all insert : 조건을 만족하는 모든 테이블에 insert
3.conditional first insert : 조건을 만족하는 첫 번째 구문에만 insert

1. Unconditional insert : w조건과 관계없이 여러 테이블에 insert
create table emp_test2 as
select empno, ename
from emp
where 1=2;   -- 거짓이니 테이블의 구조만 가져온다

insert all into emp_test
           into emp_test2
select 9999, 'brown' from dual union all
select 9999, 'sally' from dual;

SELECT *
FROM emp_test2

uncondition insert 실행시 테이블 마다 데이터를 입력할 컬럼을 조작하는 것이 가능
위에서 : INSERT INTO emp_test VALUES(....) 테이블의 모든 컬럼에 대해 입력
        INSERT INTO emp_test (empno) VALUES (9999) 특정 컬럼을 지정하여 입력가능 
        
INSERT ALL
  INTO emp_test (empno) VALUES(eno)
  INTO emp_test2 (empno, ename) VALUES (eno, enm)
select 9999 eno, 'brown'enm from dual union all
select 9999, 'sally' from dual;

conditional insert : 조건에 따라 데이터를 입력
CASE 
    WHEN job = 'MANAGER' THEN sal * 1.05
    WHEN job = 'MANAGER' THEN sal * 1.05
END 

INSERT ALL
 WHEN eno >= 9500 THEN 
  INTO emp_test VALUES (eno, enm)
  INTO emp_test2 VALUES (eno, enm)
  WHEN eno >= 9900 THEN
  INTO emp_test2 VALUES (eno, enm)
select 9500 eno, 'brown'enm from dual union all
select 9998, 'sally' from dual;

select *
from emp_test2




