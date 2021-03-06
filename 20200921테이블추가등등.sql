PRIMARY KEY : PK_테이블명
PRIMARY KEY : FK_소스테이블명_참조테이블명

제약조건 삭제 
ALTER TABLE 테이블명 DROP CONSTRAINT 제약조건명;

1. 부서 테이블에 PRIMARY KEY 제약조건 추가
2. 사원 테이블에 PRIMARY KEY 제약조건 추가
3. 사원 테이블-부서테이블간 FOREIGN KEY 제약조건 추가

제약조건 삭제시는 데이터입력과 반대로 자식부터 먼저 삭제
3 - (1,2)
ALTER TABLE 테이블명 DROP CONSTRAINT 제약조건명;
ALTER TABLE emp_test DROP CONSTRAINT FK_emp_test_dept_test;
ALTER TABLE dept_Test DROP CONSTRAINT PK_dept_test;
ALTER TABLE emp_test DROP CONSTRAINT PK_emp_test;

SELECT *
FROM user_constraints
WHERE table_name IN ('EMP_TEST', 'DEPT_TEST')

ALTER TABLE 테이블명 ADD CONSTRAINT 제약조건명 제약조건 타입;
제약조건 생성
ALTER TABLE dept_test ADD CONSTRAINT PK_dept_test PRIMARY KEY (deptno);
ALTER TABLE emp_test ADD CONSTRAINT pk_emp_test PRIMARY KEY (empno);
ALTER TABLE emp_test ADD CONSTRAINT fk_emp_test_detp_test FOREIGN KEY (deptno) REFERENCES dept_test (deptno); 
  
제약조건 활성화-비활성화 테스트
테스트 데이터 준비 : 부모 - 자식 관계가 있는 테이블에서는 부모 테이블에 데이터를 먼저 입력
dept_test ==> emp_test
INSERT INTO dept_test VALUES (10, 'ddit', 'deajeon');

INSERT INTO emp_test VALUES (9999, 'brown', 10);

20번 부서는 dept_test 테이블에 존재하지 않는 데이터이기 때문에 PK에 의해 입력불가
INSERT INTO emp_test VALUES (9979, 'sally', 20);

FK를 비활성화 한후 다시 입력
SELECT *
FROM user_constraints
WHERE table_name IN ('EMP_TEST', 'DEPT_TEST')
ALTER TABLE emp_test DISABLE CONSTRAINT FK_emp_test_dept_test;
COMMIT;

dept_test : 10
emp_test : 9999(99) 10, 9999,(98) 20

FK 제약조건 재 활성화
ALTER TABLE emp_test ENABLE CONSTRAINT FK_emp_test_dept_test;


user_tables, user_constrints, user_tab_comments 

테이블, 컬럼 주석(COMMENTS) 생성가능

테이블 주석 정보확인
SELECT *
FROM user_col_comments
WHERE TABLE_NAME = 'EMP';

컬럼 주석 다는 문법
COMMENT ON COLUMN 테이블명. 컬럼명 IS '주석';

테이블 주석 작성 방법
COMMENT ON TABLE 테이블명 IS '주석';

COMMENT ON TABLE emp IS '사원'; 

COMMENT ON COLUMN emp.EMPNO IS '사번';
COMMENT ON COLUMN emp.ENAME IS '사원이름';
COMMENT ON COLUMN emp.JOB IS '직업';
COMMENT ON COLUMN emp.MGR IS '매니저번호';
COMMENT ON COLUMN emp.HIREDATE IS '입사일자';
COMMENT ON COLUMN emp.SAL IS '월급';
COMMENT ON COLUMN emp.COMM IS '성과금';
COMMENT ON COLUMN emp.DEPTNO IS '부서번호';

comment1]
SELECT *
FROM user_tab_comments a, user_col_comments b
WHERE a.table_name = b.table_name
  AND A.table_name IN ('CYCLE','CUSTOMER', 'PRODUCT', 'DAILY')

SELECT *
FROM user_constraints
WHERE table_name IN ('EMP','DEPT')

select *
from dept;

delete dept
where dname = 'ddit'

ALTER TABLE emp DISABLE CONSTRAINT pk_emp(empno)


ALTER TABLE emp ADD CONSTRAINT PK_emp PRIMARY KEY (empno); --o
ALTER TABLE emp ADD CONSTRAINT FK_emp FOREIGN KEY (empno) REFERENCES emp (empno);
ALTER TABLE dept ADD CONSTRAINT PK_dept PRIMARY KEY (deptno); --o
ALTER TABLE dept ADD CONSTRAINT FK_dept FOREIGN KEY (deptno) REFERENCES dept (deptno);

-------------------------------------
VIEW : VIEW는 쿼리이다. 물리적인 데이터를 갖고있지않고, 논리적인 데이터 정의 집합이다(SELECT 쿼리)
       VIEW가 사용하고 있는 테이블의 데이터가 바뀌면 VIEW 조회 결과도 같이 바뀐다.
문법
CREATE OR REPLACE VIEW 뷰이름 AS
SELECT 쿼리;

EMP테이블에서 sal, comm 컬럼 두개를 제외한 나머지 6개 컬럼으로 v_emp 이름으로 VIEW생성
CREATE OR REPLACE VIEW v_emp AS
SELECT empno, ename, job, mgr, hiredate, deptno
FROM emp;

GRANT CONNECT, RESOURCE TO 계정명;
VIEW에 대한 생성권한은 RESOURCE에 포함되지 않눈다.

emp 테이블에서 10번 부서에 속하는 3명을 지웎기 때문에
아래 view의 조회 결과도 3명이 지워진다 11명만 나온다.
SELECT *
FROM v_emp

롤백하면 다시 14명 조회삽가능 

JACK 계정에 있는 V_EMP 뷰를 HR계정에게 조회 할 수 있도록 권한 부여
SELECT *
FROM jack.v_emp;

GRANT SELECT ON v_emp to HR;










