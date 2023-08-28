import 'package:flutter/material.dart';
import 'package:google_map/home_screen.dart';

// API keu - AIzaSyB7w8JhkAHJJkhweXYfp7w_28JRYI6o8zg
// most use ...marker,circle,polyline and optional polygon

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home:  const HomeScreen(),
    );
  }
}


