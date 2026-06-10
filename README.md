<div align="center">

Note: All SQL codes that was used to create the database are in the final documentation.

# AMC CoopMart Database System

### Cooperative Grocery Management Information System

A comprehensive relational database solution designed for cooperative-based grocery operations, integrating membership management, marketing analytics, sales processing, logistics tracking, customer support, community engagement, and cooperative financial management.

![Oracle SQL](https://img.shields.io/badge/Oracle_SQL-Database-red?style=for-the-badge&logo=oracle)
![Database Design](https://img.shields.io/badge/Database-Management-blue?style=for-the-badge)
![Cooperative System](https://img.shields.io/badge/Cooperative-Commerce-green?style=for-the-badge)

</div>

---

## Project Overview

AMC CoopMart is a cooperative grocery management database system designed to support the operational, financial, and community-driven activities of a modern cooperative organization.

The system enables:

- Member registration and subscription management
- Product and supplier management
- Order processing and payment tracking
- Delivery and logistics monitoring
- Customer support management
- Product suggestion and community voting
- Share capital and dividend management
- Marketing performance analytics

The project follows a normalized relational database design implemented using Oracle SQL and applies referential integrity principles through structured foreign key relationships.

---

## Objectives

- Design a scalable cooperative management database
- Implement data integrity through relational modeling
- Support operational and transactional processes
- Enable business analytics and reporting
- Facilitate member participation and engagement
- Manage cooperative financial activities efficiently

---

# System Architecture

The database consists of **21 interconnected tables** organized into six major modules:

## 1️⃣ Membership Module

Manages cooperative members and subscription plans.

Tables:

- MEMBER
- MEMBERSHIP_TIER
- MEMBERSHIP_SUBSCRIPTION

Features:

- Member registration
- Membership plans
- Subscription tracking
- Active member monitoring

---

## 2️⃣ Marketing Module

Tracks acquisition channels and campaign effectiveness.

Tables:

- ACQUISITION_PLATFORM
- MARKETING_CAMPAIGN
- CAMPAIGN_PLATFORM_PERFORMANCE

Features:

- Campaign management
- Platform analytics
- Marketing ROI monitoring
- Acquisition source tracking

---

## 3️⃣ Payment & Logistics Module

Handles transactions and order fulfillment.

Tables:

- PRODUCT
- SUPPLIER
- PRODUCT_SUPPLIER
- SHOP_ORDER
- ORDER_ITEM
- PAYMENT_RECORD
- SHIPMENT_TRACKING
- COURIER_PARTNER

Features:

- Inventory management
- Supplier management
- Order processing
- Payment tracking
- Shipment monitoring

---

## 4️⃣ Cooperative Engagement Module

Supports member participation and product suggestions.

Tables:

- PRODUCT_SUGGESTION
- VOTING_EVENT
- VOTE_CAST

Features:

- Product recommendations
- Community voting
- Member participation
- Cooperative decision-making

---

## 5️⃣ CRM Module

Manages customer concerns and support operations.

Tables:

- CRM_SUPPORT_TICKET

Features:

- Ticket management
- Issue tracking
- Resolution monitoring
- Customer support analytics

---

## 6️⃣ Cooperative Financials Module

Handles cooperative ownership and profit-sharing.

Tables:

- SHARE_CAPITAL_ACCOUNT
- SHARE_CAPITAL_TRANSACTION
- COOP_DIVIDEND_PAYOUT

Features:

- Share capital management
- Financial transaction tracking
- Dividend computation
- Profit distribution

---

# Database Design

## Entity Summary

| Module | Number of Tables |
|----------|----------|
| Membership | 3 |
| Marketing | 3 |
| Payment & Logistics | 8 |
| Cooperative Engagement | 3 |
| CRM | 1 |
| Cooperative Financials | 3 |
| **Total** | **21** |

---

# Database Relationship Flow

```text
ACQUISITION_PLATFORM
        │
        ▼
     MEMBER
        │
 ┌──────┼─────────┐
 ▼      ▼         ▼
MEMBERSHIP     SHOP_ORDER
SUBSCRIPTION      │
                  ▼
            ORDER_ITEM
                  │
        ┌─────────┴─────────┐
        ▼                   ▼
 PAYMENT_RECORD      SHIPMENT_TRACKING

MEMBER
 ├── PRODUCT_SUGGESTION
 ├── VOTE_CAST
 ├── CRM_SUPPORT_TICKET
 ├── SHARE_CAPITAL_ACCOUNT
 ├── SHARE_CAPITAL_TRANSACTION
 └── COOP_DIVIDEND_PAYOUT
```

---

# Analytics Supported

The system supports business intelligence dashboards such as:

### Marketing Analytics

- Member Acquisition by Platform
- Campaign Budget Analysis
- Platform Engagement Metrics
- Membership Tier Distribution

### Sales Analytics

- Monthly Revenue Trends
- Revenue by Product Category
- Order Status Distribution
- Average Order Value

### Logistics Analytics

- Shipment Status Monitoring
- Payment Method Distribution
- Delivery Performance Tracking

### Cooperative Analytics

- Voting Participation
- Product Suggestion Trends
- Share Capital Growth
- Dividend Distribution

---

# Technologies Used

- Oracle SQL
- Oracle Database 19c
- SQL DDL
- SQL DML
- Relational Database Modeling

---

# Repository Structure

```text
AMC-CoopMart-Database-System/
│
├── SQL/
│   ├── create_tables.sql
│   ├── insert_data.sql
│   ├── constraints.sql
│   └── queries.sql
│
├── Documentation/
│   ├── Data_Dictionary.pdf
│   ├── Database_Design.pdf
│   ├── ERD.png
│   └── Project_Documentation.pdf
│
├── Screenshots/
│   ├── User_Interface/
│   └── Admin_Interface/
│
├── Analytics/
│   └── Dashboard_Mockups/
│
└── README.md
```

---

# Future Enhancements

- Web-based Cooperative Portal
- Mobile Application Integration
- Real-time Dashboard Reporting
- AI-powered Product Recommendations
- Automated Dividend Computation
- Cloud Database Deployment

---

# Authors

This project was developed by Group 1 as part of the Information Management course.

### Team Responsibilities

| Role | Responsibilities |
|--------|------------------|
| Kalaw, James Andre | Team leader, Database Manager, Database Design, Building the ERD, Creation of tables, population of tables |
| Detera, Juliana Ysabel | Database Schema, Data gathering |
| Ituralde, Josh Andrei | Data verifier, Data flow diagram, Compilation of errors |
| Semilla, Mia Ysabel  | Main GUI, Documentation, Database Verifier |
| Palijado, Joseph Jennard | Context diagram, Documentation, Database table structure |


---

<div align="center">

### Empowering Cooperative Commerce Through Data

⭐ If you found this project helpful, consider giving it a star!

</div>
