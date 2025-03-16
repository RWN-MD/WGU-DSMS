// Import data using mongoimport from the command line.
// The following are example commands you should run in your terminal:

print("To import data, run these commands in your terminal:");

// Import patients data from medical.json
print('mongoimport --db "D597 Task 2" --collection "patients" --file "./datasets/medical.json" --jsonArray');

// Import fitness trackers data from Task2Scenario1_Dataset1_fitness_trackers.json
print('mongoimport --db "D597 Task 2" --collection "trackers" --file "./datasets/Task2Scenario1_Dataset1_fitness_trackers.json" --jsonArray');
