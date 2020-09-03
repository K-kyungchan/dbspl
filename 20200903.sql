

테이블의 구조(컬럼명, 데이터타입) 확인하는 방법
1. DESC 테이블명 : DESCRIBE
2. 컬럼 이름만 알 수 있는 방법(데이터 타입은 유추)
   SELECT*
   FROM 테이블명;
3. 툴에서 제공하는 메뉴 이용
    접속 정보 - 테이블 - 확인하고자하는 테이블 클릭

*******호우호우중요********
SELECT 절: 컬럼을 제한    
WHERE 절 : 조건에 만족하는 행들만 조회되도록 제한 (행을 제한)    
             EX) sal 컬럼의 값이 1500보다 큰 사람들만 조회 ==>7명
WHERE 절에 기술된 조건을 참(True)으로 만족하는 행들만 조회가 된다            
 조건 연산자 
  - 동등 비교(eaual) 
  jave : ina a = 5;
             a == 5;
         primitive type : ==    ex) a==5
         object : "+".equals("-")
  spl : sal = 1500            
  not equals 
      java : !=
      sql : 1=, <> 
    
 대입 연산자
      java :            =
      sql :            :=
      
      users테이블에는 총 5명의 캐릭터가 등록이 되어있는데 
      그중에서 userod 컬럼의 값이 'brown'인 행만 조회도도록
      WHERE절에 조건을 기술
      컬럼과 문자열 상수를 구분하여 사용
      
      SPL은 대소문자를 가르지 않는다 : 키워드, 테이블명, 컬럼명
      데이터는 대소문자를 가린다.
     
      SELECT userid, usernm , alias, reg_dt
      FROM users;
      WHERE alias = '곰';
    
emp테이블에서 부서번호(deptno)가 30보다 크거나 같은 사원들만 조회
컬럼은 모든 컬럼 조회

SELECT *
FROM emp
WHERE deptno >= '30';
      
날짜 비교
문자 리터러 표기법 : '문자열'
숫자 리터럴 표기법 : 숫자
날짜 리터럴 표기법 : 항상 정해진표기법이 아닌 서버 설정마다 다름 '년도/월/일'
                   한국 년 월 일
                   외국 월 일 년 
날짜 리터럴 결론 : 문자열 형태로 표현하는 것이 가능하나 
                 서버 설정마다 다르게 해석할 수 있기 떄문에
                 서버 설정과 관계없이 동일하게 해석할 수 있는 방법으로 사용
                 TO_DATE ('날짜문자열','날짜문자열형식')
                 : 문자열 ==> 날짜 타입으로 변경
1982년 1월 1일 이후에 입사한 사람들만 조회
년도 : YYYY
월 : MM
일 : DD
SELECT ename, hiredate
FROM emp
WHERE hiredate >= TO_DATE ('1982/01/01', 'yyyy/mm/dd');


BETWEEN AND 연산자 
WHERE 비교대상 BETWEEN 시작값 AND 종료값;
비교대상의 값이 시작값과 종료값 사이에 있을 때 참{TRUE)으로 인식
(시작값과, 종료값을 포함 비교대상 >= 시작값, 비교대상 <= 종료값)

EMP테이블에서 SAL 컬럼의 값이 1000이상 2000이하인 사원들의 모든 컬럼을 조회

SELECT *
FROM emp
WHERE sal BETWEEN 1000 AND 2000;

비교 연산자를 이용한 풀이
SELECT *
FROM emp
WHERE sal >= 1000 
  AND sal <= 2000;

입사일자가 82년 1월 1일 83년 1월 1일 사이에 있는 사원조회
SELECT *
FROM emp
WHERE hiredate BETWEEN TO_DATE ('1982/01/23')  AND TO_DATE ('1982/12/09');


SELECT *
FROM emp
WHERE hiredate >= TO_DATE ('19820101', 'YYYYMMDD') 
  AND hiredate <= TO_DATE ('19830101', 'YYYYMMDD');
  
  
  
IN 연산자
  특정 값이 집합(여러개의 값을 포함)에 포함되어 있는지 여부를 확인
  WHERE 비교대상 IN (값1, 값2....)
  ==> 비교대상이 값1 이거나(=)
      비교대상이 값2 이거나(=)
''emp테이블에서 사원이 10부서 혹은 30부서에 속한 사원들 정보를 조회(모든컬럼)''
SELECT *
FROM emp
WHERE deptno IN (10, 30);

OR연산자로 대체하는 것이 가능 
AND ==> 그리고 
OR ==> 또는 

조건1 AND 조건2 ==> 조건1과 조건2를 동시에 만족
조건1 OR 조건2  ==> 조건1을 만족하거나, 조건2를 만족하거나
                   조건1과 조건2를 동시 만족하거나
WHERE 비겨대상 = 값1
   OR 비교대상 = 값2 

SELECT *
FROM emp
WHERE deptno = 10
OR    deptno = 30;

SELECT userid 아이디, usernm 이름, alias 별명   
FROM users
WHERE userid IN ('brown','cony','sally');

SELECT userid 아이디, usernm 이름, alias 별명
FROM users
WHERE userid = 'brown'
OR userid = 'cony'
OR userid = 'sally'

LIKE 연산자 : 문자열 매칭 
WHERE userid = 'brown'
userid가 b로 시작하는 캐릭터만 조회
% : 문자가 없거나, 여러개의 문자열
_ : 하나의 임의의 문자 

SELECT *
FROM emp
WHERE ename LIKE 'W___';    ename이 w로 시작하고 이어서 3개의 글자가 있는 사원


SELECT mem_id, mem_name
FROM member 
WHERE mem_name LIKE '신%';

SELECT mem_id, mem_name
FROM member 
WHERE mem_name LIKE '%이%'; 

















