// Connect to MongoDB and create the database and necessary collections

// Switch to (or create) the database named "D597 Task 2"
use("D597 Task 2");

// Create collections for patients and trackers
db.createCollection("patients");
db.createCollection("trackers");

print("Database and collections created successfully.");
