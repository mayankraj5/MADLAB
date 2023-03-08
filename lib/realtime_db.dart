import 'dart:html';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class realtime_db extends StatefulWidget {
  const realtime_db({super.key});

  @override
  State<realtime_db> createState() => _realtime_dbState();
}

class _realtime_dbState extends State<realtime_db> {

  late DatabaseReference _dbref;
  String databasejson = "";

  @override
  void initState(){
    super.initState();
    _dbref = FirebaseDatabase.instance.reference();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Database: "+databasejson),
              ),
              TextButton(
                onPressed: () {
                  _createDB();
                },
                child: const Text("CreateDB")),
            ],
          ),
        ),
      ),
    );
  }

  _createDB() {
    _dbref.child("profile").set("my value");
    _dbref
          .child("jobprofile")
          .set({'website':"www.siesgst.com", "website2":"www.siesedu.com"});
  }
}