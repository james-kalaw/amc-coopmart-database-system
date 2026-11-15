-- =============================================================================
-- AMC CoopMart: sample data (fictional)
-- Run after 01_create_tables.sql.
--
-- Every name, email, phone number, price and amount in this file is made up so
-- the schema and the queries can be tried. The real dataset the cooperative
-- provided was released for academic use only and is not in this repository.
-- Emails use example.com and phone numbers use 0900-000-xxxx on purpose.
-- Rows are inserted parents first, in the same phases as the tables.
-- =============================================================================

-- MEMBERSHIP_TIER: three membership plans
INSERT INTO MEMBERSHIP_TIER (tier_id, tier_name, annual_fee, discount_percentage) VALUES (1, 'Bronze', 600, 5);
INSERT INTO MEMBERSHIP_TIER (tier_id, tier_name, annual_fee, discount_percentage) VALUES (2, 'Silver', 1200, 10);
INSERT INTO MEMBERSHIP_TIER (tier_id, tier_name, annual_fee, discount_percentage) VALUES (3, 'Gold', 2400, 15);

-- ACQUISITION_PLATFORM: how members found the cooperative
INSERT INTO ACQUISITION_PLATFORM (platform_id, platform_name, details) VALUES (1, 'Website signup', 'Registered on the CoopMart website');
INSERT INTO ACQUISITION_PLATFORM (platform_id, platform_name, details) VALUES (2, 'Walk-in', 'Registered at the store counter');
INSERT INTO ACQUISITION_PLATFORM (platform_id, platform_name, details) VALUES (3, 'Facebook', 'Clicked a Facebook ad or post');
INSERT INTO ACQUISITION_PLATFORM (platform_id, platform_name, details) VALUES (4, 'Member referral', 'Invited by an existing member');
INSERT INTO ACQUISITION_PLATFORM (platform_id, platform_name, details) VALUES (5, 'Community event', 'Signed up at a barangay or school event');

-- MARKETING_CAMPAIGN: three marketing campaigns
INSERT INTO MARKETING_CAMPAIGN (campaign_id, campaign_name, total_budget, start_date, end_date) VALUES (1, 'Summer Savings Drive', 15000, TO_DATE('2025-03-01', 'YYYY-MM-DD'), TO_DATE('2025-05-31', 'YYYY-MM-DD'));
INSERT INTO MARKETING_CAMPAIGN (campaign_id, campaign_name, total_budget, start_date, end_date) VALUES (2, 'Back-to-School Bundles', 12000, TO_DATE('2025-06-01', 'YYYY-MM-DD'), TO_DATE('2025-07-31', 'YYYY-MM-DD'));
INSERT INTO MARKETING_CAMPAIGN (campaign_id, campaign_name, total_budget, start_date, end_date) VALUES (3, 'Holiday Noche Buena Promo', 25000, TO_DATE('2025-11-01', 'YYYY-MM-DD'), TO_DATE('2025-12-31', 'YYYY-MM-DD'));

-- PRODUCT: 14 everyday grocery items (fictional prices)
INSERT INTO PRODUCT (product_id, product_name, description, price, stock_quantity, unit_of_measure, category, reorder_level) VALUES (1, 'Well-milled rice 5 kg', 'Local well-milled rice', 285.0, 120, 'sack', 'Grains', 30);
INSERT INTO PRODUCT (product_id, product_name, description, price, stock_quantity, unit_of_measure, category, reorder_level) VALUES (2, 'Brown rice 2 kg', 'Unpolished brown rice', 160.0, 60, 'pack', 'Grains', 15);
INSERT INTO PRODUCT (product_id, product_name, description, price, stock_quantity, unit_of_measure, category, reorder_level) VALUES (3, 'Fresh eggs (tray of 30)', 'Medium eggs from partner farms', 245.0, 40, 'tray', 'Dairy & Eggs', 10);
INSERT INTO PRODUCT (product_id, product_name, description, price, stock_quantity, unit_of_measure, category, reorder_level) VALUES (4, 'Evaporated milk 370 ml', 'Canned evaporated milk', 42.5, 200, 'can', 'Dairy & Eggs', 50);
INSERT INTO PRODUCT (product_id, product_name, description, price, stock_quantity, unit_of_measure, category, reorder_level) VALUES (5, 'Instant coffee 3-in-1 (30 sachets)', 'Coffee, creamer and sugar', 215.0, 80, 'pack', 'Beverages', 20);
INSERT INTO PRODUCT (product_id, product_name, description, price, stock_quantity, unit_of_measure, category, reorder_level) VALUES (6, 'Barako coffee beans 500 g', 'Batangas-style coffee beans', 390.0, 25, 'bag', 'Beverages', 8);
INSERT INTO PRODUCT (product_id, product_name, description, price, stock_quantity, unit_of_measure, category, reorder_level) VALUES (7, 'Canned sardines 155 g', 'Sardines in tomato sauce', 24.75, 300, 'can', 'Canned Goods', 80);
INSERT INTO PRODUCT (product_id, product_name, description, price, stock_quantity, unit_of_measure, category, reorder_level) VALUES (8, 'Corned beef 260 g', 'Canned corned beef', 89.0, 150, 'can', 'Canned Goods', 40);
INSERT INTO PRODUCT (product_id, product_name, description, price, stock_quantity, unit_of_measure, category, reorder_level) VALUES (9, 'Cooking oil 1 L', 'Vegetable cooking oil', 118.0, 90, 'bottle', 'Pantry', 25);
INSERT INTO PRODUCT (product_id, product_name, description, price, stock_quantity, unit_of_measure, category, reorder_level) VALUES (10, 'Brown sugar 1 kg', 'Washed brown sugar', 92.0, 70, 'pack', 'Pantry', 20);
INSERT INTO PRODUCT (product_id, product_name, description, price, stock_quantity, unit_of_measure, category, reorder_level) VALUES (11, 'Soy sauce 1 L', 'Naturally brewed soy sauce', 58.0, 110, 'bottle', 'Pantry', 30);
INSERT INTO PRODUCT (product_id, product_name, description, price, stock_quantity, unit_of_measure, category, reorder_level) VALUES (12, 'Laundry powder 1 kg', 'Detergent powder', 135.0, 55, 'pack', 'Household', 15);
INSERT INTO PRODUCT (product_id, product_name, description, price, stock_quantity, unit_of_measure, category, reorder_level) VALUES (13, 'Dishwashing liquid 500 ml', 'Lemon dishwashing liquid', 79.0, 65, 'bottle', 'Household', 15);
INSERT INTO PRODUCT (product_id, product_name, description, price, stock_quantity, unit_of_measure, category, reorder_level) VALUES (14, 'Organic calamansi juice 1 L', 'Bottled calamansi juice', 145.0, 18, 'bottle', 'Beverages', 10);

