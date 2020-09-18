
명령의 30 행에서 시작하는 중 오류 발생 -
CREATE TABLE 1 (ranger_nm, reg_dt)
오류 보고 -
ORA-00903: invalid table name
00903. 00000 -  "invalid table name"
*Cause:    
*Action:

명령의 30 행에서 시작하는 중 오류 발생 -
CREATE TABLE  (ranger_no,ranger_nm, reg_dt)
오류 보고 -
ORA-00903: invalid table name
00903. 00000 -  "invalid table name"
*Cause:    
*Action:

명령의 30 행에서 시작하는 중 오류 발생 -
CREATE TABLE  (ranger_no,ranger_nm, reg_dt)
오류 보고 -
ORA-00903: invalid table name
00903. 00000 -  "invalid table name"
*Cause:    
*Action:

명령의 30 행에서 시작하는 중 오류 발생 -
CREATE TABLE ranger (ranger_no,ranger_nm, reg_dt)
오류 보고 -
ORA-02263: need to specify the datatype for this column
02263. 00000 -  "need to specify the datatype for this column"
*Cause:    The required datatype for the column is missing.
*Action:   Specify the required datatype.

명령의 30 행에서 시작하는 중 오류 발생 -
CREATE TABLE ranger (ranger_no = 1,ranger_nm = 'brown', reg_dt = Sysdate)
오류 보고 -
ORA-00902: invalid datatype
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

명령의 30 행에서 시작하는 중 오류 발생 -
CREATE TABLE ranger (ranger_no = 1,ranger_nm = 'brown', reg_dt = TO_DATE)
오류 보고 -
ORA-00902: invalid datatype
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

명령의 30 행에서 시작하는 중 오류 발생 -
CREATE TABLE ranger (ranger_no = 1,ranger_nm = 'brown', reg_dt = TO_DATE 'YYYY.MM.DD')
오류 보고 -
ORA-00902: invalid datatype
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

명령의 30 행에서 시작하는 중 오류 발생 -
CREATE TABLE ranger (ranger_no = 1,ranger_nm = 'brown', reg_dt = 'YYYY,MM,DD')
오류 보고 -
ORA-00902: invalid datatype
00902. 00000 -  "invalid datatype"
*Cause:    
*Action:

명령의 30 행에서 시작하는 중 오류 발생 -
CREATE TABLE ranger (ranger_no NUMBER,ranger_nm VARCHRA2(50), reg_dt DATE)
오류 보고 -
ORA-00907: missing right parenthesis
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

명령의 30 행에서 시작하는 중 오류 발생 -
CREATE TABLE ranger (ranger_no NUMBER, ranger_nm VARCHRA2(50), reg_dt DATE)
오류 보고 -
ORA-00907: missing right parenthesis
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

명령의 30 행에서 시작하는 중 오류 발생 -
CREATE TABLE ranger (ranger_no NUMBER, ranger_nm VARCHRA2(50), reg_dt DATE)
오류 보고 -
ORA-00907: missing right parenthesis
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

명령의 30 행에서 시작하는 중 오류 발생 -
CREATE TABLE ranger (ranger_no NUMBER, ranger_nm VARCHRA2(50), reg_dt DATE)
오류 보고 -
ORA-00907: missing right parenthesis
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

명령의 30 행에서 시작하는 중 오류 발생 -
CREATE TABLE JACK.ranger (ranger_no NUMBER, ranger_nm VARCHRA2(50), reg_dt DATE)
오류 보고 -
ORA-00907: missing right parenthesis
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

명령의 30 행에서 시작하는 중 오류 발생 -
CREATE TABLE ranger (ranger_no NUMBER(1), ranger_nm VARCHRA2(50), reg_dt DATE)
오류 보고 -
ORA-00907: missing right parenthesis
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

명령의 30 행에서 시작하는 중 오류 발생 -
CREATE TABLE ranger (ranger_no NUMBER(1), ranger_nm VARCHRA2(50), reg_dt DATE, start_date date default sysdate)
오류 보고 -
ORA-00907: missing right parenthesis
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

명령의 30 행에서 시작하는 중 오류 발생 -
CREATE TABLE ranger (ranger_no NUMBER, ranger_nm VARCHRA2(50), reg_dt DATE)
오류 보고 -
ORA-00907: missing right parenthesis
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

