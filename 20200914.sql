cid : customer id
cnm : customer nm

SELECT *
FROM customer;

pid : product id
pnm : product nm

SELECT *
FROM product;

cycle : 고객애음주기
cid : 고객아이디
pid : 제품번호
day : 1-7 (일~토) 애음요일
cnt : count 약자, 수량

SELECT *
FROM cycle;


오라클 방식
SELECT customer.*, cycle.pid, cycle.DAY
FROM customer, cycle
WHERE customer.cid = cycle.cid;
AND customer.cnm IN ('brown', 'sally') 
안시
SELECT y.cid, c.cnm, y.pid, y.day, y.cnt
FROM cycle y JOIN customer c ON ( y.cid = c.cid )
WHERE c.cnm IN ('brown', 'sally')


SQL이 읽어온 순서
EXPLAIN PLAN FOR -- 먼저 입력
--실습 5
SELECT y.cid, c.cnm, y.pid,product.pnm, y.day, y.cnt
FROM cycle y JOIN customer c ON ( y.cid = c.cid )
             JOIN product ON ( y.pid = product.pid )
WHERE c.cnm IN ('brown', 'sally') 

--실행계획
SELECT *
FROM TABLE(dbms_xplan.display);




JOIN구분
1. 문법에 따른 구분 : 안시, 오라클
2. JOIN의 형태에 따른 구분 : SELF-JOIN. NONEQUI-JOIN, CROSS-JOIN
3. JOIN 성공 여부에 따라 데이터 표시여부 : INNER JOIN(조인성공시 데이터를 표시)
                                       OUTER JOIN(조인이 실패해도 기준으로 정한 테이블의 컬럼 정보는 표시)
                                     
                                     
킹의 경우 mgr 컬럼의 값이 null이기 때문에 조인에 실패 ==>13건             
SELECT e.empno, e.ename, e.mgr, m.ename
FROM emp e, emp m
WHERE e.mgr = m.empno;

LEFT OUTER JOIN
SELECT e.empno, e.ename, e.mgr, m.ename
FROM emp e LEFT OUTER JOIN emp m ON(e.mgr = m.empno);

행데 대한 제한 조건 기술시 WHERE절에 기술 했을 때와 ON절에 기술 했을 떄
결과가 다르다

사원의 부서가 10번인 사람들만 조회 되도록 부서 번호 조건을 추가
SELECT e.empno, e.ename, e.mgr, m.ename
FROM emp e LEFT OUTER JOIN emp m ON (e.mgr = m.empno AND e.deptno = 10);

SELECT e.empno, e.ename, e.mgr, m.ename
FROM emp e LEFT OUTER JOIN emp m ON (e.mgr = m.empno AND e.deptno = 10);

조건을 WHERE 절에 기술한 경우 ==> OUTER JOIN이 아닌 INNER 조인 결과가 나온다
SELECT e.empno, e.ename, e.deptno, e.mgr, m.ename, m.deptno
FROM emp e LEFT OUTER JOIN emp m ON (e.mgr = m.empno)
WHERE e.deptno = 10;

SELECT e.empno, e.ename, e.deptno, e.mgr, m.ename, m.deptno
FROM emp e JOIN emp m ON (e.mgr = m.empno)
WHERE e.deptno = 10;


오라클방식 : 데이터가 없는 쪽의 컬럼에 (+) 기호를 붙인다
            안시 기준 테이블 반대편 테이블의 컬럼에 (+)을 붙인다
            WHERE절 연결 조건에 적용 
SELECT e.empno, e.ename, e.mgr, m.ename
FROM emp e ,emp m 
WHERE e.mgr = m.empno(+);

SELECT e.empno, e.ename, e.mgr, m.empno, m.ename
FROM emp e LEFT OUTER JOIN emp m ON(e.mgr = m.empno)
ORDER BY deptno;

SELECT e.ename B, m.ename A
FROM emp e RIGHT OUTER JOIN emp m ON(e.mgr = m.empno)
ORDER BY deptno;


안시버전
SELECT b.BUY_DATE, b.BUY_PROD, p.PROD_ID, p.PROD_NAME, b.BUY_QTY
FROM buyprod b RIGHT OUTER JOIN prod p ON ( b.buy_prod = p.prod_id AND BUY_DATE = TO_DATE('2005/01/25', 'yyyy/mm/dd'))
WHERE 

오라클버전
SELECT b.BUY_DATE, b.BUY_PROD, p.PROD_ID, p.PROD_NAME, b.BUY_QTY
FROM buyprod b, prod p 
WHERE b.buy_prod(+) = p.prod_id
WHERE b.BUY_DATE(+) = TO_DATE('2005/01/25', 'yyyy/mm/dd')






SELECT *
FROM PROD;










--과제 6부터 13 --
실습 6
SELECT y.cid, c.cnm, y.pid,p.pnm, sum(y.cnt) cnt
FROM cycle y JOIN customer c ON ( y.cid = c.cid )
             JOIN product p ON ( y.pid = p.pid )
GROUP BY y.cid, c.cnm, y.pid, p.pnm, y.CNT
ORDER BY c.cnm ;


실습 7 
SELECT y.pid, p.pnm, sum(y.cnt) cnt
FROM cycle y JOIN customer c ON ( y.cid = c.cid )
             JOIN product p ON ( y.pid = p.pid )
GROUP BY y.pid, p.pnm
ORDER BY p.pnm ;




SELECT *
FROM countries





