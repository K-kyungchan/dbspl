별칭은 테이블에도 적용 가능. 단 컬럼이랑 다르게 AS 옵션은 없다.
SELECT ROWNUM, e."
FROM emp  e;

ROWUM : 1부터 읽어야 된다.
    SELECT 절이 ORDER BY 절보다 먼저 실행된다
    ==> ROWNUM을 이용하여 순서를 부여 하려면 정렬 부터 해야한다.
      ==> 인라인뷰 (ORDER BY - ROWNUM을 분리)
//1문제
SELECT ROWNUM RN, empno, ename
FROM emp
WHERE ROWNUM <= 10;

//2문제
SELECT *
FROM (SELECT ROWNUM rn, empno, ename
      FROM emp)
WHERE rn >=11 AND rn <= 20;      

//3문제
SELECT *
FROM (SELECT ROWNUM rn, empno, ename
      FROM emp)
WHERE rn >=11 AND rn <= 20     
ORDER BY empno asc;
//풀이
 SELELCT *
 FROM
     (SELECT ROWNUM rn, empno, ename
       FROM
        (SELECT empno, ename
         FROM emp
         ORDER BY ename ASC))
 WHERE rn > 10 AND rn <= 20;

////////////////////////////////////////////////////////////////////////

오라클의 함수 분류
1. SINGLE ROW FUNCTIOM : 단일 행을 작업의 기준, 결과도 한건 변환
2. MULTI ROW ROW FUNCTION : 여러 행을 작업의 기준, 하나의 행을 결과로 반환

dual테이블
 1.sys 계정에 존재하는 누구나 사용 할 수 있는 테이블
 2. 테이블에는 하나의 컬럼, dummy 존재, 값은 x
 3. 하나의 행만 존재 
         ***** SIGNLE 
         

SELECT empno, ename, LENGTH(ename),('hello')
FROM emp;

SELECT LENGTH('hello')
FROM dual
SQL 칠거지악
1. 좌변을 가공하지 말아라 (테이블 컬럼에 함수를 사용하지 말것
 . 함수 실행 횟수
 . 인덱스 사용관련(추후)
SELECT ename, LOWER(ename)
FROM emp
WHERE LOWER(enama) = 'smith'; - 소문자로 변경
//WHERE enama = UPPER'smith'; - 대문자로 변경 


문자열 관련함수
SELECT CONCAT('hello', ',world') concat,                                     
       SUBSTR('Hello, world', 5) substr2,
       LENGTH('hello, world') length,
       INSTR('hello, world', 'o') intst,
       INSTR('hello, world', 'o', 6) intst2,
       INSTR('hello, world', 'o', INSTR('hello, world', 'o') + 1) instr3,
       LPAD('hello, world', 15, '*') lpad,
       LPAD('Hello, world', 15) lpad2,
       RPAD('hello, world', 15, '*') rpad,
       REPLACE('Hello, world', 'Hello', 'Hell') replace,
       TRIM('Hello, world') trim,
       TRIM('          Hello, world            ') trim2,
       TRIM('H' FROM 'Hello,World') trim3
FROM dual;

숫자 관련함수
ROUND : 반올림 함수 
TRUNC : 버림 함수
==> 몇번째 자리에서 반올림, 버림을 할지?
    두번째 인자가 0, 양수 : ROUND(숫자, 반올림 결과 자리수)
    두번째 인자가 음수 : ROUND(숫자, 반올림 해야되는 위치)
    ROUND(숫자, 반올림 결과 자리수)
MOD : 나머지를 구하는 함수

SELECT ROUND(105.54, 1),
       ROUND(105.55, 1),
       ROUND(105.55, 0),
       ROUND(105.55, -1)
FROM dual;

SELECT TRUNC(105.54, 1),
       TRUNC(105.55, 1),
       TRUNC(105.55, 0),
       TRUNC(105.55, -1)
FROM dual;

MOD 나머지 구하는 함수
피제수 - 나눔을 당하는 수, 제수 - 나누는 수
a / b = c
a : 피제수
b : 제수 

//10을 3으로 나눴을 때 몫을 구하기
SELECT floor(10/ 3)
FROM dual;

SELECT TRUNC(10/ 3)
FROM dual;

//날짜 관련함수
문자열==> 날짜타입 to_date
SYSDATE : 오라클 서버의 현재 날짜, 시간을 돌려주는 특수함수
          함수의 인자가 없다.
          
          SQL
          length('Hello, World')
          SYSDATE ;
          
SELECT SYSDATE
FROM dual;

날짜 타입 +- 정수(일자) : 날짜에서 정수만큼 더한(뺸) 날짜,
하루 = 24h
1일 = 24h
1시간 = 1/24 일 
1분 = 1/24/60 
1초 = 1/24/60/60
emp hiredate +5, -5 

SELECT SYSDATE, SYSDATE +5, SYSDATE-5,
       SYSDATE+1/24, SYSDATE +1/24/60
FROM dual;

===문제===

SELECT SYSDATE LASTDAY, SYSDATE LASTDAY_BEFORE5,SYSDATE NOW, SYSDATE -3 NOW_BEFORE3 
FROM dual;


==풀이==
sql : nsl 포맷에 설정된 문자열 형식을 따르거나
      to_date 함수를 이용하여 명확하게 명시
      to_date(날짜 문자열', '날짜문자열 형식')
      
SELECT  TO_DATE('2019/12/31','YYYY/MM/DD') LASTDAY,
       TO_DATE('2019/12/31','YYYY/MM/DD')-5 "LASTDAY BEOFRE5",
       SYSDATE NOW,
       SYSDATE -3 NOW_BEFORE3
FROM dual;