명령의 30 행에서 시작하는 중 오류 발생 -
CREATE TABLE ranger (ranger_no NUMBER, ranger_nm VARCHRA2(50), reg_dt DATE)
오류 보고 -
ORA-00907: missing right parenthesis
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

명령의 30 행에서 시작하는 중 오류 발생 -
CREATE TABLE ranger (ranger_no NUMBER, ranger_nm VARCHRA(50), reg_dt DATE)
오류 보고 -
ORA-00907: missing right parenthesis
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

Table RANGER이(가) 생성되었습니다.


명령의 32 행에서 시작하는 중 오류 발생 -
INSERT INTO ranger VALUES (1,'brown',sysdate)
SELECT *
FROM ranger
오류 발생 명령행: 33 열: 1
오류 보고 -
SQL 오류: ORA-00933: SQL command not properly ended
00933. 00000 -  "SQL command not properly ended"
*Cause:    
*Action:

1 행 이(가) 삽입되었습니다.


명령의 30 행에서 시작하는 중 오류 발생 -
ranger_no
오류 보고 -
알 수 없는 명령


Table RANGER이(가) 삭제되었습니다.


Table RANGER이(가) 생성되었습니다.


1 행 이(가) 삽입되었습니다.


Table RANGER이(가) 삭제되었습니다.


명령의 1 행에서 시작하는 중 오류 발생 -
DML : DATE MANIPULATE LANGUAGE
오류 보고 -
알 수 없는 명령

SP2-0734: "1. SELECT *****..."(으)로 시작되는 알 수 없는 명령 - 나머지 행은 무시됩니다.

Table DEPT_TEST이(가) 생성되었습니다.


명령의 102 행에서 시작하는 중 오류 발생 -
INSERT INTO dept_test VALUES (NULL, 'ddit', 'daejeon')
오류 보고 -
ORA-01400: cannot insert NULL into ("JACK"."DEPT_TEST"."DEPTNO")


1 행 이(가) 삽입되었습니다.


명령의 113 행에서 시작하는 중 오류 발생 -
INSERT INTO dept_test VALUES (90, 'ddit', 'daejeon')
오류 보고 -
ORA-00001: unique constraint (JACK.SYS_C007089) violated


명령의 119 행에서 시작하는 중 오류 발생 -
INSERT INTO dept VALUES (NULL, 'ddit', 'daejeon')
INSERT INTO dept VALUES (NULL, 'ddit', 'daejeon')
오류 발생 명령행: 120 열: 8
오류 보고 -
SQL 오류: ORA-00933: SQL command not properly ended
00933. 00000 -  "SQL command not properly ended"
*Cause:    
*Action:

1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


명령의 125 행에서 시작하는 중 오류 발생 -
CREATE TABLE dept_test(
             deptno NUMBER(2) PRIMARY KEY,
             danme VARCHAR2(14),
             loc VARCHAR2(13))
오류 보고 -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Table DEPT_TEST이(가) 삭제되었습니다.


Table DEPT_TEST이(가) 생성되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


명령의 133 행에서 시작하는 중 오류 발생 -
INSERT INTO dept_test VALUES (90, 'ddit', 'daejeon')
오류 보고 -
ORA-00001: unique constraint (JACK.PK_DEPT_TEST) violated


Table DEPT_TEST이(가) 삭제되었습니다.


명령의 145 행에서 시작하는 중 오류 발생 -
CREATE TABLE dept_test(
             deptno NUMBER(2),
             danme VARCHAR2(14),
             loc VARCHAR2(13),
             CONSTRAINT PK_dept_test PRIMARY KEY(deptno, dname))
오류 보고 -
ORA-00904: "DNAME": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

명령의 126 행에서 시작하는 중 오류 발생 -
DROP TABLE dept_test
오류 보고 -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table DEPT_TEST이(가) 생성되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


명령의 162 행에서 시작하는 중 오류 발생 -
CREATE TABLE dept_test(
             deptno NUMBER(2) CONSTRAINT PK_dept_test PRIMARY KEY,
             dname VARCHAR2(14)NOT NULL ,
             loc VARCHAR2(13))
오류 보고 -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

