import 'package:cgpa_calculator/Screen/cgpa_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const SizedBox(height: 30,),

                // Diploma Engineering Text
                const Text('Diploma Engineering', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.deepPurple,),),
                const SizedBox(height: 10,),
                // CGPA Calculator Text
                const Text('CGPA Calculator', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.deepPurple,),),

                const SizedBox(height: 50,),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CgpaScreen(),));
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.deepPurple,
                    ),
                    child: const Text('2016',style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white,),),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
