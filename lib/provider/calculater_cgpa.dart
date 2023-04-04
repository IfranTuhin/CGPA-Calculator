
import 'package:flutter/material.dart';

class CalculateCgpa extends ChangeNotifier{

  String regulationValue = '1';

  double ? finalResult;


  void getData(String s1, String s2, String s3, String s4, String s5, String s6, String s7, String s8,){

    double semester_1 = double.parse(s1);
    double semester_2 = double.parse(s2);
    double semester_3 = double.parse(s3);
    double semester_4 = double.parse(s4);
    double semester_5 = double.parse(s5);
    double semester_6 = double.parse(s6);
    double semester_7 = double.parse(s7);
    double semester_8 = double.parse(s8);

    if(regulationValue == "1"){
      finalResult = (semester_1 * 0.05) + (semester_2 * 0.05) + (semester_3 * 0.05) + (semester_4 * 0.15) + (semester_5 * 0.15) + (semester_6*0.2) + (semester_7*0.25) + (semester_8*0.1);
    }
    else if(regulationValue == "2"){
      finalResult = (semester_1 * 0.05) + (semester_2 * 0.05) + (semester_3 * 0.05) + (semester_4 * 0.1) + (semester_5 * 0.15) + (semester_6*0.2) + (semester_7*0.25) + (semester_8*0.15);
    }
    else if(regulationValue == "3"){
      finalResult = (semester_1 * 0.05) + (semester_2 * 0.05) + (semester_3 * 0.1) + (semester_4 * 0.1) + (semester_5 * 0.2) + (semester_6*0.2) + (semester_7*0.2) + (semester_8*0.1);
    }


  }

}