
SELECT * | { column | expression [alias] }
FROM 테이블 이름;  

SELECT *
FROM emp;

SELECT empno, ename
FROM emp;

SELECT *
FROM dept;



실습 SELECT

SELECT *
FROM lprod; 

SELECT buyer_id, buyer_name
FROM buyer; 

SELECT *
FROM cart;

SELECT mem_id, mem_pass, mem_name 
FROM member; 






DESC emp;

//hiredae에서 365일 미래의 일자

SELECT ename hiredate, hiredate+365 after_1year, hiredate-365 before_1year 
FROM emp;

//emp 테이블 에서 null정리 
//emp 테이블 컬럼 정리
1. empno : 사원번호 
2. ename : 사원이름
3. job : 업무
4. MGR : 매니저 사번번호
5. HIREDATE : 입사일자
6. SAL : 급여
7. COMM : 상과금 
8. DEPTNO : 부서번호 



SELECT ename, sal, comm, sal+comm total_sal
FROM emp;

SELECT *
FROM dept;

SELECT userid, usernm, reg_dt, reg_dt + 5 
FROM users; 




SELECT prod_id id , prod_name name
FROM prod;

SELECT lprod_gu gu , lprod_nm nm
FROM lprod;

SELECT buyer_id 바이어아이디 , buyer_name 컬럼별칭
FROM buyer
       
       
      컬럼별칭  expression별칭 
SELECT empno e, 'hello, world' h
FROM emp;

날짜 2020 9월 2일 이라는 날짜값을..
java : primitive type(원시타입) : 8개 - int, long, short, byte, char, boolean, float, double
                                     문자열 ==> string class
                                     날짜 ==> Date class

sql : 나중에 

문자열 연산 

java + ==> 결합 연산
    "hello," + "world" ==> "hello,world"
    "hello," - "world" ==> : 연산자가 정의되어 있지 않다.
sql ||, CONCAT 함수 ==> 결합 연산 
   
    emp테이블의 ename, job 컬럼이 문자열
   
   CONCAT(문자열1, 문자열2) : 문자열1과 문자열2를 합쳐서 결과값을 반환해준다.
   
   SELECT concat(concat(ename,'    '),job)
   FROM emp;

USER_TABLES : 오라클에서 관리하는 테이블(뷰)
              접속한 사용자가 보유하고 있는 테이블 정보를 관리 

SELECT 'select * from ' || table_name || ';' QUERY  
FROM user_tables; 

SELECT table_name "123"
FROM user_tables;


