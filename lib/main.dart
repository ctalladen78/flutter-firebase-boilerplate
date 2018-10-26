import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'dart:io';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GoogleSignIn googleSignIn = new GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SharedPreferences prefs;

  bool isLoading = false;
  bool isLoggedIn = false;
  FirebaseUser currentUser;

  int _counter=0;
  void _handleTap() {

    setState(() {
          this._counter++;
        });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: new Scaffold(
         appBar: new AppBar(title: new Text("Firebase boilerplate")),
         body: new Center(
           child: new Text(_counter.toString()),
         ),
         floatingActionButton: new FloatingActionButton(
           onPressed: (){ _handleTap();} 
         ),
       ),
    );
  }
}