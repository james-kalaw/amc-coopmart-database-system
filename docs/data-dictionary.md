# Data dictionary

Generated from [`sql/01_create_tables.sql`](../sql/01_create_tables.sql). PK = primary key, FK = foreign key.

- [MEMBERSHIP_TIER](#membership_tier): Membership plans and their discounts
- [ACQUISITION_PLATFORM](#acquisition_platform): Channels through which members join
- [MARKETING_CAMPAIGN](#marketing_campaign): Campaigns and their budgets and dates
- [PRODUCT](#product): Items the store sells, with price and stock
- [SUPPLIER](#supplier): Companies that supply products
- [COURIER_PARTNER](#courier_partner): Delivery companies
- [VOTING_EVENT](#voting_event): Decisions put to a member vote
- [MEMBER](#member): Registered cooperative members
- [CAMPAIGN_PLATFORM_PERFORMANCE](#campaign_platform_performance): Impressions, clicks and spend of each campaign per platform
- [PRODUCT_SUPPLIER](#product_supplier): Which supplier provides which product, at what cost (many-to-many)
- [MEMBERSHIP_SUBSCRIPTION](#membership_subscription): A member's plan and its validity
- [SHOP_ORDER](#shop_order): An order placed by a member
- [PRODUCT_SUGGESTION](#product_suggestion): Products members ask the store to carry
- [VOTE_CAST](#vote_cast): One member's ballot in a vote
- [SHARE_CAPITAL_ACCOUNT](#share_capital_account): Each member's share capital balance
- [SHARE_CAPITAL_TRANSACTION](#share_capital_transaction): Deposits and withdrawals of share capital
- [COOP_DIVIDEND_PAYOUT](#coop_dividend_payout): Dividends paid to members per fiscal year
- [ORDER_ITEM](#order_item): Products and quantities in an order
- [PAYMENT_RECORD](#payment_record): Payment for an order and its verification
- [SHIPMENT_TRACKING](#shipment_tracking): Delivery of an order by a courier
- [CRM_SUPPORT_TICKET](#crm_support_ticket): Member support issues


## MEMBERSHIP_TIER

**Module:** Membership. Membership plans and their discounts.

| Column | Type | Rules |
|---|---|---|
| `tier_id` | NUMBER | PK, auto-numbered (identity) |
| `tier_name` | VARCHAR2(50) | required |
| `annual_fee` | NUMBER(10,2) | required |
| `discount_percentage` | NUMBER(5,2) | required |

## ACQUISITION_PLATFORM

**Module:** Marketing. Channels through which members join.

| Column | Type | Rules |
|---|---|---|
| `platform_id` | NUMBER | PK, auto-numbered (identity) |
| `platform_name` | VARCHAR2(100) | required |
| `details` | VARCHAR2(4000) |  |

## MARKETING_CAMPAIGN

**Module:** Marketing. Campaigns and their budgets and dates.

| Column | Type | Rules |
|---|---|---|
| `campaign_id` | NUMBER | PK, auto-numbered (identity) |
| `campaign_name` | VARCHAR2(120) | required |
| `total_budget` | NUMBER(12,2) | required |
| `start_date` | DATE | required |
| `end_date` | DATE | required |

## PRODUCT

**Module:** Payment & Logistics. Items the store sells, with price and stock.

| Column | Type | Rules |
|---|---|---|
| `product_id` | NUMBER | PK, auto-numbered (identity) |
| `product_name` | VARCHAR2(120) | required |
| `description` | VARCHAR2(4000) |  |
| `price` | NUMBER(10,2) | required |
| `stock_quantity` | NUMBER | required |
| `unit_of_measure` | VARCHAR2(20) | required |
| `category` | VARCHAR2(80) | required |
| `reorder_level` | NUMBER | required |

## SUPPLIER

**Module:** Payment & Logistics. Companies that supply products.

| Column | Type | Rules |
|---|---|---|
| `supplier_id` | NUMBER | PK, auto-numbered (identity) |
| `supplier_name` | VARCHAR2(150) | required |
| `location` | VARCHAR2(150) |  |
| `contact_info` | VARCHAR2(150) | unique |

## COURIER_PARTNER

**Module:** Payment & Logistics. Delivery companies.

| Column | Type | Rules |
|---|---|---|
| `courier_id` | NUMBER | PK, auto-numbered (identity) |
| `company_name` | VARCHAR2(120) | required |
| `service_type` | VARCHAR2(80) | required |
| `contact_info` | VARCHAR2(120) |  |

## VOTING_EVENT

**Module:** Cooperative Engagement. Decisions put to a member vote.

| Column | Type | Rules |
|---|---|---|
| `vote_id` | NUMBER | PK, auto-numbered (identity) |
| `title` | VARCHAR2(150) | required |
| `description` | VARCHAR2(4000) |  |
| `start_date` | DATE | required |
| `end_date` | DATE | required |
| `created_by_admin` | NUMBER | required |

## MEMBER

**Module:** Membership. Registered cooperative members.

| Column | Type | Rules |
|---|---|---|
| `member_id` | NUMBER | PK, auto-numbered (identity) |
| `email` | VARCHAR2(150) | required, unique |
| `password_hash` | VARCHAR2(255) | required |
| `full_name` | VARCHAR2(120) | required |
| `phone_number` | VARCHAR2(20) | unique |
| `address` | VARCHAR2(4000) |  |
| `join_date` | DATE | required, default SYSDATE |
| `acquisition_platform_id` | NUMBER | FK → ACQUISITION_PLATFORM.platform_id |
| `acquisition_details` | VARCHAR2(4000) |  |
| `is_active` | NUMBER(1) | required, default 1, check: `is_active IN (0,1)` |

## CAMPAIGN_PLATFORM_PERFORMANCE

**Module:** Marketing. Impressions, clicks and spend of each campaign per platform.

| Column | Type | Rules |
|---|---|---|
| `performance_id` | NUMBER | PK, auto-numbered (identity) |
| `campaign_id` | NUMBER | required, FK → MARKETING_CAMPAIGN.campaign_id |
| `platform_name` | VARCHAR2(100) | required |
| `impressions_count` | NUMBER | required |
| `clicks_count` | NUMBER | required |
| `spend_on_platform` | NUMBER(12,2) | required |

## PRODUCT_SUPPLIER

**Module:** Payment & Logistics. Which supplier provides which product, at what cost (many-to-many).

| Column | Type | Rules |
|---|---|---|
| `product_id` | NUMBER | PK, required, FK → PRODUCT.product_id |
| `supplier_id` | NUMBER | PK, required, FK → SUPPLIER.supplier_id |
| `cost_price` | NUMBER(10,2) | required |

## MEMBERSHIP_SUBSCRIPTION

**Module:** Membership. A member's plan and its validity.

| Column | Type | Rules |
|---|---|---|
| `subscription_id` | NUMBER | PK, auto-numbered (identity) |
| `member_id` | NUMBER | required, FK → MEMBER.member_id |
| `tier_id` | NUMBER | required, FK → MEMBERSHIP_TIER.tier_id |
| `status` | VARCHAR2(30) | required |
| `start_date` | DATE | required |
| `expiry_date` | DATE | required |
| `is_active` | NUMBER(1) | required, default 1, check: `is_active IN (0,1)` |

## SHOP_ORDER

**Module:** Payment & Logistics. An order placed by a member.

| Column | Type | Rules |
|---|---|---|
| `order_id` | NUMBER | PK, auto-numbered (identity) |
| `member_id` | NUMBER | required, FK → MEMBER.member_id |
| `order_placed_at` | TIMESTAMP | required |
| `subtotal_amount` | NUMBER(12,2) | required |
| `discount_applied` | NUMBER(12,2) | required |
| `final_total_applied` | NUMBER(12,2) | required |
| `order_status` | VARCHAR2(50) | required |
| `fulfillment_type` | VARCHAR2(50) | required |
| `pickup_store_id` | NUMBER |  |
| `delivery_address` | VARCHAR2(4000) |  |

## PRODUCT_SUGGESTION

**Module:** Cooperative Engagement. Products members ask the store to carry.

| Column | Type | Rules |
|---|---|---|
| `suggestion_id` | NUMBER | PK, auto-numbered (identity) |
| `member_id` | NUMBER | required, FK → MEMBER.member_id |
| `product_name` | VARCHAR2(120) | required |
| `description` | VARCHAR2(4000) |  |
| `status` | VARCHAR2(50) | required |
| `date_submitted` | DATE | required |
| `supply_status` | VARCHAR2(50) |  |

## VOTE_CAST

**Module:** Cooperative Engagement. One member's ballot in a vote.

| Column | Type | Rules |
|---|---|---|
| `vote_cast_id` | NUMBER | PK, auto-numbered (identity) |
| `vote_id` | NUMBER | required, FK → VOTING_EVENT.vote_id |
| `member_id` | NUMBER | required, FK → MEMBER.member_id |
| `choice` | VARCHAR2(50) | required |
| `date_voted` | TIMESTAMP | required |

## SHARE_CAPITAL_ACCOUNT

**Module:** Cooperative Financials. Each member's share capital balance.

| Column | Type | Rules |
|---|---|---|
| `account_id` | NUMBER | PK, auto-numbered (identity) |
| `member_id` | NUMBER | required, unique, FK → MEMBER.member_id |
| `share_capital_balance` | NUMBER(12,2) | required |

## SHARE_CAPITAL_TRANSACTION

**Module:** Cooperative Financials. Deposits and withdrawals of share capital.

| Column | Type | Rules |
|---|---|---|
| `transaction_id` | NUMBER | PK, auto-numbered (identity) |
| `member_id` | NUMBER | required, FK → MEMBER.member_id |
| `transaction_date` | DATE | required |
| `transaction_type` | VARCHAR2(50) | required |
| `amount` | NUMBER(12,2) | required |
| `running_balance` | NUMBER(12,2) | required |

## COOP_DIVIDEND_PAYOUT

**Module:** Cooperative Financials. Dividends paid to members per fiscal year.

| Column | Type | Rules |
|---|---|---|
| `payout_id` | NUMBER | PK, auto-numbered (identity) |
| `member_id` | NUMBER | required, FK → MEMBER.member_id |
| `fiscal_year` | NUMBER(4) | required |
| `payout_date` | DATE | required |
| `total_payout_amount` | NUMBER(12,2) | required |
| `payout_breakdown_notes` | VARCHAR2(4000) |  |

## ORDER_ITEM

**Module:** Payment & Logistics. Products and quantities in an order.

| Column | Type | Rules |
|---|---|---|
| `order_item_id` | NUMBER | PK, auto-numbered (identity) |
| `order_id` | NUMBER | required, FK → SHOP_ORDER.order_id |
| `product_id` | NUMBER | required, FK → PRODUCT.product_id |
| `quantity` | NUMBER | required |
| `unit_price` | NUMBER(10,2) | required |
| `line_total` | NUMBER(12,2) | required |

## PAYMENT_RECORD

**Module:** Payment & Logistics. Payment for an order and its verification.

| Column | Type | Rules |
|---|---|---|
| `payment_id` | VARCHAR2(20) | PK |
| `order_id` | NUMBER | required, FK → SHOP_ORDER.order_id |
| `payment_method` | VARCHAR2(50) | required |
| `gateway_transaction_ref` | VARCHAR2(150) | unique |
| `payment_confirmed_at` | TIMESTAMP |  |
| `status` | VARCHAR2(40) | required |

## SHIPMENT_TRACKING

**Module:** Payment & Logistics. Delivery of an order by a courier.

| Column | Type | Rules |
|---|---|---|
| `shipment_id` | VARCHAR2(30) | PK |
| `order_id` | NUMBER | required, FK → SHOP_ORDER.order_id |
| `courier_id` | NUMBER | required, FK → COURIER_PARTNER.courier_id |
| `tracking_number` | VARCHAR2(120) |  |
| `dispatched_at` | TIMESTAMP |  |
| `delivered_at` | TIMESTAMP |  |
| `shipment_status` | VARCHAR2(50) | required |

## CRM_SUPPORT_TICKET

**Module:** CRM. Member support issues.

| Column | Type | Rules |
|---|---|---|
| `ticket_id` | NUMBER | PK, auto-numbered (identity) |
| `member_id` | NUMBER | required, FK → MEMBER.member_id |
| `order_id` | NUMBER | FK → SHOP_ORDER.order_id |
| `issue_category` | VARCHAR2(80) | required |
| `priority` | VARCHAR2(20) | required |
| `status` | VARCHAR2(50) | required |
| `created_at` | TIMESTAMP | required |
| `resolved_at` | TIMESTAMP |  |
| `details` | VARCHAR2(4000) |  |
