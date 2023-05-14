import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

db = FirebaseFirestore.instance;
// Create a new user with a first and last name
final user = <String, dynamic>{
  "first": "Ada",
  "last": "Lovelace",
  "born": 1815
};

// Add a new document with a generated ID
db.collection("users").add(user).then((DocumentReference doc) =>
print('DocumentSnapshot added with ID: ${doc.id}'));

// Create a new user with a first and last name
final user = <String, dynamic>{
"first": "Alan",
"middle": "Mathison",
"last": "Turing",
"born": 1912
};

// Add a new document with a generated ID
db.collection("users").add(user).then((DocumentReference doc) =>
print('DocumentSnapshot added with ID: ${doc.id}'));