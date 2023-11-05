import 'package:flutter/material.dart';
import 'package:flutter_submission_dicoding/screen/home/home_screen.dart';
import 'package:flutter_submission_dicoding/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.lightTheme,
      darkTheme: Constants.darkTheme,
      home: const HomeScreen(),
    );
  }
}