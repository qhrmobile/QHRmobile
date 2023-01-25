import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './screens/home_screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Brawler'),
      home: HomeScreen1(),
    );
  }
}
