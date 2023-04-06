import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/bottom_bar.dart';

void main() {
  // entry point of our app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomBar(),
    );
  }
}


// Every flutter app must have atleast one MaterialApp
// home property is the first screen we see in our app