import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class realtime_db extends StatefulWidget {
  const realtime_db({super.key});

  @override
  State<realtime_db> createState() => _realtime_dbState();
}

class _realtime_dbState extends State<realtime_db> {
  late DatabaseReference _dbref;
  String databasejson = "";
  @override
  void initState() {
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
                child: Text(" database - " + databasejson),
              ),
              TextButton(
                onPressed: () {
                  _createDB();
                },
                child: const Text(" create DB"),
              ),
              TextButton(
                onPressed: () {
                  _readdb_once();
                },
                child: const Text(" read value"),
              ),
              TextButton(
                onPressed: () {
                  _readdb_onechild();
                },
                child: const Text(" read one child"),
              )
            ],
          ),
        ),
      ),
    );
  }

  _createDB() {
    print("dsjfh");
    _dbref.child("profile").set("my Profile");
    _dbref
        .child("jobprofile")
        .set({'website': "www.siesgst.com", 'website2': "www.siesedu.com"});
  }

  _readdb_once() {
    _dbref.once().then((DatabaseEvent dataSnapshot) {
      print(" read once - " + dataSnapshot.snapshot.value.toString());
      setState(() {
        databasejson = dataSnapshot.snapshot.value.toString();
      });
    });
  }

  _readdb_onechild() {
    _dbref
        .child('jobprofile')
        .child('website')
        .once()
        .then((DatabaseEvent dataSnapshot) {
      print("read once - " + dataSnapshot.snapshot.value.toString());
      setState(() {
        databasejson = dataSnapshot.snapshot.value.toString();
      });
    });
  }
}