명령의 162 행에서 시작하는 중 오류 발생 -
CREATE TABLE dept_test(
             deptno NUMBER(2) CONSTRAINT PK_dept_test PRIMARY KEY,
             dname VARCHAR2(14)NOT NULL ,
             loc VARCHAR2(13)
오류 보고 -
ORA-00907: missing right parenthesis
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

Table DEPT_TEST이(가) 삭제되었습니다.


명령의 162 행에서 시작하는 중 오류 발생 -
CREATE TABLE dept_test(
             deptno NUMBER(2) CONSTRAINT PK_dept_test PRIMARY KEY,
             dname VARCHAR2(14)NOT NULL ,
             loc VARCHAR2(13)
오류 보고 -
ORA-00907: missing right parenthesis
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

Table DEPT_TEST이(가) 생성되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


Table DEPT_TEST이(가) 삭제되었습니다.


명령의 173 행에서 시작하는 중 오류 발생 -
DROP TABLE dept_test
오류 보고 -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 175 행에서 시작하는 중 오류 발생 -
CREATE TABLE dept_test(
             deptno NUMBER(2),
             danme VARCHAR2(14),
             loc VARCHAR2(13)
             CONSTRAINT U_dept_test_dname UNIQUE(dname)
             )
오류 보고 -
ORA-00907: missing right parenthesis
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

명령의 175 행에서 시작하는 중 오류 발생 -
CREATE TABLE dept_test(
             deptno NUMBER(2),
             danme VARCHAR2(14),
             loc VARCHAR2(13),
             CONSTRAINT U_dept_test_dname UNIQUE(dname)
             )
오류 보고 -
ORA-00904: "DNAME": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

Table DEPT_TEST이(가) 생성되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


명령의 182 행에서 시작하는 중 오류 발생 -
INSERT INTO dept_test VALUES (90, 'ddit', 'daejeon')
오류 보고 -
ORA-00001: unique constraint (JACK.U_DEPT_TEST_DNAME) violated


Table DEPT_TEST이(가) 삭제되었습니다.


Table DEPT_TEST이(가) 생성되었습니다.


1 행 이(가) 삽입되었습니다.

이름       널?       유형           
-------- -------- ------------ 
EMPNO    NOT NULL NUMBER(4)    
ENAME             VARCHAR2(10) 
JOB               VARCHAR2(9)  
MGR               NUMBER(4)    
HIREDATE          DATE         
SAL               NUMBER(7,2)  
COMM              NUMBER(7,2)  
DEPTNO            NUMBER(2)    

Table EMP_TEST이(가) 생성되었습니다.


1 행 이(가) 삽입되었습니다.


명령의 214 행에서 시작하는 중 오류 발생 -
 INSERT INTO emp_test VALUES ( 9001, 'sally', 10)
오류 보고 -
ORA-02291: integrity constraint (JACK.SYS_C007096) violated - parent key not found


Table EMP_TEST이(가) 삭제되었습니다.


명령의 218 행에서 시작하는 중 오류 발생 -
CREATE TABLE emp_test (
  empno NUMBER(4),
  ename VARCHAR2(10),
  deptno NUMBER(2) 
  CONSTRAINT FK_emp_test_dept_test FOREIGN KEY(deptno)
  REFERENCES dept_test (deptno)
  )
오류 보고 -
ORA-02253: constraint specification not allowed here
02253. 00000 -  "constraint specification not allowed here"
*Cause:    Constraint specification is not allowed here in the statement.
*Action:   Remove the constraint specification from the statement.

Table EMP_TEST이(가) 생성되었습니다.


1 행 이(가) 삽입되었습니다.


명령의 226 행에서 시작하는 중 오류 발생 -
INSERT INTO emp_test VALUES (9001, 'sally', 10)
오류 보고 -
ORA-02291: integrity constraint (JACK.FK_EMP_TEST_DEPT_TEST) violated - parent key not found


명령의 231 행에서 시작하는 중 오류 발생 -
DELETE dept_test
WHERE deptno = 90
오류 보고 -
ORA-02292: integrity constraint (JACK.FK_EMP_TEST_DEPT_TEST) violated - child record found


명령의 232 행에서 시작하는 중 오류 발생 -
DELETE dept_test
WHERE deptno = 90
오류 보고 -
ORA-02292: integrity constraint (JACK.FK_EMP_TEST_DEPT_TEST) violated - child record found


Table EMP_TEST이(가) 삭제되었습니다.


Table EMP_TEST이(가) 생성되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삭제되었습니다.


Table EMP_TEST이(가) 삭제되었습니다.


Table EMP_TEST이(가) 생성되었습니다.


명령의 271 행에서 시작하는 중 오류 발생 -
INSERT INTO emp_test VALUES (9000, 'brown', 90)
오류 보고 -
ORA-02291: integrity constraint (JACK.FK_EMP_TEST_DEPT_TEST) violated - parent key not found


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삽입되었습니다.


1 행 이(가) 삭제되었습니다.


명령의 285 행에서 시작하는 중 오류 발생 -
CREATE TABLE emp_test(
            empno NUMBER(4),
            enmame VARCHAR2(14),
            sal NUMBER(7) CHECK ( sal > 0 )
            gender VARCHAR2(1) CHECK ( gender IN ('M', 'F'))
            )
오류 보고 -
ORA-00907: missing right parenthesis
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

명령의 285 행에서 시작하는 중 오류 발생 -
CREATE TABLE emp_test(
            empno NUMBER(4),
            enmame VARCHAR2(14),
            sal NUMBER(7) CHECK ( sal > 0 ),
            gender VARCHAR2(1) CHECK ( gender IN ('M', 'F'))
            )
오류 보고 -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Table EMP_TEST이(가) 삭제되었습니다.


Table EMP_TEST이(가) 생성되었습니다.


명령의 291 행에서 시작하는 중 오류 발생 -
INSERT INTO emp_test VALUES (9000, 'brown', -5, 'M')
오류 보고 -
ORA-02290: check constraint (JACK.SYS_C007100) violated


명령의 291 행에서 시작하는 중 오류 발생 -
INSERT INTO emp_test VALUES (9000, 'brown', -5, 'M')
오류 보고 -
ORA-02290: check constraint (JACK.SYS_C007100) violated


명령의 292 행에서 시작하는 중 오류 발생 -
INSERT INTO emp_test VALUES (9000, 'brown', 100, 'T')
오류 보고 -
ORA-02290: check constraint (JACK.SYS_C007101) violated


1 행 이(가) 삽입되었습니다.


Table EMP_TEST이(가) 삭제되었습니다.


명령의 304 행에서 시작하는 중 오류 발생 -
DROP TABLE emp_test
오류 보고 -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table EMP_TEST이(가) 생성되었습니다.


명령의 291 행에서 시작하는 중 오류 발생 -
INSERT INTO emp_test VALUES (9000, 'brown', -5, 'M')
오류 보고 -
ORA-02290: check constraint (JACK.C_SAL) violated


명령의 292 행에서 시작하는 중 오류 발생 -
INSERT INTO emp_test VALUES (9000, 'brown', 100, 'T')
오류 보고 -
ORA-02290: check constraint (JACK.C_GENDER) violated


1 행 이(가) 삽입되었습니다.


Table EMP_TEST이(가) 삭제되었습니다.


명령의 327 행에서 시작하는 중 오류 발생 -
CREATE TABLE emp_test(
            empno NUMBER(4),
            enmame VARCHAR2(14),
            sal NUMBER(7) CHECK ( sal > 0 ),
            gender VARCHAR2(1) CHECK ( gender IN ('M', 'F'))
            CONSTRAINT C_sal CHECK ( sal > 0 ),
            CONSTRAINT C_gender CHECK ( gender IN ('M', 'F')
            )
오류 보고 -
ORA-02438: Column check constraint cannot reference other columns
02438. 00000 -  "Column check constraint cannot reference other columns"
*Cause:    attempted to define a column check constraint that references
           another column.
*Action:   define it as a table check constriant.

명령의 327 행에서 시작하는 중 오류 발생 -
CREATE TABLE emp_test(
            empno NUMBER(4),
            enmame VARCHAR2(14),
            sal NUMBER(7) CHECK ( sal > 0 ),
            gender VARCHAR2(1) CHECK ( gender IN ('M', 'F')
            CONSTRAINT C_sal CHECK ( sal > 0 ),
            CONSTRAINT C_gender CHECK ( gender IN ('M', 'F')
            )
오류 보고 -
ORA-00907: missing right parenthesis
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

명령의 327 행에서 시작하는 중 오류 발생 -
CREATE TABLE emp_test(
            empno NUMBER(4),
            enmame VARCHAR2(14),
            sal NUMBER(7),
            gender VARCHAR2(1),
            CONSTRAINT C_sal CHECK ( sal > 0 ),
            CONSTRAINT C_gender CHECK ( gender IN ('M', 'F')
            )
오류 보고 -
ORA-00907: missing right parenthesis
00907. 00000 -  "missing right parenthesis"
*Cause:    
*Action:

명령의 326 행에서 시작하는 중 오류 발생 -
DROP TABLE emp_test
오류 보고 -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table EMP_TEST이(가) 생성되었습니다.


Table EMP_TEST이(가) 삭제되었습니다.


Table EMP_TEST이(가) 생성되었습니다.

롤백 완료.

Table EMP_TEST이(가) 삭제되었습니다.


Table DEPT_TEST이(가) 삭제되었습니다.


명령의 341 행에서 시작하는 중 오류 발생 -
 INSERT INTO emp_test VALUES (9000, 'brown')
오류 발생 명령행: 341 열: 14
오류 보고 -
SQL 오류: ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table EMP_TEST이(가) 생성되었습니다.


1 행 이(가) 삽입되었습니다.


Table DEPT_TEST이(가) 생성되었습니다.

롤백 완료.

Table DEPT_TEST이(가) 삭제되었습니다.


Table EMP_TEST이(가) 삭제되었습니다.


Table DEPT_TEST이(가) 생성되었습니다.


명령의 364 행에서 시작하는 중 오류 발생 -
CREATE TABLE dept_test (dnom dnm, location) AS
SELECT *
FROM dept
오류 보고 -
ORA-01773: may not specify column datatypes in this CREATE TABLE
01773. 00000 -  "may not specify column datatypes in this CREATE TABLE"
*Cause:    
*Action:

Table DEPT_TEST이(가) 삭제되었습니다.


명령의 364 행에서 시작하는 중 오류 발생 -
CREATE TABLE dept_test (dnom dnm, location) AS
SELECT *
FROM dept
오류 보고 -
ORA-01773: may not specify column datatypes in this CREATE TABLE
01773. 00000 -  "may not specify column datatypes in this CREATE TABLE"
*Cause:    
*Action:

Table DEPT_TEST이(가) 생성되었습니다.


명령의 363 행에서 시작하는 중 오류 발생 -
CREATE TABLE AS emp_2020918 AS
SELECT *
FORM emp
오류 보고 -
ORA-00903: invalid table name
00903. 00000 -  "invalid table name"
*Cause:    
*Action:

명령의 363 행에서 시작하는 중 오류 발생 -
CREATE TABLE AS emp_20200918 AS
SELECT *
FORM emp
오류 보고 -
ORA-00903: invalid table name
00903. 00000 -  "invalid table name"
*Cause:    
*Action:

명령의 367 행에서 시작하는 중 오류 발생 -
CREATE TABLE 테이블명 [(컬럼, 컬럼2)] AS
SELECT 쿼리
오류 보고 -
ORA-00922: missing or invalid option
00922. 00000 -  "missing or invalid option"
*Cause:    
*Action:

명령의 385 행에서 시작하는 중 오류 발생 -
WHERE 1 != 1
오류 보고 -
알 수 없는 명령


명령의 385 행에서 시작하는 중 오류 발생 -
WHERE 1 != 1
오류 보고 -
알 수 없는 명령

SP2-0044: 확인된 명령 목록을 보려면 HELP를 입력하고,
종료하려면 EXIT를 입력하십시오.

Table DEPT_TEST이(가) 삭제되었습니다.


명령의 382 행에서 시작하는 중 오류 발생 -
CREATE TABLE  dept_test AS 
SELECT *
FORM dept
오류 보고 -
ORA-00923: FROM keyword not found where expected
00923. 00000 -  "FROM keyword not found where expected"
*Cause:    
*Action:

명령의 385 행에서 시작하는 중 오류 발생 -
WHERE 1 != 1
오류 보고 -
알 수 없는 명령


명령의 382 행에서 시작하는 중 오류 발생 -
CREATE TABLE  dept_test AS 
SELECT *
FORM dept
오류 보고 -
ORA-00923: FROM keyword not found where expected
00923. 00000 -  "FROM keyword not found where expected"
*Cause:    
*Action:

명령의 382 행에서 시작하는 중 오류 발생 -
CREATE TABLE  dept_test AS 
SELECT *
FORM dept
오류 보고 -
ORA-00923: FROM keyword not found where expected
00923. 00000 -  "FROM keyword not found where expected"
*Cause:    
*Action:

명령의 385 행에서 시작하는 중 오류 발생 -
WHERE 1 != 1
오류 보고 -
알 수 없는 명령


명령의 382 행에서 시작하는 중 오류 발생 -
CREATE TABLE  dept_test AS 
SELECT *
FORM dept
WHERE 1 != 1
오류 보고 -
ORA-00923: FROM keyword not found where expected
00923. 00000 -  "FROM keyword not found where expected"
*Cause:    
*Action:

명령의 382 행에서 시작하는 중 오류 발생 -
CREATE TABLE  dept_test AS 
SELECT *
FORM dept
오류 보고 -
ORA-00923: FROM keyword not found where expected
00923. 00000 -  "FROM keyword not found where expected"
*Cause:    
*Action:

명령의 381 행에서 시작하는 중 오류 발생 -
DROP TABLE dept_test
오류 보고 -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 404 행에서 시작하는 중 오류 발생 -
DROP TABLE emp_test
오류 보고 -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 406 행에서 시작하는 중 오류 발생 -
CREATE TABEL emp_test (
  empno NUMBER(4),
  ename VARCHAR2(14)
  )
오류 보고 -
ORA-00901: invalid CREATE command
00901. 00000 -  "invalid CREATE command"
*Cause:    
*Action:

Table EMP_TEST이(가) 생성되었습니다.


Table EMP_TEST이(가) 변경되었습니다.


명령의 418 행에서 시작하는 중 오류 발생 -
dest emp_test
오류 보고 -
알 수 없는 명령


명령의 418 행에서 시작하는 중 오류 발생 -
dest emp_test
오류 보고 -
알 수 없는 명령

SP2-0044: 확인된 명령 목록을 보려면 HELP를 입력하고,
종료하려면 EXIT를 입력하십시오.

명령의 420 행에서 시작하는 중 오류 발생 -
ALTER TABLE emp_test MODIFY
오류 보고 -
ORA-00904: : invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

Table EMP_TEST이(가) 변경되었습니다.


Table EMP_TEST이(가) 변경되었습니다.


명령의 430 행에서 시작하는 중 오류 발생 -
dest emp_test
오류 보고 -
알 수 없는 명령

이름    널? 유형           
----- -- ------------ 
EMPNO    NUMBER(4)    
ENAME    VARCHAR2(14) 
PHONE    VARCHAR2(30) 

Table EMP_TEST이(가) 변경되었습니다.

이름    널? 유형           
----- -- ------------ 
EMPNO    NUMBER(4)    
ENAME    VARCHAR2(14) 

Table EMP_TEST이(가) 삭제되었습니다.


명령의 442 행에서 시작하는 중 오류 발생 -
DROP TABLE dept_test
오류 보고 -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 442 행에서 시작하는 중 오류 발생 -
DROP TABLE dept_test
오류 보고 -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

명령의 440 행에서 시작하는 중 오류 발생 -
DROP TABLE emp_test
오류 보고 -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table DEPT_TEST이(가) 생성되었습니다.


Table EMP_TEST이(가) 생성되었습니다.


Table DEPT_TEST이(가) 변경되었습니다.


명령의 465 행에서 시작하는 중 오류 발생 -
ALTER TABLE dept_test ADD CONSTRAINT PK_EMP_TEST PRIMARY KEY (empno)
오류 보고 -
ORA-00904: "EMPNO": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

명령의 465 행에서 시작하는 중 오류 발생 -
ALTER TABLE dept_test ADD CONSTRAINT PK_EMP_TEST PRIMARY KEY (empno)
오류 보고 -
ORA-00904: "EMPNO": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

명령의 465 행에서 시작하는 중 오류 발생 -
ALTER TABLE dept_test ADD CONSTRAINT PK_EMP_TEST PRIMARY KEY (empno)
오류 보고 -
ORA-00904: "EMPNO": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

명령의 456 행에서 시작하는 중 오류 발생 -
CREATE TABLE emp_test (
  empno NUMBER(4),
  ename VARCHAR2(10),
  deptno NUMBER(2))
오류 보고 -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

명령의 456 행에서 시작하는 중 오류 발생 -
CREATE TABLE emp_test (
  empno NUMBER(4),
  ename VARCHAR2(10),
  deptno NUMBER(2))
오류 보고 -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

명령의 465 행에서 시작하는 중 오류 발생 -
ALTER TABLE dept_test ADD CONSTRAINT PK_EMP_TEST PRIMARY KEY (empno)
오류 보고 -
ORA-00904: "EMPNO": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

Table EMP_TEST이(가) 변경되었습니다.


Table EMP_TEST이(가) 변경되었습니다.

