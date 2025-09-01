import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserData{
  static FirebaseAuth _auth=FirebaseAuth.instance;
  static Stream<QuerySnapshot<Map<String,dynamic>>>microgreen=FirebaseFirestore.instance.collection("farmers").doc("X4Euu7NDxxX3zujDuwsQ28IuGBH2").collection("microgreens").snapshots();
    static Stream<QuerySnapshot<Map<String,dynamic>>>vegitable=FirebaseFirestore.instance.collection("farmers").doc("X4Euu7NDxxX3zujDuwsQ28IuGBH2").collection("vegitable").snapshots();
} 