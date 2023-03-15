import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:expt7/realtime_db.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FirebaseApp firebaseApp = await Firebase.initializeApp(
      name: "first",
      options: const FirebaseOptions(
          apiKey: "AIzaSyBmzfh8f_XFMy6flkL-obeFA1HeYxhuiuY",
          authDomain: "first-109d7.firebaseapp.com",
          projectId: "first-109d7",
          storageBucket: "first-109d7.appspot.com",
          messagingSenderId: "919364557544",
          appId: "1:919364557544:web:866f58be580803458ec75d"),);
  runApp(const MaterialApp(
    home: realtime_db(),
  ));
}
