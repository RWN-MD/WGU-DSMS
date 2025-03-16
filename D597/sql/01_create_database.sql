-- Create the database
CREATE DATABASE [D597 Task 1];
GO

-- Switch to the new database
USE [D597 Task 1];
GO

-- Create the FitnessTrackers table with a surrogate key
CREATE TABLE FitnessTrackers (
    tracker_id INT IDENTITY(1,1) PRIMARY KEY,
    brand_name VARCHAR(100),
    device_type VARCHAR(100),
    model_name VARCHAR(100),
    color VARCHAR(50),
    selling_price DECIMAL(10,2),
    original_price DECIMAL(10,2),
    display VARCHAR(50),
    rating DECIMAL(3,2),
    strap_material VARCHAR(50),
    average_battery_life_days INT,
    reviews TEXT
);
GO

-- Create the MedicalRecords table
CREATE TABLE MedicalRecords (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    date_of_birth DATE,
    gender VARCHAR(10),
    medical_conditions VARCHAR(255),
    medications VARCHAR(255),
    allergies VARCHAR(255),
    last_appointment_date DATE,
    tracker_reference VARCHAR(100) -- To be mapped to FitnessTrackers.tracker_id after cleaning
);
GO

-- Create a bridging table for a many-to-many relationship
CREATE TABLE Patient_Tracker (
    patient_id INT,
    tracker_id INT,
    start_date DATE,
    end_date DATE NULL,
    CONSTRAINT FK_Patient FOREIGN KEY (patient_id) REFERENCES MedicalRecords(patient_id),
    CONSTRAINT FK_Tracker FOREIGN KEY (tracker_id) REFERENCES FitnessTrackers(tracker_id)
);
GO
