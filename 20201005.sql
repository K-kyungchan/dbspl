달력 만들기
1. 행을 인위적으로 만들기
 CONNECT BY LEVEL 
2. 그룹 함수
 여러행을 하나의 행으로 만드는 방법
3. EXPRESSION
 테이블에 존재하지 않지만, 수식, 함수를 이용하여 새로운 컬럼을 만드는 방법
4. 부수적인 것들
   DATE 관련함수
      - 월의 마지막 일자 구하기
      
      
1. 인위적으로 여러 행을 만들기
   계층쿼리 : 행과 행을 연결
             CONNECT BY LEVEL ==> CROSS JOIN
             연결 가능한 모든 행을 연결
             
   조인 : 테이블의 행과, 다른 테이블의 행을 연결 - 컬럼이 확장 
SELECT LEVEL, dummy, LTRIM(SYS_CONNECT_BY_PATH(dummy, '-'), '-')
FROM dual
CONNECT BY LEVEL <= 13;

년월 문자열이 주어졌을 때 해당 월의 일수 구하기
EX : '202010' ==> 31 
     날짜가 있으면 원하는 항목(년, 월, 일, 시, 분, 초) 만 추출 할 수 있다.
     TO_CHAR(날짜, '원하는항목') 
     TO_CHAR(해당날짜의 마지막 날짜 구하는 함수(TO_DATE('202010', '포멧')), '원하는항목')
     TO_DATE('202010','YYYYMM') : 일자를 설정하지 않았기 때문에 1일자 0시 0분 0초
     ==> 마지막 날짜로 변경
     SELECT TO_CHAR(LAST_DAY(TO_DATE('202010', 'YYYYMM')), 'DD')
     FROM dual
 
     SELECT LEVEL, dummy 
     FROM dual
     CONNECT BY LEVEL <= TO_CHAR(LAST_DAY(TO_DATE('202010', 'YYYYMM')), 'DD')
     
     실제 중요한 값 ==> 날짜 (20201001 ~ 20201031)
     DATE + 정수 = DATE에서 정수를 일자로 취급해서 더한 날짜
     
     2020년 10월 1일자를 만들려면
     주어진 값 : '202010'
     
     '202010' || '01' ==> '20200101'
     TO_DATE('202010' || '01', 'YYYYMMDD')
     == 
     TO_DATE('202010' , 'YYYYMMDD')
     
     2020년 10월 1일의 날짜 타입을 구함.
     날짜 + 숫자(LEVEL 1~31) 연산을 통해 2020년 10월의 모든 일자를 구할 수 있다.
     ==> LEVEL은 1부터 시작하므로 2020년 10월 1일의 값을 유지 하기 위해서는
     날짜 + LEVEL -1 
     
     SELECT TO_DATE('202010', 'YYYYMM') + LEVEL -1 day,
            TO_CHAR(TO_DATE('202010', 'YYYYMM') + LEVEL -1, 'D') d,
            TO_CHAR(TO_DATE('202010', 'YYYYMM') + LEVEL -1, 'IW') IW 
     FROM dual
     CONNECT BY LEVEL <= TO_CHAR(LAST_DAY(TO_DATE('202010', 'YYYYMM')), 'DD')  
                
     해당 날짜의 요일에 따라서 새롭게 만든 7개의 컬럼(일~월)에 날짜를 위치 시킨다
     
     SELECT  MIN(DECODE(d, 1, day)) 일, MIN(DECODE(d, 2, day)) 월, MIN(DECODE(d, 3, day)) 화, MIN (DECODE(d, 4, day)) 수, MIN(DECODE(d, 5, day)) 목,
             MIN(DECODE(d, 6, day)) 금, MIN(DECODE(d, 7, day)) 토         
     FROM
    (SELECT TO_DATE('202010', 'YYYYMM') + LEVEL -1 day,
            TO_CHAR(TO_DATE('202010', 'YYYYMM') + LEVEL -1, 'D') d,
            TO_CHAR(TO_DATE('202010', 'YYYYMM') + LEVEL -1, 'IW') iw
     FROM dual
     CONNECT BY LEVEL <= TO_CHAR(LAST_DAY(TO_DATE('202010', 'YYYYMM')), 'DD')  )
     GROUP BY DECODE(d, 1, iw+1, iw)
     ORDER BY DECODE(d, 1, iw+1, iw)
     -----------------------------------------------------
     칠거지악 : en-core -> 부사장 b2en -> 수석컨설트 dibian
     PL/SQL : Procedual Language / SQL
     SQL은 집합적인 언어인데 여기다 절차적 요소를 더함
     절차적 요소 (반복문, 조건 제어-분기처리)
     
     결론 : 절차적으로 잘 못짜면 속도 느리다
     ==> SQL로 한번에 처리할 수 없는지 고민 
     
     절차적인 처리가 필요한 부분은 존재한다 : 인사시스템 급여, 연말정산 
     
     PL/SQL 사용방법 : PL/SQL block을 통해서 실행
     PL/SQL block 구조 : JAVA try catch 와 유사 중첩이 가능 
     
     DECLARE
     선언부(생략가능)
           - PL-SQL 블럭에서 사용할 변수, TYPE(CLASS), CURSOR(SQL정보)등을 선언하는 절
             JAVA랑은 다르게 변수선언을 블록 어디서나 할 수 없음
     BEGIN
     실행부(생략불가)
     로직 -(데이터를 조회해서 변수에감기, 루프, 조건제어)
     
     EXCEPTION
     예외부(생략가능)
     BEGIN 절에서 발생한 예외를 처리하는 부분
     
     END;
     /
     
     PL/SQL 식별자 규칙 : 오라클 객체(table, index...), PL/SQL 변수 
     30글자 넘어가면 안됨(FK시 길어지게 되는 경우가 간혹 있음.
     오라클 객체명은 내부적으로 대문자로 관리
     PL/SQL 연산자 : SQL과 동일
                    프로그래밍 언어의 특성(변수, 반복문, 조건문)
                    대입 연산자 주의(SQL에 존재하지 않음)
                    JAVA : = 
                    PL/SQL : :=
                    
    
    10번 부서의 부서번호, 부서이름을 각 변수에 담아서 consloe에 출력
    부서번호 : v_deptno, 부서이름 : v_dname
    변수 선언 : java 와 순서가 다름 ㅜㅜㅜㅡㅜㅡㅠ
    java : 타입 변수명
    PL/SQL : 변수명 타입
    
    console 출력
    java : system.out...
    PL/SQL : DBMS_OUTPUT.PUT_LINE(...);
    
    ORACLE 결과출력을 위해 출력 기능을 활성화 해야함
    
    SET SERVEROUTPUT ON;
    DECLARE
    v_deptno NUMBER(2);
    v_dname VARCHAR2(14);
    BEGIN
      SELECT deptno, dname INTO v_deptno, v_dname
      FROM dept
      WHERE deptno = 10;
      
      DBMS_OUTPUT.PUT_LINE('v_deptno : ' || v_deptno || ', v_dname : ' || v_dname);
    END;
    /
    
    참조타입 : 변수타입을 테이블의 컬럼 정보를 통해 선언
              변수명 테이블명, 컬럼명%TYPE;
              ==> 특정 테이블 컬럼의 타입을 참조하여 선언.
                  해당 컬럼의 타입이 변경이 되더라도 PL/SQL 코드는 수정을 하지 않아도 됨
                  
    DECLARE
    v_deptno dept.deptno%TYPE;
    v_dname dept.dname%TYPE;
    BEGIN
      SELECT deptno, dname INTO v_deptno, v_dname
      FROM dept
      WHERE deptno = 10;
      DBMS_OUTPUT.PUT_LINE('v_deptno : ' || v_deptno || ', v_dname : ' || v_dname);
    END;
    /              
    
    PL/SQL PROCEDURE : 오라클 DBMS에 저장한 PL/SQL 블럭
                       함수와 다르게 리턴값이 없다
    생성방법 
    CREATE OR REPLACE PROCEDURE 프로시저명 [(입력값....)] IS 
      선언부
    BEGIN
    END;
    /
    
    실행방법
    EXEC 프로시져명;
          
          
   CREATE OR REPLACE PROCEDURE printdept IS
      v_deptno dept.deptno%TYPE;
      v_dname dept.dname%TYPE;
   BEGIN 
     SELECT deptno, dname INTO v_deptno, v_dname
     FROM dept
     WHERE deptno = 10;
       DBMS_OUTPUT.PUT_LINE('v_deptno : ' || v_deptno || ', v_dname : ' || v_dname);
   END;
   /
   
   EXEC printdept;
   
   printdept 프로시져는 begin 절에 10번 부서의 정보를 조회하도록
   hard coding 되이있음
   프로시져가 인자를 받도록 수정
    
    EXEC printdept(20);
    EXEC printdept(30);
    
    
    
    CREATE OR REPLACE PROCEDURE printdept (p_deptno IN dept.deptno%TYPE) IS
      v_deptno dept.deptno%TYPE;
      v_dname dept.dname%TYPE;
   BEGIN 
     SELECT deptno, dname INTO v_deptno, v_dname
     FROM dept
     WHERE deptno = p_deptno;
       DBMS_OUTPUT.PUT_LINE('v_deptno : ' || v_deptno || ', v_dname : ' || v_dname);
   END;
   /
   
   ---실습---
      CREATE OR REPLACE PROCEDURE printemp (p_empno IN emp.empno%TYPE) IS
      v_deptno dept.deptno%TYPE;
      v_empno emp.empno%TYPE;
      v_dname dept.dname%TYPE;
      BEGIN
           SELECT emp.empno, dept.deptno, dept.dname INTO v_empno, v_deptno, v_dname
           FROM emp, dept 
           WHERE emp.empno = p_empno
             AND emp.deptno = dept.deptno;
           DBMS_OUTPUT.PUT_LINE('v_empno : ' || v_empno || ', v_deptno : ' || v_deptno || ', v_dname : ' || v_dname);
      END;
      /
     
   exec printemp(7369);
  ---------- 
     CREATE OR REPLACE PROCEDURE registdept_test (p_deptno IN dept_test.deptno%TYPE, p_dname IN dept_test.dname%TYPE, p_loc IN dept_test.loc%TYPE) IS
     BEGIN
        INSERT INTO DEPT_TEST VALUES(p_deptno,p_dname,p_loc);  
     END;
     /
        
    exec registdept_test(99, 'ddit', 'daejeon');
  
    SELECT *
    FROM dept_test
 -------------------
    CREATE OR REPLACE PROCEDURE UPDATEdept_test (p_deptno IN dept_test.deptno%TYPE, p_dname IN dept_test.dname%TYPE, p_loc IN dept_test.loc%TYPE) IS
    BEGIN
      UPDATE UPDATEdept_test SET p_deptno,p_dname,p_loc 
    END;
    /   
       
       
   exec UPDATEdept_test(99, 'ddit_m', 'daejeon');
 


 