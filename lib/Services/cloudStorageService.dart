import 'package:firebase_storage/firebase_storage.dart';

const String User_Collection = "User";

class CloudStorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  CloudStorageService();
}
