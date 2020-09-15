==========================
SELECT l.lprod_gu, l.lprod_nm, p.prod_id, p.prod_name
FROM prod p JOIN  lprod l ON(p.prod_lgu = l.lprod_gu)
===========================================================
SELECT b.buyer_id, b.buyer_name, p.prod_id, p.prod_name
FROM prod p JOIN buyer b ON(p.prod_buyer = b.buyer_id)

SELECT buyer_id, buyer_name, prod_id, prod_name
FROM prod, buyer
WHERE prod.prod_buyer = buyer.buyer_id;

=============================================================
SELECT member.mem_id, member.mem_name, prod.prod_id, prod.prod_name, cart.cart_qty 
FROM member, cart, prod
WHERE MEMBER.mem_id = cart.cart_member
AND cart.cart_prod = prod.prod_id ;


SELECT member.mem_id, member.mem_name, prod.prod_id, prod.prod_name, cart.cart_qty 
FROM member JOIN cart ON(MEMBER.mem_id = cart.cart_member)
            JOIN prod ON(cart.cart_prod = prod.prod_id)
            
            
join시 생각할 부분
1 테이블 기술
2 연결 조건 

============================================================

SELECT *
FROM cart

SELECT *
FROM prod

SELECT *
FROM member




