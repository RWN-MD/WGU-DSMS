# Design Document

## A. Scenario Selection and Business Problem

### 1. Business Problem
HealthFit Innovations is developing the HealthTrack platform to integrate data from various sources, including wearable fitness devices and patient medical records. Currently, the growing volume and variety of health data (e.g., device information, patient demographics, clinical history) are causing performance bottlenecks and data silos in the existing system. These challenges hinder the platform’s ability to provide real-time health insights, personalized recommendations, and proactive patient care.

### 2. Proposed Data Structure
A relational database solution is proposed to consolidate and normalize data from two key datasets:

1. **FitnessTrackers** (from **D597 Task 1 Dataset 1_Fitness_trackers**)
2. **MedicalRecords** (from **D597 Task 1 Dataset 3_medical_records**)

By storing device information (brand, model, pricing, and ratings) alongside patient clinical data (name, medical conditions, medications, and allergies), the system can generate more comprehensive health insights.

### 3. Justification for a Database Solution
- **Centralized Data:** Integrates wearable device information and patient records into a single repository, eliminating silos.
- **Efficient Queries:** Allows complex queries to correlate device usage (via the “Tracker” field) with patient outcomes or medical conditions.
- **Data Integrity:** Enforces relationships and constraints, ensuring consistent patient and device data.
- **Scalability:** Facilitates indexing, partitioning, and distributed deployments to handle expanding data volumes.

### 4. Use of Business Data Within the Database
- **Device-Patient Correlation:** Linking “Tracker” in the medical records to specific device models helps analyze how different trackers influence or correlate with patient outcomes.
- **Performance & Trend Analysis:** Combining brand, rating, and average battery life with patient usage patterns can reveal trends in device efficacy and user satisfaction.
- **Clinical Decision Support:** Access to up-to-date patient medical information (conditions, medications, allergies) alongside device data enables more personalized health recommendations.

---

## B. Logical Data Model

### 1. FitnessTrackers Table
- **Table Name:** `FitnessTrackers`
- **Columns:**
  1. `Brand Name`
  2. `Device Type`
  3. `Model Name`
  4. `Color`
  5. `Selling Price`
  6. `Original Price`
  7. `Display`
  8. `Rating (Out of 5)`
  9. `Strap Material`
  10. `Average Battery Life (in days)`
  11. `Reviews`

### 2. MedicalRecords Table
- **Table Name:** `MedicalRecords`
- **Columns:**
  1. `patient_id`
  2. `name`
  3. `date_of_birth`
  4. `gender`
  5. `medical_conditions`
  6. `medications`
  7. `allergies`
  8. `last_appointment_date`
  9. `Tracker`

### 3. Relationships
- **MedicalRecords to FitnessTrackers:**
  - The `Tracker` column in `MedicalRecords` can link to a corresponding column in `FitnessTrackers`—for example, the `Model Name`. This relationship helps correlate which device a patient is using with their medical data.
  - If necessary, introduce a bridging table or surrogate keys if there is no direct 1:1 match between `Tracker` and `Model Name`.

---

## C. Database Objects and Storage

**Database Objects:**
- **Tables:**
  - `FitnessTrackers` for device data
  - `MedicalRecords` for patient clinical data
- **Indexes:**
  - Primary and/or composite keys (e.g., `Model Name` in `FitnessTrackers`, `patient_id` in `MedicalRecords`)
  - Additional indexes on frequently searched columns (e.g., `Brand Name`, `Tracker`)
- **Constraints:**
  - Foreign key constraints if `Tracker` maps directly to `Model Name`
- **Views:**
  - For joining patient info and device info, e.g., `PatientDeviceView`
- **Stored Procedures/Functions:**
  - For importing data from the provided CSV/Excel files
  - For common queries (e.g., retrieving patient data by device brand or model)

**Storage Considerations:**
- Data is stored via the DBMS’s file structures (file groups or tablespaces).
- Column data types align with the actual data (numeric for prices, date for `date_of_birth`, etc.).
- Proper sizing ensures efficient storage and performance.

---

## D. Scalability Considerations

- **Normalization:** Minimizes redundancy by separating device data from medical records.
- **Indexing:** Speeds up lookups on key fields like `patient_id`, `Model Name`, and `Tracker`.
- **Partitioning:** Useful for large tables, potentially partitioning by `last_appointment_date` or similar.
- **Distributed Architecture:** The database can be replicated or sharded to handle large read/write loads.
- **Cloud Deployment:** Hosting on a cloud DB service allows dynamic resource scaling.

---

## E. Privacy and Security Measures

- **Encryption:** Sensitive patient information is encrypted at rest and in transit.
- **Access Control:** Role-based access control (RBAC) ensures only authorized healthcare personnel can view or modify patient data.
- **Authentication:** Enforces strong password policies and multi-factor authentication (MFA).
- **Audit Logging:** Monitors data access, updates, and deletions for compliance and security.
- **Regulatory Compliance:** Aligns with healthcare regulations (e.g., HIPAA) to protect patient confidentiality.
- **Network Security:** Secure protocols (SSL/TLS), firewalls, and VPNs protect data in transit.
- **Backups and Recovery:** Automated backups and disaster recovery plans minimize data loss.