-- SUPPLIER: five fictional suppliers
INSERT INTO SUPPLIER (supplier_id, supplier_name, location, contact_info) VALUES (1, 'Sample Rice Traders', 'Nueva Ecija', '0900-000-1001');
INSERT INTO SUPPLIER (supplier_id, supplier_name, location, contact_info) VALUES (2, 'Sample Farm Fresh Co.', 'Batangas', '0900-000-1002');
INSERT INTO SUPPLIER (supplier_id, supplier_name, location, contact_info) VALUES (3, 'Sample Pantry Distributors', 'Valenzuela City', '0900-000-1003');
INSERT INTO SUPPLIER (supplier_id, supplier_name, location, contact_info) VALUES (4, 'Sample Home Essentials Inc.', 'Pasig City', '0900-000-1004');
INSERT INTO SUPPLIER (supplier_id, supplier_name, location, contact_info) VALUES (5, 'Sample Beverage Partners', 'Quezon City', '0900-000-1005');

-- COURIER_PARTNER: three fictional couriers
INSERT INTO COURIER_PARTNER (courier_id, company_name, service_type, contact_info) VALUES (1, 'Sample Express', 'Same-day delivery', '0900-000-2001');
INSERT INTO COURIER_PARTNER (courier_id, company_name, service_type, contact_info) VALUES (2, 'Sample Motor Riders', 'Motorcycle courier', '0900-000-2002');
INSERT INTO COURIER_PARTNER (courier_id, company_name, service_type, contact_info) VALUES (3, 'Sample Cargo', 'Bulk delivery', '0900-000-2003');

-- VOTING_EVENT: two member votes
INSERT INTO VOTING_EVENT (vote_id, title, description, start_date, end_date, created_by_admin) VALUES (1, 'Add a fresh vegetables section', 'Should the store stock fresh vegetables from partner farms?', TO_DATE('2025-04-01', 'YYYY-MM-DD'), TO_DATE('2025-04-15', 'YYYY-MM-DD'), 1);
INSERT INTO VOTING_EVENT (vote_id, title, description, start_date, end_date, created_by_admin) VALUES (2, 'Extend Saturday store hours', 'Open until 9 PM on Saturdays?', TO_DATE('2025-09-01', 'YYYY-MM-DD'), TO_DATE('2025-09-10', 'YYYY-MM-DD'), 1);

-- MEMBER: 16 fictional members (example.com emails, 0900-000 numbers)
INSERT INTO MEMBER (member_id, email, password_hash, full_name, phone_number, address, join_date, acquisition_platform_id, is_active, acquisition_details) VALUES (101, 'ana.sample@example.com', 'demo-hash-101', 'Ana Sample', '0900-000-3000', 'Quezon City', TO_DATE('2024-09-01', 'YYYY-MM-DD'), 1, 1, 'Registered on the CoopMart website');
INSERT INTO MEMBER (member_id, email, password_hash, full_name, phone_number, address, join_date, acquisition_platform_id, is_active, acquisition_details) VALUES (102, 'ben.example@example.com', 'demo-hash-102', 'Ben Example', '0900-000-3001', 'Marikina', TO_DATE('2024-10-08', 'YYYY-MM-DD'), 2, 1, 'Registered at the store counter');
INSERT INTO MEMBER (member_id, email, password_hash, full_name, phone_number, address, join_date, acquisition_platform_id, is_active, acquisition_details) VALUES (103, 'carla.demo@example.com', 'demo-hash-103', 'Carla Demo', '0900-000-3002', 'Pasig City', TO_DATE('2024-11-14', 'YYYY-MM-DD'), 3, 1, 'Clicked a Facebook ad or post');
INSERT INTO MEMBER (member_id, email, password_hash, full_name, phone_number, address, join_date, acquisition_platform_id, is_active, acquisition_details) VALUES (104, 'dan.test@example.com', 'demo-hash-104', 'Dan Test', '0900-000-3003', 'San Juan', TO_DATE('2024-12-21', 'YYYY-MM-DD'), 4, 1, 'Invited by an existing member');
INSERT INTO MEMBER (member_id, email, password_hash, full_name, phone_number, address, join_date, acquisition_platform_id, is_active, acquisition_details) VALUES (105, 'elena.sample@example.com', 'demo-hash-105', 'Elena Sample', '0900-000-3004', 'Caloocan', TO_DATE('2025-01-27', 'YYYY-MM-DD'), 5, 1, 'Signed up at a barangay or school event');
INSERT INTO MEMBER (member_id, email, password_hash, full_name, phone_number, address, join_date, acquisition_platform_id, is_active, acquisition_details) VALUES (106, 'franco.example@example.com', 'demo-hash-106', 'Franco Example', '0900-000-3005', 'Mandaluyong', TO_DATE('2025-03-05', 'YYYY-MM-DD'), 1, 1, 'Registered on the CoopMart website');
INSERT INTO MEMBER (member_id, email, password_hash, full_name, phone_number, address, join_date, acquisition_platform_id, is_active, acquisition_details) VALUES (107, 'gina.demo@example.com', 'demo-hash-107', 'Gina Demo', '0900-000-3006', 'Quezon City', TO_DATE('2025-04-11', 'YYYY-MM-DD'), 3, 0, 'Clicked a Facebook ad or post');
INSERT INTO MEMBER (member_id, email, password_hash, full_name, phone_number, address, join_date, acquisition_platform_id, is_active, acquisition_details) VALUES (108, 'hector.test@example.com', 'demo-hash-108', 'Hector Test', '0900-000-3007', 'Marikina', TO_DATE('2025-05-18', 'YYYY-MM-DD'), 2, 1, 'Registered at the store counter');
INSERT INTO MEMBER (member_id, email, password_hash, full_name, phone_number, address, join_date, acquisition_platform_id, is_active, acquisition_details) VALUES (109, 'isa.sample@example.com', 'demo-hash-109', 'Isa Sample', '0900-000-3008', 'Pasig City', TO_DATE('2025-06-24', 'YYYY-MM-DD'), 1, 1, 'Registered on the CoopMart website');
INSERT INTO MEMBER (member_id, email, password_hash, full_name, phone_number, address, join_date, acquisition_platform_id, is_active, acquisition_details) VALUES (110, 'jomar.example@example.com', 'demo-hash-110', 'Jomar Example', NULL, 'San Juan', TO_DATE('2025-07-31', 'YYYY-MM-DD'), 4, 1, 'Invited by an existing member');
INSERT INTO MEMBER (member_id, email, password_hash, full_name, phone_number, address, join_date, acquisition_platform_id, is_active, acquisition_details) VALUES (111, 'kris.demo@example.com', 'demo-hash-111', 'Kris Demo', '0900-000-3010', 'Caloocan', TO_DATE('2025-09-06', 'YYYY-MM-DD'), 1, 1, 'Registered on the CoopMart website');
INSERT INTO MEMBER (member_id, email, password_hash, full_name, phone_number, address, join_date, acquisition_platform_id, is_active, acquisition_details) VALUES (112, 'lea.test@example.com', 'demo-hash-112', 'Lea Test', '0900-000-3011', 'Mandaluyong', TO_DATE('2025-10-13', 'YYYY-MM-DD'), 5, 1, 'Signed up at a barangay or school event');
INSERT INTO MEMBER (member_id, email, password_hash, full_name, phone_number, address, join_date, acquisition_platform_id, is_active, acquisition_details) VALUES (113, 'marco.sample@example.com', 'demo-hash-113', 'Marco Sample', '0900-000-3012', 'Quezon City', TO_DATE('2025-11-19', 'YYYY-MM-DD'), 3, 1, 'Clicked a Facebook ad or post');
INSERT INTO MEMBER (member_id, email, password_hash, full_name, phone_number, address, join_date, acquisition_platform_id, is_active, acquisition_details) VALUES (114, 'nina.example@example.com', 'demo-hash-114', 'Nina Example', '0900-000-3013', 'Marikina', TO_DATE('2025-12-26', 'YYYY-MM-DD'), 1, 0, 'Registered on the CoopMart website');
INSERT INTO MEMBER (member_id, email, password_hash, full_name, phone_number, address, join_date, acquisition_platform_id, is_active, acquisition_details) VALUES (115, 'oscar.demo@example.com', 'demo-hash-115', 'Oscar Demo', '0900-000-3014', 'Pasig City', TO_DATE('2026-02-01', 'YYYY-MM-DD'), 2, 1, 'Registered at the store counter');
INSERT INTO MEMBER (member_id, email, password_hash, full_name, phone_number, address, join_date, acquisition_platform_id, is_active, acquisition_details) VALUES (116, 'pia.test@example.com', 'demo-hash-116', 'Pia Test', '0900-000-3015', 'San Juan', TO_DATE('2026-03-10', 'YYYY-MM-DD'), 4, 1, 'Invited by an existing member');

