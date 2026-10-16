# ETL Pipeline Validation Report

## Project
Global E-Commerce Sales ETL & Data Analysis Pipeline

## Validation Results

The ETL validation was performed using Python, Pandas, and SQLite.

- Missing Values: 0
- Duplicate Records: 0
- Customers: 1,778
- Products: 48
- Orders: 2,000
- Order Items: 2,000
- Order Count Validation: Passed
- Order Items Count Validation: Passed
- Foreign Key Errors: 0
- CSV Total Revenue: 484,559.34
- Database Total Revenue: 484,559.34
- Revenue Consistency Check: Passed

## Conclusion

All implemented validation checks passed successfully. The cleaned dataset contains no missing values or exact duplicate records. The database contains the expected number of orders and order items, with no foreign-key violations.

The total revenue calculated from the SQLite database matches the cleaned CSV, demonstrating consistency between the source used for loading and the stored database records.
