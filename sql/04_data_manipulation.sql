-- =============================================================================
-- AMC CoopMart: J. Manipulating data with INSERT, UPDATE, SELECT and DELETE
-- Scenario: a new member (#135) registers to suggest "Organic Wild Honey".
-- The admin logs the member and a 'Pending' suggestion, later marks it
-- 'Completed' once the honey is sourced, checks the change, then cleans up.
-- Run after 02_sample_data.sql. Leaves the database as it found it.
-- =============================================================================

-- INSERT the parent first: the member must exist before the suggestion
INSERT INTO member (member_id, email, password_hash, full_name, phone_number, address, join_date, acquisition_platform_id, is_active)
VALUES (135, 'honey.lover@example.com', 'demo-hash-135', 'Juan Example', '0900-000-3135', 'Quezon City', SYSDATE, 1, 1);

-- INSERT the child: suggestion 35, both statuses 'Pending'
INSERT INTO product_suggestion (suggestion_id, member_id, product_name, description, status, date_submitted, supply_status)
VALUES (35, 135, 'Organic Wild Honey', 'Requesting pure, locally sourced organic honey for the store.', 'Pending', SYSDATE, 'Pending');

-- UPDATE: the honey was sourced, so both statuses become 'Completed'
UPDATE product_suggestion
SET    status = 'Completed',
       supply_status = 'Completed'
WHERE  suggestion_id = 35;

-- SELECT: confirm the update
SELECT suggestion_id, product_name, status, supply_status, date_submitted
FROM   product_suggestion
WHERE  suggestion_id = 35;

-- DELETE: child first, then parent (the documentation stopped after the child;
-- the second DELETE removes the test member too)
DELETE FROM product_suggestion WHERE suggestion_id = 35;
DELETE FROM member WHERE member_id = 135;

COMMIT;
