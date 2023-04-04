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
        title: const Text('CGPA Result'),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),

            // Diploma in Engineering Text
            const Text(
              "Diploma in Engineering",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                color: Colors.indigo,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 5,
            ),

            Text(
              "CGPA Calculator",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.indigo,
                fontWeight: FontWeight.w500,
              ),
            ),

            Column(
              children: [
                 Text(
                   'Regulation 2010',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize: 17,
                     color: Colors.indigo,
                     fontWeight: FontWeight.w500,
                   ),
                 ),
              ],
            ),

            const SizedBox(
              height: 30,
            ),

            // Congratulation Text
            const Text(
              "Congratulation!!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Text(
              'Your final CGPA is : ${data.finalResult!.toStringAsFixed(3)}',
              style: const TextStyle(
                fontSize: 24,
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
