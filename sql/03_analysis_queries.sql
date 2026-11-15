-- =============================================================================
-- AMC CoopMart: analysis queries (problems A to I from the project documentation)
-- Run after 01_create_tables.sql and 02_sample_data.sql. Read-only.
-- =============================================================================


-- A. Restricting and sorting data: WHERE, comparison and logical conditions, ORDER BY
-- Problem: find active members who joined in 2025 through the website, newest first.
-- Use: measure how many retained members a digital channel brought in.
SELECT m.member_id,
       m.full_name,
       m.email,
       m.join_date,
       a.platform_name
FROM   member m
       INNER JOIN acquisition_platform a ON m.acquisition_platform_id = a.platform_id
WHERE  m.is_active = 1                                     -- equality
  AND  m.join_date >= TO_DATE('2025-01-01', 'YYYY-MM-DD')  -- on or after 1 Jan 2025
  AND  a.platform_name = 'Website signup'                  -- exact text match
ORDER  BY m.join_date DESC;


-- B. Single-row functions: general, character, number and date functions
-- Problem: a cleaner membership report with readable names, a masked email,
-- a default for missing phone numbers and formatted dates.
SELECT m.member_id,
       UPPER(m.full_name)                      AS member_name,         -- character
       NVL(m.phone_number, 'NO NUMBER')        AS contact_number,      -- general
       SUBSTR(m.email, 1, 5) || '***'          AS masked_email,        -- character
       ROUND(t.annual_fee, 2)                  AS annual_fee,          -- number
       TO_CHAR(m.join_date, 'Month DD, YYYY')  AS formatted_join_date  -- date
FROM   member m
       JOIN membership_subscription s ON m.member_id = s.member_id
       JOIN membership_tier t         ON s.tier_id = t.tier_id;


-- C. Implicit and explicit data type conversion: TO_CHAR, TO_NUMBER, TO_DATE
-- Problem: show 2025 orders above a threshold that is written as text.
SELECT o.order_id,
       TO_CHAR(o.order_placed_at, 'YYYY-MM-DD') AS order_date_text,  -- date to text
       TO_NUMBER('300')                         AS minimum_amount,   -- text to number
       o.final_total_applied
FROM   shop_order o
WHERE  o.final_total_applied > TO_NUMBER('300')
  AND  TRUNC(o.order_placed_at) BETWEEN TO_DATE('2025-01-01', 'YYYY-MM-DD')
                                    AND TO_DATE('2025-12-31', 'YYYY-MM-DD');


-- D. Multiple-row (group) functions
-- Problem: which product is the most expensive?
SELECT product_name,
       price
FROM   product
WHERE  price = (SELECT MAX(price) FROM product);


-- E. Reporting aggregated data with group functions
-- Problem: how many orders, and how much money, sit under each order status?
SELECT o.order_status,
       COUNT(o.order_id)          AS total_orders,
       SUM(o.final_total_applied) AS total_sales
FROM   shop_order o
GROUP  BY o.order_status
ORDER  BY total_sales DESC;


-- F. Data from multiple tables: Oracle join syntax and ANSI/SQL:1999 syntax
-- Problem: which member bought which product, and how much?
-- F1. Oracle proprietary syntax
SELECT m.full_name,
       o.order_id,
       p.product_name,
       oi.quantity,
       oi.line_total
FROM   member m, shop_order o, order_item oi, product p
WHERE  m.member_id = o.member_id
  AND  o.order_id = oi.order_id
  AND  oi.product_id = p.product_id;

-- F2. ANSI/SQL:1999 syntax (same result)
SELECT m.full_name,
       o.order_id,
       p.product_name,
       oi.quantity,
       oi.line_total
FROM   member m
       JOIN shop_order o  ON m.member_id = o.member_id
       JOIN order_item oi ON o.order_id = oi.order_id
       JOIN product p     ON oi.product_id = p.product_id;


-- G. Single-row subquery
-- Problem: members whose share capital balance is above the average.
SELECT member_id,
       share_capital_balance
FROM   share_capital_account
WHERE  share_capital_balance > (SELECT AVG(share_capital_balance)
                                FROM   share_capital_account);


-- H. Multiple-row subquery
-- Problem: which products appear in at least one order that was not cancelled?
SELECT product_id,
       product_name
FROM   product
WHERE  product_id IN (SELECT product_id
                      FROM   order_item
                      WHERE  order_id IN (SELECT order_id
                                          FROM   shop_order
                                          WHERE  order_status <> 'Cancelled'));


-- I. Set operators
-- Problem: one contact list of active members and suppliers (for example, for
-- emergency text alerts).
SELECT full_name    AS entity_name,
       phone_number AS primary_contact,
       'Member'     AS stakeholder_type
FROM   member
WHERE  is_active = 1
UNION
SELECT supplier_name AS entity_name,
       contact_info  AS primary_contact,
       'Supplier'    AS stakeholder_type
FROM   supplier
ORDER  BY stakeholder_type, entity_name;
