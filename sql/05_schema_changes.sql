-- =============================================================================
-- AMC CoopMart: K. Using DDL statements to create and manage tables
-- Scenario: the cooperative plans pickup branches, links them to orders,
-- renames them, then cancels the plan and removes everything again.
-- Leaves the schema as it found it.
-- =============================================================================

-- CREATE: a table of pickup stores
CREATE TABLE pickup_store (
    store_id   NUMBER PRIMARY KEY,
    store_name VARCHAR2(120) NOT NULL UNIQUE,
    location   VARCHAR2(255) NOT NULL
);

-- ALTER (add column): a store reference on each order
ALTER TABLE shop_order ADD store_id NUMBER;

-- ALTER (add constraint): link orders to stores with a foreign key
ALTER TABLE shop_order
    ADD CONSTRAINT fk_order_store FOREIGN KEY (store_id) REFERENCES pickup_store(store_id);

-- RENAME: "pickup stores" become "branch stores"
RENAME pickup_store TO branch_store;

-- DROP: the program is cancelled; remove the constraint, the column, then the table
ALTER TABLE shop_order DROP CONSTRAINT fk_order_store;
ALTER TABLE shop_order DROP COLUMN store_id;
DROP TABLE branch_store;