-- CAMPAIGN_PLATFORM_PERFORMANCE: results of each campaign on each platform
INSERT INTO CAMPAIGN_PLATFORM_PERFORMANCE (performance_id, campaign_id, platform_name, impressions_count, clicks_count, spend_on_platform) VALUES (1, 1, 'Facebook', 15806, 360, 5878.36);
INSERT INTO CAMPAIGN_PLATFORM_PERFORMANCE (performance_id, campaign_id, platform_name, impressions_count, clicks_count, spend_on_platform) VALUES (2, 1, 'Instagram', 50414, 2238, 3756.59);
INSERT INTO CAMPAIGN_PLATFORM_PERFORMANCE (performance_id, campaign_id, platform_name, impressions_count, clicks_count, spend_on_platform) VALUES (3, 1, 'Google Search', 22633, 1036, 5053.71);
INSERT INTO CAMPAIGN_PLATFORM_PERFORMANCE (performance_id, campaign_id, platform_name, impressions_count, clicks_count, spend_on_platform) VALUES (4, 2, 'Facebook', 35565, 1470, 3895.62);
INSERT INTO CAMPAIGN_PLATFORM_PERFORMANCE (performance_id, campaign_id, platform_name, impressions_count, clicks_count, spend_on_platform) VALUES (5, 2, 'Instagram', 55876, 2294, 3781.81);
INSERT INTO CAMPAIGN_PLATFORM_PERFORMANCE (performance_id, campaign_id, platform_name, impressions_count, clicks_count, spend_on_platform) VALUES (6, 2, 'Google Search', 58664, 1962, 3279.87);
INSERT INTO CAMPAIGN_PLATFORM_PERFORMANCE (performance_id, campaign_id, platform_name, impressions_count, clicks_count, spend_on_platform) VALUES (7, 3, 'Facebook', 48252, 638, 7030.17);
INSERT INTO CAMPAIGN_PLATFORM_PERFORMANCE (performance_id, campaign_id, platform_name, impressions_count, clicks_count, spend_on_platform) VALUES (8, 3, 'Instagram', 14425, 403, 9228.18);
INSERT INTO CAMPAIGN_PLATFORM_PERFORMANCE (performance_id, campaign_id, platform_name, impressions_count, clicks_count, spend_on_platform) VALUES (9, 3, 'Google Search', 52903, 1566, 7142.64);

-- PRODUCT_SUPPLIER: which supplier sells each product, and at what cost
INSERT INTO PRODUCT_SUPPLIER (product_id, supplier_id, cost_price) VALUES (1, 1, 222.3);
INSERT INTO PRODUCT_SUPPLIER (product_id, supplier_id, cost_price) VALUES (2, 1, 124.8);
INSERT INTO PRODUCT_SUPPLIER (product_id, supplier_id, cost_price) VALUES (3, 2, 191.1);
INSERT INTO PRODUCT_SUPPLIER (product_id, supplier_id, cost_price) VALUES (4, 2, 33.15);
INSERT INTO PRODUCT_SUPPLIER (product_id, supplier_id, cost_price) VALUES (4, 3, 34.85);
INSERT INTO PRODUCT_SUPPLIER (product_id, supplier_id, cost_price) VALUES (5, 5, 167.7);
INSERT INTO PRODUCT_SUPPLIER (product_id, supplier_id, cost_price) VALUES (6, 5, 304.2);
INSERT INTO PRODUCT_SUPPLIER (product_id, supplier_id, cost_price) VALUES (7, 3, 19.3);
INSERT INTO PRODUCT_SUPPLIER (product_id, supplier_id, cost_price) VALUES (8, 3, 69.42);
INSERT INTO PRODUCT_SUPPLIER (product_id, supplier_id, cost_price) VALUES (8, 2, 72.98);
INSERT INTO PRODUCT_SUPPLIER (product_id, supplier_id, cost_price) VALUES (9, 3, 92.04);
INSERT INTO PRODUCT_SUPPLIER (product_id, supplier_id, cost_price) VALUES (10, 3, 71.76);
INSERT INTO PRODUCT_SUPPLIER (product_id, supplier_id, cost_price) VALUES (11, 3, 45.24);
INSERT INTO PRODUCT_SUPPLIER (product_id, supplier_id, cost_price) VALUES (12, 4, 105.3);
INSERT INTO PRODUCT_SUPPLIER (product_id, supplier_id, cost_price) VALUES (12, 3, 110.7);
INSERT INTO PRODUCT_SUPPLIER (product_id, supplier_id, cost_price) VALUES (13, 4, 61.62);
INSERT INTO PRODUCT_SUPPLIER (product_id, supplier_id, cost_price) VALUES (14, 5, 113.1);

