# Library Management System

## Overview
This project is a library management system designed to showcase SQL skills. It includes scripts for creating tables, inserting sample data, and performing various SQL operations.

## Database Schema
- **Books**: Contains information about the books available in the library.
  - `bookID` (INT, Primary Key)
  - `title` (VARCHAR(255))
  - `author` (VARCHAR(255))
  - `category` (VARCHAR(255))
  - `ISBN` (VARCHAR(255))
  - `publication_year` (INT)
  - `available_copies` (INT)

## Usage
1. **Create Tables and Insert Data**: Run `create_and_insert_books.sql` to create the Books table and insert sample data.
2. **Explore Queries**: Check the `queries` folder for example SQL queries that demonstrate various operations.

## Data Files
