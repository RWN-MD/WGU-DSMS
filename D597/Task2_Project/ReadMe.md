# D597 Task 2 Project

## Overview
This project implements a non-relational (NoSQL) database solution for HealthFit Innovations' HealthTrack platform. The solution is designed to efficiently store, manage, and analyze diverse health-related data from patients and fitness trackers using MongoDB.

The project includes:
- A **Design Document** (separate from this README) outlining the business problem, data model, scalability concerns, and security measures for the NoSQL solution.
- MongoDB scripts for creating the database instance, importing JSON data, executing queries, and applying optimization techniques.

## Project Directory Structure
~~~
D597/Task2_Project/
├── README.md # This file: project overview and instructions
├── DESIGN_DOCUMENT.md # Detailed design document outlining the solution
└── mongo/
|   ├── 01_create_database.js # Script to create the MongoDB database and collections
|   ├── 02_import_data.js # Script to import JSON data into the database
|   ├── 03_queries.js # Script containing business-critical queries
|   └── 04_optimize_queries.js # Script for query optimization techniques
└── datasets/
    ├── OMITTED due to size (medical.json # JSON file containing patient data)
    └── Task2Scenario1_Dataset1_fitness_trackers.json # JSON file containing fitness tracker data
~~~

## How to Run the Project

1. **Create the Database:**
   - Open the `01_create_database.js` file in your MongoDB shell or MongoDB Compass.
   - Execute the script to create the database instance named **D597 Task 2** and set up the necessary collections.

2. **Import Data:**
   - Open the `02_import_data.js` file.
   - Adjust file paths if needed, then execute the script to import JSON data from the `datasets` folder into the appropriate collections.

3. **Run Queries:**
   - Open the `03_queries.js` file.
   - Execute the queries to extract insights that address the business problem (e.g., linking patient data with fitness tracker details).

4. **Optimize Performance:**
   - Open the `04_optimize_queries.js` file.
   - Execute the script to create indexes and apply other optimization techniques. Review the output to confirm improved query performance.

## Presentation

- A walkthrough video has been recorded using Panopto, demonstrating the functionality of the MongoDB solution, including database creation, data import, query execution, and performance optimization.
- The presentation covers the overall design, implementation details, and scalability of the solution.

## Acknowledgments

- The design and implementation follow industry best practices in NoSQL database development, as described in references such as *"MongoDB: The Definitive Guide"* by Kristina Chodorow.
- These principles guided the flexible schema design, horizontal scalability, and performance optimizations implemented in this project.
- No external sources have been directly quoted; the guidelines are based on widely recognized standards in document-based database design.

## Contact

For any questions or additional information, please contact Russell Nordquist at rnordq2@my.wgu.edu.
