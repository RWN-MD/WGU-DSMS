// Business-Critical Queries

// Query 1: Find all patients with a specific medical condition (e.g., diabetes) and look up their tracker details.
db.patients.aggregate([
  { $match: { medical_conditions: { $regex: /diabetes/i } } },
  { 
    $lookup: {
      from: "trackers",
      localField: "tracker",      // 'tracker' field in patients holds the model name
      foreignField: "_id",        // '_id' in trackers is the model name
      as: "tracker_info"
    }
  },
  { $project: { name: 1, medical_conditions: 1, tracker_info: 1 } }
]).forEach(printjson);

// Query 2: Retrieve patients sorted by the most recent appointment date.
db.patients.find(
  {},
  { name: 1, last_appointment_date: 1, tracker: 1 }
).sort({ last_appointment_date: -1 }).forEach(printjson);

// Query 3: Calculate the average rating of trackers used by patients with a specific condition (e.g., hypertension).
db.patients.aggregate([
  { $match: { medical_conditions: { $regex: /hypertension/i } } },
  { 
    $lookup: {
      from: "trackers",
      localField: "tracker",
      foreignField: "_id",
      as: "tracker_info"
    }
  },
  { $unwind: "$tracker_info" },
  { 
    $group: {
      _id: "$tracker_info._id",
      averageRating: { $avg: "$tracker_info.rating" }
    }
  }
]).forEach(printjson);
