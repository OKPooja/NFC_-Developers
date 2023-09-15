import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:need/welcome.dart';
import 'auth.dart';
import 'login.dart';
import 'signup.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    ),
  );
}

