-- Query 1: Identify patients with hypertension using a specific tracker model
SELECT m.patient_id, m.name, m.medical_conditions, f.brand_name, f.model_name
FROM MedicalRecords m
JOIN FitnessTrackers f ON m.tracker_reference = f.model_name
WHERE m.medical_conditions LIKE '%hypertension%';

-- Query 2: Analyze average battery life for trackers used by patients with diabetes
SELECT f.brand_name, f.model_name, AVG(f.average_battery_life_days) AS AvgBatteryLife
FROM MedicalRecords m
JOIN FitnessTrackers f ON m.tracker_reference = f.model_name
WHERE m.medical_conditions LIKE '%diabetes%'
GROUP BY f.brand_name, f.model_name;

-- Query 3: Retrieve recent patient appointments along with tracker information
SELECT m.patient_id, m.name, m.last_appointment_date, f.brand_name, f.model_name
FROM MedicalRecords m
LEFT JOIN FitnessTrackers f ON m.tracker_reference = f.model_name
ORDER BY m.last_appointment_date DESC;
