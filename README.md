# Product Review & Rating Platform

## Overview
This project is an Oracle database-backed application for managing products, users, reviews, and ratings. It demonstrates database design, normalization, SQL implementation, and data management principles.

## Project Objectives
- Design a normalized relational database in 3NF
- Implement tables, keys, and constraints in Oracle
- Populate the database with representative sample data
- Provide reset and testing scripts
- Document the design with an ER diagram and final report

## Repository Structure
- `sql/schema.sql` - DDL for table creation, primary keys, foreign keys, and constraints
- `sql/sample_data.sql` - INSERT statements with representative sample data
- `sql/reset.sql` - Script to reset database objects
- `sql/Test.sql` - Validation and testing queries
- `docs/diagrams/` - ER diagram and schema visuals
- `docs/report/` - Final report in DOCX/PDF format
- `docs/screenshots/` - Screenshots of successful execution
- `notes/` - Business rules and design notes

## Execution Order
1. Run `sql/reset.sql`
2. Run `sql/schema.sql`
3. Run `sql/sample_data.sql`
4. Run `sql/Test.sql`

## Platform
Oracle Database

## Key Features
- User and product management
- Product reviews and ratings
- Relational integrity through PK/FK constraints
- Sample analytical queries on ratings and reviews