-- MEMBERSHIP_SUBSCRIPTION: one plan per member
INSERT INTO MEMBERSHIP_SUBSCRIPTION (subscription_id, member_id, tier_id, status, start_date, expiry_date, is_active) VALUES (1, 101, 1, 'Active', TO_DATE('2024-09-01', 'YYYY-MM-DD'), TO_DATE('2025-09-01', 'YYYY-MM-DD'), 1);
INSERT INTO MEMBERSHIP_SUBSCRIPTION (subscription_id, member_id, tier_id, status, start_date, expiry_date, is_active) VALUES (2, 102, 2, 'Active', TO_DATE('2024-10-08', 'YYYY-MM-DD'), TO_DATE('2025-10-08', 'YYYY-MM-DD'), 1);
INSERT INTO MEMBERSHIP_SUBSCRIPTION (subscription_id, member_id, tier_id, status, start_date, expiry_date, is_active) VALUES (3, 103, 3, 'Active', TO_DATE('2024-11-14', 'YYYY-MM-DD'), TO_DATE('2025-11-14', 'YYYY-MM-DD'), 1);
INSERT INTO MEMBERSHIP_SUBSCRIPTION (subscription_id, member_id, tier_id, status, start_date, expiry_date, is_active) VALUES (4, 104, 1, 'Active', TO_DATE('2024-12-21', 'YYYY-MM-DD'), TO_DATE('2025-12-21', 'YYYY-MM-DD'), 1);
INSERT INTO MEMBERSHIP_SUBSCRIPTION (subscription_id, member_id, tier_id, status, start_date, expiry_date, is_active) VALUES (5, 105, 2, 'Active', TO_DATE('2025-01-27', 'YYYY-MM-DD'), TO_DATE('2026-01-27', 'YYYY-MM-DD'), 1);
INSERT INTO MEMBERSHIP_SUBSCRIPTION (subscription_id, member_id, tier_id, status, start_date, expiry_date, is_active) VALUES (6, 106, 3, 'Active', TO_DATE('2025-03-05', 'YYYY-MM-DD'), TO_DATE('2026-03-05', 'YYYY-MM-DD'), 1);
INSERT INTO MEMBERSHIP_SUBSCRIPTION (subscription_id, member_id, tier_id, status, start_date, expiry_date, is_active) VALUES (7, 107, 1, 'Expired', TO_DATE('2025-04-11', 'YYYY-MM-DD'), TO_DATE('2026-04-11', 'YYYY-MM-DD'), 0);
INSERT INTO MEMBERSHIP_SUBSCRIPTION (subscription_id, member_id, tier_id, status, start_date, expiry_date, is_active) VALUES (8, 108, 2, 'Active', TO_DATE('2025-05-18', 'YYYY-MM-DD'), TO_DATE('2026-05-18', 'YYYY-MM-DD'), 1);
INSERT INTO MEMBERSHIP_SUBSCRIPTION (subscription_id, member_id, tier_id, status, start_date, expiry_date, is_active) VALUES (9, 109, 3, 'Active', TO_DATE('2025-06-24', 'YYYY-MM-DD'), TO_DATE('2026-06-24', 'YYYY-MM-DD'), 1);
INSERT INTO MEMBERSHIP_SUBSCRIPTION (subscription_id, member_id, tier_id, status, start_date, expiry_date, is_active) VALUES (10, 110, 1, 'Active', TO_DATE('2025-07-31', 'YYYY-MM-DD'), TO_DATE('2026-07-31', 'YYYY-MM-DD'), 1);
INSERT INTO MEMBERSHIP_SUBSCRIPTION (subscription_id, member_id, tier_id, status, start_date, expiry_date, is_active) VALUES (11, 111, 2, 'Active', TO_DATE('2025-09-06', 'YYYY-MM-DD'), TO_DATE('2026-09-06', 'YYYY-MM-DD'), 1);
INSERT INTO MEMBERSHIP_SUBSCRIPTION (subscription_id, member_id, tier_id, status, start_date, expiry_date, is_active) VALUES (12, 112, 3, 'Active', TO_DATE('2025-10-13', 'YYYY-MM-DD'), TO_DATE('2026-10-13', 'YYYY-MM-DD'), 1);
INSERT INTO MEMBERSHIP_SUBSCRIPTION (subscription_id, member_id, tier_id, status, start_date, expiry_date, is_active) VALUES (13, 113, 1, 'Active', TO_DATE('2025-11-19', 'YYYY-MM-DD'), TO_DATE('2026-11-19', 'YYYY-MM-DD'), 1);
INSERT INTO MEMBERSHIP_SUBSCRIPTION (subscription_id, member_id, tier_id, status, start_date, expiry_date, is_active) VALUES (14, 114, 2, 'Expired', TO_DATE('2025-12-26', 'YYYY-MM-DD'), TO_DATE('2026-12-26', 'YYYY-MM-DD'), 0);
INSERT INTO MEMBERSHIP_SUBSCRIPTION (subscription_id, member_id, tier_id, status, start_date, expiry_date, is_active) VALUES (15, 115, 3, 'Active', TO_DATE('2026-02-01', 'YYYY-MM-DD'), TO_DATE('2027-02-01', 'YYYY-MM-DD'), 1);
INSERT INTO MEMBERSHIP_SUBSCRIPTION (subscription_id, member_id, tier_id, status, start_date, expiry_date, is_active) VALUES (16, 116, 1, 'Active', TO_DATE('2026-03-10', 'YYYY-MM-DD'), TO_DATE('2027-03-10', 'YYYY-MM-DD'), 1);

