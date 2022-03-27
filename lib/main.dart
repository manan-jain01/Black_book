import 'package:flutter/material.dart';
import 'package:pyq_app/home.dart';
import 'package:pyq_app/login.dart';
import 'package:pyq_app/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PYQ App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor
      ),
      home: const HomeScreen(),
    );
  }
}