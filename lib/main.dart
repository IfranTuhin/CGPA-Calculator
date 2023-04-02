import 'package:cgpa_calculator/Screen/cgpa_screen.dart';
import 'package:cgpa_calculator/Screen/home_screen.dart';
import 'package:cgpa_calculator/provider/calculater_cgpa.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => CalculateCgpa(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CgpaScreen(),
    );
  }
}
