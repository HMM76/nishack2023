import 'package:flutter/material.dart';
import 'package:nishack2023/subjbut.dart';

class TermPage extends StatelessWidget {
  const TermPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            const Align(
              alignment: Alignment(0, -0.8),
              child: Text(
                "Toqsandar",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: Color.fromRGBO(25, 4, 130, 1)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Divider(
                color: Colors.black,
                thickness: 5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
            ),
            Expanded(
              child: Column(
                  children: [

                    SubjBut(grade: "I Toqsan",),
                    SizedBox(height: 30,),
                    SubjBut(grade: "II Toqsan",),
                    SizedBox(height: 30,),
                    SubjBut(grade: "III Toqsan",),
                    SizedBox(height: 30,),
                    SubjBut(grade: "IV Toqsan",),
                    SizedBox(height: 30,),
                    
                  ],
                ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(194, 217, 255, 1),
    );
  }
}