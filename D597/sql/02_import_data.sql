-- Import data into the FitnessTrackers table using a relative path 
-- (exchange for a direct path before populating and hosting the server)
BULK INSERT FitnessTrackers
FROM '.\datasets\D597_Task_1_Dataset_1_Fitness_trackers.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
GO

-- Import data into the MedicalRecords table using a relative path 
-- (exchange for a direct path before populating and hosting the server)
BULK INSERT MedicalRecords
FROM '.\datasets\D597_Task_1_Dataset_3_medical_records.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
GO
