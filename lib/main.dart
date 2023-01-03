import 'package:flutter/material.dart';
import 'package:flutter_real_estate_app/constants/constants.dart';
import 'package:flutter_real_estate_app/screen/home/homesceeen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Real Estate App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: white,
      ),
      home: const HomeScreen(),
    );
  }
}
