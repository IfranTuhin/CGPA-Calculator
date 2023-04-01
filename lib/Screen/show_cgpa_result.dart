import 'package:cgpa_calculator/provider/calculater_cgpa.dart';
import 'package:flutter/material.dart';


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShowCgpaResult extends StatefulWidget {
  const ShowCgpaResult({Key? key}) : super(key: key);

  @override
  State<ShowCgpaResult> createState() => _ShowCgpaResultState();
}

class _ShowCgpaResultState extends State<ShowCgpaResult> {



  @override
  Widget build(BuildContext context) {

    // provider
    var data = Provider.of<CalculateCgpa>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
        backgroundColor: Colors.deepPurple,
      ),

      body: Center(child: Text('Your final CGPA is : ${data.finalResult}',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),)),

    );
  }
}

