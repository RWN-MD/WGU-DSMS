-- Create indexes on MedicalRecords to improve query performance
CREATE INDEX idx_medical_conditions ON MedicalRecords(medical_conditions);
CREATE INDEX idx_last_appointment_date ON MedicalRecords(last_appointment_date);
GO

-- Create indexes on FitnessTrackers to speed up JOIN operations
CREATE INDEX idx_model_name ON FitnessTrackers(model_name);
CREATE INDEX idx_brand_name ON FitnessTrackers(brand_name);
GO
