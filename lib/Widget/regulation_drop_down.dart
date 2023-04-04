import 'package:cgpa_calculator/provider/calculater_cgpa.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class RegulationDropdown extends StatefulWidget {
  const RegulationDropdown({Key? key}) : super(key: key);
  @override
  State<RegulationDropdown> createState() => _RegulationDropdown();
}
class _RegulationDropdown extends State<RegulationDropdown> {

  String currentValue = '1';

  @override
  Widget build(BuildContext context) {

    var data = Provider.of<CalculateCgpa>(context);

    return DropdownButton(
      value: currentValue,
      items: [
        DropdownMenuItem(
          child: Text('Regulation 2010',style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400,color: Colors.indigo,),),
          value: '1',
        ),
        DropdownMenuItem(
          child: Text('Regulation 2016', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400,color: Colors.indigo,),),
          value: '2',
        ),
        DropdownMenuItem(
          child: Text('Regulation 2022', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400,color: Colors.indigo,),),
          value: '3',
        ),
      ],
      onChanged: (String? value) {
        setState(() {
          currentValue = value!;
          print("Value ------ $currentValue");
          data.regulationValue = currentValue;
        });
      },
    );
  }
}