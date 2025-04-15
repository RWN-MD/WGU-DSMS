# D597 Task 1 Project

## Overview 
This project implements a relational database solution for HealthFit Innovations' HealthTrack platform. The solution is designed to efficiently store, manage, and analyze diverse health-related data from wearable devices and electronic health records (EHRs).

The project includes:
- A **Design Document** (separate from this README) outlining the business problem, data model, database objects, scalability concerns, and security measures.
- SQL scripts for creating the database, importing data, executing queries, and optimizing query performance.

## Project Directory Structure
~~~
/D597/Task1_Project/
├── README.md                     # This file: project overview and instructions
├── DESIGN_DOCUMENT.md            # Detailed design document outlining the solution
├── sql/
|   ├── 01_create_database.sql    # SQL script to create the database and tables
|   ├── 02_import_data.sql        # SQL script to import CSV data into the database
|   ├── 03_queries.sql            # SQL script containing business-critical queries
|   └── 04_optimize_queries.sql   # SQL script for query optimization techniques
└── datasets/
    ├── D597 Task 1 Dataset 1_Fitness_trackers.csv # CSV file containing fitness tracker data
    └── D597 Task 1 Dataset 3_medical_records.csv # CSV file containing patient data
~~~

## How to Run the Project

1. **Create the Database:**
   - Open the `01_create_database.sql` file in your SQL environment (e.g., SQL Server Management Studio).
   - Execute the script to create the database instance named **D597 Task 1** and set up the necessary tables.

2. **Import Data:**
   - Open the `02_import_data.sql` file.
   - Adjust file paths if needed, then execute the script to bulk import data from the provided CSV files into the database.

3. **Run Queries:**
   - Open the `03_queries.sql` file.
   - Execute the queries to extract insights that address the business problem (e.g., linking device usage with patient outcomes).

4. **Optimize Performance:**
   - Open the `04_optimize_queries.sql` file.
   - Execute the script to create indexes and apply other optimizations. Review the output to see improved query performance.

## Presentation

- A walkthrough video has been recorded using Panopto, demonstrating the functioning of the database solution, query execution, and optimization techniques.
- The presentation covers the overall design, implementation details, and scalability of the solution.

## Acknowledgments

- The design and implementation follow industry best practices in database development, as outlined in standard references such as:
  - *Database System Concepts* by Silberschatz, Korth, and Sudarshan.
  - *SQL and Relational Theory: How to Write Accurate SQL Code* by C.J. Date.
- These sources provide foundational guidelines for normalization, indexing, scalability, and security that inform our design.
- No external sources have been directly quoted; the guidelines are based on these established and widely recognized principles in database design.

## Contact

For any questions or additional information, please contact Russell Nordquist at rnordq2@my.wgu.edu.
