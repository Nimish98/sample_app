import 'package:assignment_app/screen_1.dart';
import 'package:assignment_app/screen_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            child: Text(
              "Screen - 1",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 35
              ),
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScreenOne()),
              );
            },
          ),
          GestureDetector(
            child: Text(
              "Screen - 2",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 35
              ),
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScreenTwo()),
              );
            },
          ),
        ],
      ),
    );
  }
}

