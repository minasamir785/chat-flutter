// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

//
import '../Services/datebaseService.dart';
import '../Services/navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationProvider extends ChangeNotifier {
  late final FirebaseAuth _auth;
  late final NavigationService _navigationService;
  late final DatebaseService _datebaseService;
  AuthenticationProvider() {
    _auth = FirebaseAuth.instance;
    _datebaseService = GetIt.instance.get<DatebaseService>();
    _navigationService = GetIt.instance.get<NavigationService>();
  }
  Future<void> loginWithEmailAndPassword(
      {required String email, required String pass}) async {
    try {
      var respond = await _auth.signInWithEmailAndPassword(
        email: email,
        password: pass,
      );
      print(respond.toString());
    } on FirebaseAuthException {
      print("Error in FirebaseAuthException");
    } catch (e) {
      print(e);
    }
  }
}