-- SHOP_ORDER: 24 orders across 2025
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5001, 101, TO_TIMESTAMP('2025-01-06 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1726.75, 86.34, 1640.41, 'Completed', 'Pickup', 1, NULL);
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5002, 102, TO_TIMESTAMP('2025-01-20 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1587.0, 158.7, 1428.3, 'Completed', 'Delivery', NULL, 'Marikina');
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5003, 103, TO_TIMESTAMP('2025-02-03 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 869.75, 130.46, 739.29, 'Completed', 'Delivery', NULL, 'Pasig City');
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5004, 104, TO_TIMESTAMP('2025-02-17 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2054.0, 102.7, 1951.3, 'Paid', 'Pickup', 1, NULL);
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5005, 105, TO_TIMESTAMP('2025-03-03 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1163.75, 116.38, 1047.37, 'Pending', 'Delivery', NULL, 'Caloocan');
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5006, 106, TO_TIMESTAMP('2025-03-17 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 184.0, 27.6, 156.4, 'Cancelled', 'Delivery', NULL, 'Mandaluyong');
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5007, 107, TO_TIMESTAMP('2025-03-31 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1010.0, 50.5, 959.5, 'Completed', 'Pickup', 1, NULL);
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5008, 108, TO_TIMESTAMP('2025-04-14 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1861.5, 186.15, 1675.35, 'Out for delivery', 'Delivery', NULL, 'Marikina');
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5009, 109, TO_TIMESTAMP('2025-04-28 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 767.75, 115.16, 652.59, 'Completed', 'Delivery', NULL, 'Pasig City');
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5010, 110, TO_TIMESTAMP('2025-05-12 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 498.75, 24.94, 473.81, 'Completed', 'Pickup', 1, NULL);
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5011, 111, TO_TIMESTAMP('2025-05-26 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 692.0, 69.2, 622.8, 'Completed', 'Delivery', NULL, 'Caloocan');
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5012, 112, TO_TIMESTAMP('2025-06-09 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2988.5, 448.27, 2540.23, 'Paid', 'Delivery', NULL, 'Mandaluyong');
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5013, 113, TO_TIMESTAMP('2025-06-23 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 435.0, 21.75, 413.25, 'Pending', 'Pickup', 1, NULL);
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5014, 114, TO_TIMESTAMP('2025-07-07 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1231.0, 123.1, 1107.9, 'Cancelled', 'Delivery', NULL, 'Marikina');
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5015, 115, TO_TIMESTAMP('2025-07-21 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1126.25, 168.94, 957.31, 'Completed', 'Delivery', NULL, 'Pasig City');
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5016, 116, TO_TIMESTAMP('2025-08-04 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 170.0, 8.5, 161.5, 'Out for delivery', 'Pickup', 1, NULL);
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5017, 101, TO_TIMESTAMP('2025-08-18 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 374.0, 18.7, 355.3, 'Completed', 'Delivery', NULL, 'Quezon City');
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5018, 102, TO_TIMESTAMP('2025-09-01 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1305.0, 130.5, 1174.5, 'Completed', 'Delivery', NULL, 'Marikina');
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5019, 103, TO_TIMESTAMP('2025-09-15 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 395.0, 59.25, 335.75, 'Completed', 'Pickup', 1, NULL);
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5020, 104, TO_TIMESTAMP('2025-09-29 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 477.0, 23.85, 453.15, 'Paid', 'Delivery', NULL, 'San Juan');
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5021, 105, TO_TIMESTAMP('2025-10-13 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 811.0, 81.1, 729.9, 'Pending', 'Delivery', NULL, 'Caloocan');
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5022, 106, TO_TIMESTAMP('2025-10-27 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 638.0, 95.7, 542.3, 'Cancelled', 'Pickup', 1, NULL);
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5023, 107, TO_TIMESTAMP('2025-11-10 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 659.5, 32.98, 626.52, 'Completed', 'Delivery', NULL, 'Quezon City');
INSERT INTO SHOP_ORDER (order_id, member_id, order_placed_at, subtotal_amount, discount_applied, final_total_applied, order_status, fulfillment_type, pickup_store_id, delivery_address) VALUES (5024, 108, TO_TIMESTAMP('2025-11-24 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 517.75, 51.77, 465.98, 'Out for delivery', 'Delivery', NULL, 'Marikina');

-- PRODUCT_SUGGESTION: member product ideas
INSERT INTO PRODUCT_SUGGESTION (suggestion_id, member_id, product_name, description, status, date_submitted, supply_status) VALUES (1, 103, 'Fresh vegetables', 'Locally grown vegetables twice a week', 'Approved', TO_DATE('2025-03-20', 'YYYY-MM-DD'), 'Supplied');
INSERT INTO PRODUCT_SUGGESTION (suggestion_id, member_id, product_name, description, status, date_submitted, supply_status) VALUES (2, 105, 'Oat milk', 'Plant-based milk option', 'Pending', TO_DATE('2025-06-02', 'YYYY-MM-DD'), 'Pending');
INSERT INTO PRODUCT_SUGGESTION (suggestion_id, member_id, product_name, description, status, date_submitted, supply_status) VALUES (3, 108, 'Reusable grocery bags', 'Branded eco bags at the counter', 'Approved', TO_DATE('2025-07-15', 'YYYY-MM-DD'), 'Supplied');
INSERT INTO PRODUCT_SUGGESTION (suggestion_id, member_id, product_name, description, status, date_submitted, supply_status) VALUES (4, 111, 'Gluten-free pasta', 'For members with gluten intolerance', 'Rejected', TO_DATE('2025-08-09', 'YYYY-MM-DD'), 'Not sourced');
INSERT INTO PRODUCT_SUGGESTION (suggestion_id, member_id, product_name, description, status, date_submitted, supply_status) VALUES (5, 114, 'Local honey', 'Honey from a nearby beekeeper', 'Approved', TO_DATE('2025-10-01', 'YYYY-MM-DD'), 'Sourcing');

-- VOTE_CAST: ballots for the two votes
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (1, 1, 101, 'Abstain', TO_TIMESTAMP('2025-04-01 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (2, 1, 102, 'Yes', TO_TIMESTAMP('2025-04-07 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (3, 1, 103, 'Yes', TO_TIMESTAMP('2025-04-01 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (4, 1, 104, 'No', TO_TIMESTAMP('2025-04-06 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (5, 1, 105, 'Yes', TO_TIMESTAMP('2025-04-01 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (6, 1, 106, 'Abstain', TO_TIMESTAMP('2025-04-06 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (7, 1, 107, 'No', TO_TIMESTAMP('2025-04-08 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (8, 1, 108, 'No', TO_TIMESTAMP('2025-04-02 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (9, 1, 109, 'Abstain', TO_TIMESTAMP('2025-04-08 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (10, 1, 110, 'Yes', TO_TIMESTAMP('2025-04-03 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (11, 1, 111, 'Yes', TO_TIMESTAMP('2025-04-07 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (12, 1, 112, 'No', TO_TIMESTAMP('2025-04-08 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (13, 2, 101, 'Yes', TO_TIMESTAMP('2025-09-02 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (14, 2, 102, 'Abstain', TO_TIMESTAMP('2025-09-01 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (15, 2, 103, 'Yes', TO_TIMESTAMP('2025-09-03 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (16, 2, 104, 'Yes', TO_TIMESTAMP('2025-09-09 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (17, 2, 105, 'Yes', TO_TIMESTAMP('2025-09-08 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (18, 2, 106, 'Yes', TO_TIMESTAMP('2025-09-08 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (19, 2, 107, 'Yes', TO_TIMESTAMP('2025-09-03 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (20, 2, 108, 'Yes', TO_TIMESTAMP('2025-09-09 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO VOTE_CAST (vote_cast_id, vote_id, member_id, choice, date_voted) VALUES (21, 2, 109, 'Yes', TO_TIMESTAMP('2025-09-03 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));

-- SHARE_CAPITAL_ACCOUNT: one share capital account per member
INSERT INTO SHARE_CAPITAL_ACCOUNT (account_id, member_id, share_capital_balance) VALUES (1, 101, 4500.0);
INSERT INTO SHARE_CAPITAL_ACCOUNT (account_id, member_id, share_capital_balance) VALUES (2, 102, 4500.0);
INSERT INTO SHARE_CAPITAL_ACCOUNT (account_id, member_id, share_capital_balance) VALUES (3, 103, 2000.0);
INSERT INTO SHARE_CAPITAL_ACCOUNT (account_id, member_id, share_capital_balance) VALUES (4, 104, 2500.0);
INSERT INTO SHARE_CAPITAL_ACCOUNT (account_id, member_id, share_capital_balance) VALUES (5, 105, 1500.0);
INSERT INTO SHARE_CAPITAL_ACCOUNT (account_id, member_id, share_capital_balance) VALUES (6, 106, 4000.0);
INSERT INTO SHARE_CAPITAL_ACCOUNT (account_id, member_id, share_capital_balance) VALUES (7, 107, 3000.0);
INSERT INTO SHARE_CAPITAL_ACCOUNT (account_id, member_id, share_capital_balance) VALUES (8, 108, 4500.0);
INSERT INTO SHARE_CAPITAL_ACCOUNT (account_id, member_id, share_capital_balance) VALUES (9, 109, 3000.0);
INSERT INTO SHARE_CAPITAL_ACCOUNT (account_id, member_id, share_capital_balance) VALUES (10, 110, 3000.0);
INSERT INTO SHARE_CAPITAL_ACCOUNT (account_id, member_id, share_capital_balance) VALUES (11, 111, 500.0);
INSERT INTO SHARE_CAPITAL_ACCOUNT (account_id, member_id, share_capital_balance) VALUES (12, 112, 2000.0);
INSERT INTO SHARE_CAPITAL_ACCOUNT (account_id, member_id, share_capital_balance) VALUES (13, 113, 6000.0);
INSERT INTO SHARE_CAPITAL_ACCOUNT (account_id, member_id, share_capital_balance) VALUES (14, 114, 3000.0);
INSERT INTO SHARE_CAPITAL_ACCOUNT (account_id, member_id, share_capital_balance) VALUES (15, 115, 1500.0);
INSERT INTO SHARE_CAPITAL_ACCOUNT (account_id, member_id, share_capital_balance) VALUES (16, 116, 6000.0);

-- SHARE_CAPITAL_TRANSACTION: deposits that build each balance
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (1, 101, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Initial subscription', 1000, 1000.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (2, 101, TO_DATE('2024-10-31', 'YYYY-MM-DD'), 'Deposit', 2000, 3000.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (3, 101, TO_DATE('2024-12-30', 'YYYY-MM-DD'), 'Deposit', 1500, 4500.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (4, 102, TO_DATE('2024-10-08', 'YYYY-MM-DD'), 'Initial subscription', 2500, 2500.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (5, 102, TO_DATE('2024-12-07', 'YYYY-MM-DD'), 'Deposit', 2000, 4500.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (6, 103, TO_DATE('2024-11-14', 'YYYY-MM-DD'), 'Initial subscription', 2000, 2000.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (7, 104, TO_DATE('2024-12-21', 'YYYY-MM-DD'), 'Initial subscription', 1000, 1000.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (8, 104, TO_DATE('2025-02-19', 'YYYY-MM-DD'), 'Deposit', 1500, 2500.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (9, 105, TO_DATE('2025-01-27', 'YYYY-MM-DD'), 'Initial subscription', 1500, 1500.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (10, 106, TO_DATE('2025-03-05', 'YYYY-MM-DD'), 'Initial subscription', 2000, 2000.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (11, 106, TO_DATE('2025-05-04', 'YYYY-MM-DD'), 'Deposit', 2000, 4000.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (12, 107, TO_DATE('2025-04-11', 'YYYY-MM-DD'), 'Initial subscription', 2000, 2000.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (13, 107, TO_DATE('2025-06-10', 'YYYY-MM-DD'), 'Deposit', 1000, 3000.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (14, 108, TO_DATE('2025-05-18', 'YYYY-MM-DD'), 'Initial subscription', 2500, 2500.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (15, 108, TO_DATE('2025-07-17', 'YYYY-MM-DD'), 'Deposit', 2000, 4500.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (16, 109, TO_DATE('2025-06-24', 'YYYY-MM-DD'), 'Initial subscription', 500, 500.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (17, 109, TO_DATE('2025-08-23', 'YYYY-MM-DD'), 'Deposit', 2500, 3000.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (18, 110, TO_DATE('2025-07-31', 'YYYY-MM-DD'), 'Initial subscription', 1500, 1500.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (19, 110, TO_DATE('2025-09-29', 'YYYY-MM-DD'), 'Deposit', 500, 2000.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (20, 110, TO_DATE('2025-11-28', 'YYYY-MM-DD'), 'Deposit', 1000, 3000.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (21, 111, TO_DATE('2025-09-06', 'YYYY-MM-DD'), 'Initial subscription', 500, 500.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (22, 112, TO_DATE('2025-10-13', 'YYYY-MM-DD'), 'Initial subscription', 2000, 2000.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (23, 113, TO_DATE('2025-11-19', 'YYYY-MM-DD'), 'Initial subscription', 1500, 1500.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (24, 113, TO_DATE('2026-01-18', 'YYYY-MM-DD'), 'Deposit', 2000, 3500.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (25, 113, TO_DATE('2026-03-19', 'YYYY-MM-DD'), 'Deposit', 2500, 6000.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (26, 114, TO_DATE('2025-12-26', 'YYYY-MM-DD'), 'Initial subscription', 1000, 1000.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (27, 114, TO_DATE('2026-02-24', 'YYYY-MM-DD'), 'Deposit', 500, 1500.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (28, 114, TO_DATE('2026-04-25', 'YYYY-MM-DD'), 'Deposit', 1500, 3000.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (29, 115, TO_DATE('2026-02-01', 'YYYY-MM-DD'), 'Initial subscription', 1500, 1500.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (30, 116, TO_DATE('2026-03-10', 'YYYY-MM-DD'), 'Initial subscription', 2500, 2500.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (31, 116, TO_DATE('2026-05-09', 'YYYY-MM-DD'), 'Deposit', 2500, 5000.0);
INSERT INTO SHARE_CAPITAL_TRANSACTION (transaction_id, member_id, transaction_date, transaction_type, amount, running_balance) VALUES (32, 116, TO_DATE('2026-07-08', 'YYYY-MM-DD'), 'Deposit', 1000, 6000.0);

-- COOP_DIVIDEND_PAYOUT: 2025 dividends
INSERT INTO COOP_DIVIDEND_PAYOUT (payout_id, member_id, fiscal_year, payout_date, total_payout_amount, payout_breakdown_notes) VALUES (1, 101, 2025, TO_DATE('2026-03-31', 'YYYY-MM-DD'), 270.0, '6% dividend on share capital (sample rate)');
INSERT INTO COOP_DIVIDEND_PAYOUT (payout_id, member_id, fiscal_year, payout_date, total_payout_amount, payout_breakdown_notes) VALUES (2, 102, 2025, TO_DATE('2026-03-31', 'YYYY-MM-DD'), 270.0, '6% dividend on share capital (sample rate)');
INSERT INTO COOP_DIVIDEND_PAYOUT (payout_id, member_id, fiscal_year, payout_date, total_payout_amount, payout_breakdown_notes) VALUES (3, 103, 2025, TO_DATE('2026-03-31', 'YYYY-MM-DD'), 120.0, '6% dividend on share capital (sample rate)');
INSERT INTO COOP_DIVIDEND_PAYOUT (payout_id, member_id, fiscal_year, payout_date, total_payout_amount, payout_breakdown_notes) VALUES (4, 104, 2025, TO_DATE('2026-03-31', 'YYYY-MM-DD'), 150.0, '6% dividend on share capital (sample rate)');
INSERT INTO COOP_DIVIDEND_PAYOUT (payout_id, member_id, fiscal_year, payout_date, total_payout_amount, payout_breakdown_notes) VALUES (5, 105, 2025, TO_DATE('2026-03-31', 'YYYY-MM-DD'), 90.0, '6% dividend on share capital (sample rate)');
INSERT INTO COOP_DIVIDEND_PAYOUT (payout_id, member_id, fiscal_year, payout_date, total_payout_amount, payout_breakdown_notes) VALUES (6, 106, 2025, TO_DATE('2026-03-31', 'YYYY-MM-DD'), 240.0, '6% dividend on share capital (sample rate)');
INSERT INTO COOP_DIVIDEND_PAYOUT (payout_id, member_id, fiscal_year, payout_date, total_payout_amount, payout_breakdown_notes) VALUES (7, 107, 2025, TO_DATE('2026-03-31', 'YYYY-MM-DD'), 180.0, '6% dividend on share capital (sample rate)');
INSERT INTO COOP_DIVIDEND_PAYOUT (payout_id, member_id, fiscal_year, payout_date, total_payout_amount, payout_breakdown_notes) VALUES (8, 108, 2025, TO_DATE('2026-03-31', 'YYYY-MM-DD'), 270.0, '6% dividend on share capital (sample rate)');
INSERT INTO COOP_DIVIDEND_PAYOUT (payout_id, member_id, fiscal_year, payout_date, total_payout_amount, payout_breakdown_notes) VALUES (9, 109, 2025, TO_DATE('2026-03-31', 'YYYY-MM-DD'), 180.0, '6% dividend on share capital (sample rate)');
INSERT INTO COOP_DIVIDEND_PAYOUT (payout_id, member_id, fiscal_year, payout_date, total_payout_amount, payout_breakdown_notes) VALUES (10, 110, 2025, TO_DATE('2026-03-31', 'YYYY-MM-DD'), 180.0, '6% dividend on share capital (sample rate)');
INSERT INTO COOP_DIVIDEND_PAYOUT (payout_id, member_id, fiscal_year, payout_date, total_payout_amount, payout_breakdown_notes) VALUES (11, 111, 2025, TO_DATE('2026-03-31', 'YYYY-MM-DD'), 30.0, '6% dividend on share capital (sample rate)');
INSERT INTO COOP_DIVIDEND_PAYOUT (payout_id, member_id, fiscal_year, payout_date, total_payout_amount, payout_breakdown_notes) VALUES (12, 112, 2025, TO_DATE('2026-03-31', 'YYYY-MM-DD'), 120.0, '6% dividend on share capital (sample rate)');
INSERT INTO COOP_DIVIDEND_PAYOUT (payout_id, member_id, fiscal_year, payout_date, total_payout_amount, payout_breakdown_notes) VALUES (13, 113, 2025, TO_DATE('2026-03-31', 'YYYY-MM-DD'), 360.0, '6% dividend on share capital (sample rate)');
INSERT INTO COOP_DIVIDEND_PAYOUT (payout_id, member_id, fiscal_year, payout_date, total_payout_amount, payout_breakdown_notes) VALUES (14, 114, 2025, TO_DATE('2026-03-31', 'YYYY-MM-DD'), 180.0, '6% dividend on share capital (sample rate)');
INSERT INTO COOP_DIVIDEND_PAYOUT (payout_id, member_id, fiscal_year, payout_date, total_payout_amount, payout_breakdown_notes) VALUES (15, 115, 2025, TO_DATE('2026-03-31', 'YYYY-MM-DD'), 90.0, '6% dividend on share capital (sample rate)');
INSERT INTO COOP_DIVIDEND_PAYOUT (payout_id, member_id, fiscal_year, payout_date, total_payout_amount, payout_breakdown_notes) VALUES (16, 116, 2025, TO_DATE('2026-03-31', 'YYYY-MM-DD'), 360.0, '6% dividend on share capital (sample rate)');

-- ORDER_ITEM: the products in each order
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (1, 5001, 5, 5, 215.0, 1075.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (2, 5001, 6, 1, 390.0, 390.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (3, 5001, 13, 3, 79.0, 237.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (4, 5001, 7, 1, 24.75, 24.75);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (5, 5002, 5, 5, 215.0, 1075.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (6, 5002, 8, 3, 89.0, 267.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (7, 5002, 3, 1, 245.0, 245.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (8, 5003, 6, 1, 390.0, 390.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (9, 5003, 8, 4, 89.0, 356.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (10, 5003, 7, 5, 24.75, 123.75);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (11, 5004, 14, 5, 145.0, 725.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (12, 5004, 2, 4, 160.0, 640.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (13, 5004, 7, 4, 24.75, 99.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (14, 5004, 9, 5, 118.0, 590.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (15, 5005, 14, 4, 145.0, 580.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (16, 5005, 7, 5, 24.75, 123.75);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (17, 5005, 10, 5, 92.0, 460.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (18, 5006, 10, 2, 92.0, 184.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (19, 5007, 14, 5, 145.0, 725.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (20, 5007, 1, 1, 285.0, 285.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (21, 5008, 8, 1, 89.0, 89.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (22, 5008, 3, 4, 245.0, 980.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (23, 5008, 14, 4, 145.0, 580.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (24, 5008, 4, 5, 42.5, 212.5);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (25, 5009, 9, 3, 118.0, 354.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (26, 5009, 7, 5, 24.75, 123.75);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (27, 5009, 11, 5, 58.0, 290.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (28, 5010, 13, 3, 79.0, 237.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (29, 5010, 7, 3, 24.75, 74.25);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (30, 5010, 14, 1, 145.0, 145.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (31, 5010, 4, 1, 42.5, 42.5);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (32, 5011, 11, 4, 58.0, 232.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (33, 5011, 10, 5, 92.0, 460.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (34, 5012, 6, 4, 390.0, 1560.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (35, 5012, 4, 5, 42.5, 212.5);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (36, 5012, 5, 4, 215.0, 860.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (37, 5012, 8, 4, 89.0, 356.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (38, 5013, 14, 3, 145.0, 435.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (39, 5014, 8, 4, 89.0, 356.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (40, 5014, 13, 5, 79.0, 395.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (41, 5014, 2, 3, 160.0, 480.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (42, 5015, 3, 1, 245.0, 245.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (43, 5015, 7, 3, 24.75, 74.25);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (44, 5015, 12, 4, 135.0, 540.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (45, 5015, 8, 3, 89.0, 267.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (46, 5016, 4, 4, 42.5, 170.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (47, 5017, 8, 1, 89.0, 89.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (48, 5017, 1, 1, 285.0, 285.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (49, 5018, 10, 2, 92.0, 184.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (50, 5018, 9, 2, 118.0, 236.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (51, 5018, 2, 1, 160.0, 160.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (52, 5018, 14, 5, 145.0, 725.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (53, 5019, 13, 5, 79.0, 395.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (54, 5020, 11, 3, 58.0, 174.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (55, 5020, 13, 2, 79.0, 158.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (56, 5020, 14, 1, 145.0, 145.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (57, 5021, 11, 4, 58.0, 232.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (58, 5021, 10, 2, 92.0, 184.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (59, 5021, 13, 5, 79.0, 395.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (60, 5022, 8, 2, 89.0, 178.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (61, 5022, 10, 5, 92.0, 460.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (62, 5023, 2, 2, 160.0, 320.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (63, 5023, 7, 2, 24.75, 49.5);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (64, 5023, 11, 5, 58.0, 290.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (65, 5024, 9, 2, 118.0, 236.0);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (66, 5024, 7, 5, 24.75, 123.75);
INSERT INTO ORDER_ITEM (order_item_id, order_id, product_id, quantity, unit_price, line_total) VALUES (67, 5024, 13, 2, 79.0, 158.0);

-- PAYMENT_RECORD: one payment per non-cancelled order
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5001', 5001, 'GCash', 'DEMO-REF-5001', TO_TIMESTAMP('2025-01-06 09:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Verified');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5002', 5002, 'Bank transfer', 'DEMO-REF-5002', TO_TIMESTAMP('2025-01-20 10:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Verified');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5003', 5003, 'Cash on pickup', 'DEMO-REF-5003', TO_TIMESTAMP('2025-02-03 11:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Verified');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5004', 5004, 'Maya', 'DEMO-REF-5004', TO_TIMESTAMP('2025-02-17 12:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Verified');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5005', 5005, 'GCash', 'DEMO-REF-5005', NULL, 'Awaiting verification');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5007', 5007, 'Cash on pickup', 'DEMO-REF-5007', TO_TIMESTAMP('2025-03-31 15:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Verified');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5008', 5008, 'Maya', 'DEMO-REF-5008', TO_TIMESTAMP('2025-04-14 16:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Verified');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5009', 5009, 'GCash', 'DEMO-REF-5009', TO_TIMESTAMP('2025-04-28 17:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Verified');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5010', 5010, 'Bank transfer', 'DEMO-REF-5010', TO_TIMESTAMP('2025-05-12 09:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Verified');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5011', 5011, 'Cash on pickup', 'DEMO-REF-5011', TO_TIMESTAMP('2025-05-26 10:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Verified');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5012', 5012, 'Maya', 'DEMO-REF-5012', TO_TIMESTAMP('2025-06-09 11:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Verified');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5013', 5013, 'GCash', 'DEMO-REF-5013', NULL, 'Awaiting verification');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5015', 5015, 'Cash on pickup', 'DEMO-REF-5015', TO_TIMESTAMP('2025-07-21 14:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Verified');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5016', 5016, 'Maya', 'DEMO-REF-5016', TO_TIMESTAMP('2025-08-04 15:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Verified');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5017', 5017, 'GCash', 'DEMO-REF-5017', TO_TIMESTAMP('2025-08-18 16:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Verified');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5018', 5018, 'Bank transfer', 'DEMO-REF-5018', TO_TIMESTAMP('2025-09-01 17:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Verified');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5019', 5019, 'Cash on pickup', 'DEMO-REF-5019', TO_TIMESTAMP('2025-09-15 09:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Verified');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5020', 5020, 'Maya', 'DEMO-REF-5020', TO_TIMESTAMP('2025-09-29 10:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Verified');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5021', 5021, 'GCash', 'DEMO-REF-5021', NULL, 'Awaiting verification');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5023', 5023, 'Cash on pickup', 'DEMO-REF-5023', TO_TIMESTAMP('2025-11-10 13:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Verified');
INSERT INTO PAYMENT_RECORD (payment_id, order_id, payment_method, gateway_transaction_ref, payment_confirmed_at, status) VALUES ('PAY-5024', 5024, 'Maya', 'DEMO-REF-5024', TO_TIMESTAMP('2025-11-24 14:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Verified');

-- SHIPMENT_TRACKING: deliveries that have left the store
INSERT INTO SHIPMENT_TRACKING (shipment_id, order_id, courier_id, tracking_number, dispatched_at, delivered_at, shipment_status) VALUES ('SHP-5002', 5002, 2, 'TRK500200', TO_TIMESTAMP('2025-01-20 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-01-20 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Delivered');
INSERT INTO SHIPMENT_TRACKING (shipment_id, order_id, courier_id, tracking_number, dispatched_at, delivered_at, shipment_status) VALUES ('SHP-5003', 5003, 3, 'TRK500300', TO_TIMESTAMP('2025-02-03 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-02-03 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Delivered');
INSERT INTO SHIPMENT_TRACKING (shipment_id, order_id, courier_id, tracking_number, dispatched_at, delivered_at, shipment_status) VALUES ('SHP-5008', 5008, 2, 'TRK500800', TO_TIMESTAMP('2025-04-14 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'In transit');
INSERT INTO SHIPMENT_TRACKING (shipment_id, order_id, courier_id, tracking_number, dispatched_at, delivered_at, shipment_status) VALUES ('SHP-5009', 5009, 3, 'TRK500900', TO_TIMESTAMP('2025-04-28 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-29 01:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Delivered');
INSERT INTO SHIPMENT_TRACKING (shipment_id, order_id, courier_id, tracking_number, dispatched_at, delivered_at, shipment_status) VALUES ('SHP-5011', 5011, 2, 'TRK501100', TO_TIMESTAMP('2025-05-26 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-26 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Delivered');
INSERT INTO SHIPMENT_TRACKING (shipment_id, order_id, courier_id, tracking_number, dispatched_at, delivered_at, shipment_status) VALUES ('SHP-5015', 5015, 3, 'TRK501500', TO_TIMESTAMP('2025-07-21 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-07-21 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Delivered');
INSERT INTO SHIPMENT_TRACKING (shipment_id, order_id, courier_id, tracking_number, dispatched_at, delivered_at, shipment_status) VALUES ('SHP-5017', 5017, 2, 'TRK501700', TO_TIMESTAMP('2025-08-18 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-08-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Delivered');
INSERT INTO SHIPMENT_TRACKING (shipment_id, order_id, courier_id, tracking_number, dispatched_at, delivered_at, shipment_status) VALUES ('SHP-5018', 5018, 3, 'TRK501800', TO_TIMESTAMP('2025-09-01 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-09-02 01:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Delivered');
INSERT INTO SHIPMENT_TRACKING (shipment_id, order_id, courier_id, tracking_number, dispatched_at, delivered_at, shipment_status) VALUES ('SHP-5023', 5023, 2, 'TRK502300', TO_TIMESTAMP('2025-11-10 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-11-10 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Delivered');
INSERT INTO SHIPMENT_TRACKING (shipment_id, order_id, courier_id, tracking_number, dispatched_at, delivered_at, shipment_status) VALUES ('SHP-5024', 5024, 3, 'TRK502400', TO_TIMESTAMP('2025-11-24 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'In transit');

-- CRM_SUPPORT_TICKET: member support tickets
INSERT INTO CRM_SUPPORT_TICKET (ticket_id, member_id, order_id, issue_category, priority, status, created_at, resolved_at, details) VALUES (1, 102, 5002, 'Delivery delay', 'High', 'Resolved', TO_TIMESTAMP('2025-01-21 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-01-22 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Order arrived a day late');
INSERT INTO CRM_SUPPORT_TICKET (ticket_id, member_id, order_id, issue_category, priority, status, created_at, resolved_at, details) VALUES (2, 106, 5006, 'Refund request', 'Medium', 'Resolved', TO_TIMESTAMP('2025-03-20 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-03-21 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Cancelled order refund');
INSERT INTO CRM_SUPPORT_TICKET (ticket_id, member_id, order_id, issue_category, priority, status, created_at, resolved_at, details) VALUES (3, 109, NULL, 'Account access', 'Low', 'Open', TO_TIMESTAMP('2025-08-05 11:15:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'Cannot reset password');
INSERT INTO CRM_SUPPORT_TICKET (ticket_id, member_id, order_id, issue_category, priority, status, created_at, resolved_at, details) VALUES (4, 112, 5012, 'Wrong item', 'High', 'In progress', TO_TIMESTAMP('2025-06-18 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'Received brown sugar instead of white');

COMMIT;
