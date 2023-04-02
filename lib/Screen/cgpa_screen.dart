import 'package:cgpa_calculator/Screen/show_cgpa_result.dart';
import 'package:cgpa_calculator/Widget/regulation_drop_down.dart';
import 'package:cgpa_calculator/provider/calculater_cgpa.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CgpaScreen extends StatefulWidget {
  const CgpaScreen({Key? key}) : super(key: key);

  @override
  State<CgpaScreen> createState() => _CgpaScreenState();
}

class _CgpaScreenState extends State<CgpaScreen> {
  // ----> All Semester Text Field Controller <----
  TextEditingController firstSemesterController = TextEditingController();
  TextEditingController secondSemesterController = TextEditingController();
  TextEditingController threeSemesterController = TextEditingController();
  TextEditingController fourSemesterController = TextEditingController();
  TextEditingController fiveSemesterController = TextEditingController();
  TextEditingController sixSemesterController = TextEditingController();
  TextEditingController sevenSemesterController = TextEditingController();
  TextEditingController eightSemesterController = TextEditingController();

  // ----> Regulation drop down menu item <----
  List regulationDropDownList = [
    {'title': 'Regulation 2010', 'value': '2010'},
    {'title': 'Regulation 2016', 'value': '2016'},
    {'title': 'Regulation 2022', 'value': '2022'},
  ];

  // List dropDownListData = [
  //   {"title": "BCA", "value": "1"},
  //   {"title": "MCA", "value": "2"},
  //   {"title": "B.Tech", "value": "3"},
  //   {"title": "M.Tech", "value": "4"},
  // ];

  String defaultValue = '';

  @override
  Widget build(BuildContext context) {

    // provider
    final data = Provider.of<CalculateCgpa>(context);

    // Global key for form validation
    final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

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

              //----> Select regulation Text <----
              const Text(
                'Please select your Regulation : ',
                style: TextStyle(
                  fontSize: 22,
                  // fontWeight: FontWeight.bold,
                ),
              ),

              // ----> Regulation Drop down menu <----
              Column(
                children: [
                  DropdownButton<String>(
                    value: defaultValue,
                    // isExpanded: true,
                    menuMaxHeight: 100,
                    items: regulationDropDownList.map<DropdownMenuItem<String>>((e) {
                        return DropdownMenuItem(
                            child: Text(e['title']), value: e['value']);
                      }).toList(),

                    onChanged: (value) {
                      print('current value -- ${value}');
                      setState(() {
                        defaultValue = value!;
                      });
                    },
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),

              // text Input your semester point
              const Text(
                'Input your semester point.',
                style: TextStyle(
                  fontSize: 22,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              /*
              All semester input text field
               */
              Form(
                key: globalKey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // 1st semester
                        SizedBox(
                          // height: 120,
                          width: 140,
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter value.';
                              }
                              return null;
                            },
                            controller: firstSemesterController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
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
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter value.';
                              }
                              return null;
                            },
                            controller: secondSemesterController,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
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
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter value.';
                              }
                              return null;
                            },
                            controller: threeSemesterController,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
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
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter value.';
                              }
                              return null;
                            },
                            controller: fourSemesterController,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
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
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter value.';
                              }
                              return null;
                            },
                            controller: fiveSemesterController,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
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
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter value.';
                              }
                              return null;
                            },
                            controller: sixSemesterController,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
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
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter value.';
                              }
                              return null;
                            },
                            controller: sevenSemesterController,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
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
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter value.';
                              }
                              return null;
                            },
                            controller: eightSemesterController,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.done,
                            decoration: const InputDecoration(
                              hintText: '8th Semester',
                              label: Text('8th Semester'),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              // Button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // text field clear button
                  ElevatedButton(
                    onPressed: () {
                      firstSemesterController.clear();
                      secondSemesterController.clear();
                      threeSemesterController.clear();
                      fourSemesterController.clear();
                      fiveSemesterController.clear();
                      sixSemesterController.clear();
                      sevenSemesterController.clear();
                      eightSemesterController.clear();
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                    child: const Text(
                      'Clear Field',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  // Calculate button
                  ElevatedButton(
                    onPressed: () {
                      if (globalKey.currentState!.validate()) {
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
                        // navigation
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ShowCgpaResult(),
                          ),
                        );

                        // Clear text field
                        firstSemesterController.clear();
                        secondSemesterController.clear();
                        threeSemesterController.clear();
                        fourSemesterController.clear();
                        fiveSemesterController.clear();
                        sixSemesterController.clear();
                        sevenSemesterController.clear();
                        eightSemesterController.clear();
                      }
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                    child: const Text(
                      'Calculate',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
