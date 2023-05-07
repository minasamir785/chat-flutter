import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

const String userCollection = "User";
const String chatCollection = "Chat";

const String messagesCollection = "Messages";

class DatebaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  DatebaseService();
}
