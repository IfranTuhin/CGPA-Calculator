import 'dart:async';

import 'package:cgpa_calculator/Screen/cgpa_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // init
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CgpaScreen(),));
    });
  }


  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(child: Text("Splash Screen", style: TextStyle(fontSize: 30, color: Colors.white,),)),
    );
  }
}
