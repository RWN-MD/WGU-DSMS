# 📁 MKN1 Task 2: Non-Relational Database Design and Implementation

## 🎯 Project: HealthTrack Platform - MongoDB Integration

This repository documents the end-to-end design and implementation of a MongoDB-based solution integrating patient and fitness tracker data for HealthFit Innovations.

---

## 🧠 Business Problem

**🎙️ Presenter Script:**

> HealthFit Innovations needs a reliable way to manage both patient medical records and data from wearable fitness devices. Currently, their systems struggle with inconsistent data formats, limited scalability, and a lack of real-time insights. To solve this, I designed a solution that integrates diverse JSON data using MongoDB, a document-based NoSQL database, ideal for health tech applications.

**📸 Visual to Show:**
- Slide showing sample patient JSON and tracker JSON side-by-side.
- Highlight key schema elements like `"tracker"` in patient documents.

---

## 🧰 Chosen Solution: NoSQL (MongoDB)

**🎙️ Presenter Script:**

> MongoDB was selected because it handles unstructured JSON natively, supports horizontal scaling, and allows dynamic document structures. This is crucial since fitness tracker metadata changes often, and patient records evolve over time. MongoDB’s aggregation framework and indexing also support the analytic needs of clinicians and data scientists.

**📸 Visual to Show:**
- MongoDB logo and architecture diagram.
- Callout showing BSON format aligning with JSON input.

---

## 🗂️ Data Sources

- `medical.json` — Contains fields like `name`, `medical_conditions`, `tracker`, and `last_appointment_date`.
- `Task2Scenario1_Dataset1_fitness_trackers.json` — Holds fields like `Model Name`, `Display`, `Battery Life`, and `Rating`.

**🎙️ Presenter Script:**

> The two datasets—patients and trackers—are naturally represented in JSON and come from distinct sources. They’re joined by the `tracker` field, which matches model names to patient usage. This simple key-based linkage supports flexible analytics.

**📸 Visual to Show:**
- Screenshot of a MongoDB Compass collection view showing one patient document and one tracker document.

---

## 🧱 Database Design

**🎙️ Presenter Script:**

> I structured the solution into two MongoDB collections: `patients` and `trackers`. The `patients` collection stores health data and references a fitness tracker by model name. The `trackers` collection captures device specifications and ratings. Together, these collections support cross-referencing for personalized health recommendations.

**📸 Visual to Show:**
- ERD-style diagram showing one-to-many link from `patients.tracker` → `trackers._id`.

---

## 🛠️ Implementation Steps

### 1️⃣ Create Database

**File:** `01_create_database.js`

```javascript
use("D597 Task 2");
db.createCollection("patients");
db.createCollection("trackers");
```
**🎙️ Presenter Script:**

> In the MongoDB shell, I first created the `D597 Task 2` database and initialized two collections: `patients` and `trackers`.

**📸 Visual to Show:**
- Screenshot of shell output confirming `use` and `createCollection`.

---

### 2️⃣ Import Data

**File:** `02_import_data.sh`

```bash
mongoimport --db "D597 Task 2" --collection "patients" --file "./datasets/medical.json" --jsonArray
mongoimport --db "D597 Task 2" --collection "trackers" --file "./datasets/Task2Scenario1_Dataset1_fitness_trackers.json" --jsonArray
```

**🎙️ Presenter Script:**

> I used `mongoimport` to load the datasets into the appropriate collections. This allows the data to be immediately queryable and integrated across patient and tracker records.

**📸 Visual to Show:**
- Terminal output of mongoimport command.
- Compass showing inserted documents.

---

### 3️⃣ Business-Critical Queries

**File:** `03_queries.js`

```javascript
// Query 1: Patients with diabetes and their tracker info
// Query 2: Sort patients by appointment date
// Query 3: Avg. rating of trackers used by patients with hypertension
```

**🎙️ Presenter Script:**

> I wrote three queries. The first finds diabetic patients and their devices. The second sorts by most recent appointments for triage. The third aggregates ratings of devices used by hypertension patients to understand hardware impact on outcomes.

**📸 Visual to Show:**
- Compass shell output of each query.
- Slide summarizing what each query achieves.

---

### 4️⃣ Optimize Queries

**File:** `04_optimize_queries.js`

```javascript
db.patients.createIndex({ medical_conditions: 1 });
db.patients.createIndex({ last_appointment_date: -1 });
db.trackers.createIndex({ rating: 1 });
```

**🎙️ Presenter Script:**

> To improve performance, I added indexes. The first boosts search speed for conditions like diabetes. The second optimizes sorting by appointment date. The third supports rapid filtering by tracker ratings. Indexing significantly reduces query latency.

**📸 Visual to Show:**
- Screenshot of `db.collection.getIndexes()` confirming applied indexes.
- Performance comparison (e.g., time before/after optimization).

---

## ⚖️ Scalability & Security

**🎙️ Presenter Script:**

> MongoDB scales horizontally via sharding. Its dynamic schema accommodates evolving device models. For security, the system supports TLS encryption, role-based access, audit logs, and HIPAA-aligned controls like data anonymization and backups.

**📸 Visual to Show:**
- Diagram showing MongoDB sharding.
- Bullet list of HIPAA-aligned security measures.

---

## 📚 References

- Chodorow, Kristina. *MongoDB: The Definitive Guide*. O'Reilly Media.
- MongoDB Docs: https://www.mongodb.com/docs/

---

## 👤 Author

Russell Nordquist  
📧 rnordq2@wgu.edu

