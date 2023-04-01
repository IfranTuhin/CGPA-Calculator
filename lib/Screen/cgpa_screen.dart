import 'package:cgpa_calculator/Screen/show_cgpa_result.dart';
import 'package:cgpa_calculator/provider/calculater_cgpa.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CgpaScreen extends StatefulWidget {
  const CgpaScreen({Key? key}) : super(key: key);

  @override
  State<CgpaScreen> createState() => _CgpaScreenState();
}

class _CgpaScreenState extends State<CgpaScreen> {
  // All Semester Text Field Controller
  TextEditingController firstSemesterController = TextEditingController();
  TextEditingController secondSemesterController = TextEditingController();
  TextEditingController threeSemesterController = TextEditingController();
  TextEditingController fourSemesterController = TextEditingController();
  TextEditingController fiveSemesterController = TextEditingController();
  TextEditingController sixSemesterController = TextEditingController();
  TextEditingController sevenSemesterController = TextEditingController();
  TextEditingController eightSemesterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // provider
    final data = Provider.of<CalculateCgpa>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Regulation 2016'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              // text Input your semester point
              const Text(
                'Input your semester point.',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              /*
              All semester input text field
               */
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // 1st semester
                  SizedBox(
                    // height: 120,
                    width: 140,
                    child: TextField(
                      controller: firstSemesterController,
                      decoration: const InputDecoration(
                        hintText: '1nd Semester',
                        label: Text('1nd Semester'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  // 2nd semester
                  SizedBox(
                    // height: 120,
                    width: 140,
                    child: TextField(
                      controller: secondSemesterController,
                      decoration: const InputDecoration(
                        hintText: '2nd Semester',
                        label: Text('2nd Semester'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // 3rd semester
                  SizedBox(
                    // height: 120,
                    width: 140,
                    child: TextField(
                      controller: threeSemesterController,
                      decoration: const InputDecoration(
                        hintText: '3rd Semester',
                        label: Text('3rd Semester'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  // 4th semester
                  SizedBox(
                    // height: 120,
                    width: 140,
                    child: TextField(
                      controller: fourSemesterController,
                      decoration: const InputDecoration(
                        hintText: '4th Semester',
                        label: Text('4th Semester'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // 5th semester
                  SizedBox(
                    // height: 120,
                    width: 140,
                    child: TextField(
                      controller: fiveSemesterController,
                      decoration: const InputDecoration(
                        hintText: '5th Semester',
                        label: Text('5th Semester'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  // 6th semester
                  SizedBox(
                    // height: 120,
                    width: 140,
                    child: TextField(
                      controller: sixSemesterController,
                      decoration: const InputDecoration(
                        hintText: '6th Semester',
                        label: Text('6th Semester'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // 7th semester
                  SizedBox(
                    // height: 120,
                    width: 140,
                    child: TextField(
                      controller: sevenSemesterController,
                      decoration: const InputDecoration(
                        hintText: '7th Semester',
                        label: Text('7th Semester'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  // 8th semester
                  SizedBox(
                    // height: 120,
                    width: 140,
                    child: TextField(
                      controller: eightSemesterController,
                      decoration: const InputDecoration(
                        hintText: '8th Semester',
                        label: Text('8th Semester'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  data.getData(
                    firstSemesterController.text,
                    secondSemesterController.text,
                    threeSemesterController.text,
                    fourSemesterController.text,
                    fiveSemesterController.text,
                    sixSemesterController.text,
                    sevenSemesterController.text,
                    eightSemesterController.text,
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShowCgpaResult(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                child: const Text(
                  'Calculate',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
