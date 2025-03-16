// Create indexes to improve query performance

// Create an index on medical_conditions in the patients collection to speed up condition-based searches.
db.patients.createIndex({ medical_conditions: 1 });
print("Index created on patients.medical_conditions");

// Create an index on last_appointment_date to optimize sorting by appointment date.
db.patients.createIndex({ last_appointment_date: -1 });
print("Index created on patients.last_appointment_date");

// Create an index on rating in the trackers collection for faster aggregation on ratings.
db.trackers.createIndex({ rating: 1 });
print("Index created on trackers.rating");
