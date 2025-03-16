#!/bin/bash
# 02_import_data.sh
# Script to import JSON data into MongoDB using mongoimport
# Change relative dataset locations to runtime locations.

echo "Importing patients data from medical.json..."
mongoimport --db "D597 Task 2" --collection "patients" --file "./datasets/medical.json" --jsonArray

echo "Importing fitness trackers data from Task2Scenario1_Dataset1_fitness_trackers.json..."
mongoimport --db "D597 Task 2" --collection "trackers" --file "./datasets/Task2Scenario1_Dataset1_fitness_trackers.json" --jsonArray

echo "Data import complete."
