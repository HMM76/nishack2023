import 'package:flutter/material.dart';
import 'package:nishack2023/subjbut.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                "Pänder",
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
              padding: const EdgeInsets.only(top: 20),
            ),
            Expanded(
              child: Column(
                  children: [
                    SubjBut(grade: "English Language",),
                    SizedBox(height: 20,),
                    SubjBut(grade: "Kazakh Language",),
                    SizedBox(height: 20,),
                    SubjBut(grade: "Russian Language",),
                    SizedBox(height: 20,),
                    SubjBut(grade: "Physics",),
                    SizedBox(height: 20,),
                    SubjBut(grade: "Mathematics",),
                    SizedBox(height: 20,),
                    SubjBut(grade: "Computer Science",),
                    SizedBox(height: 20,),
                    SubjBut(grade: "Chemistry",),
                    SizedBox(height: 20,),
                    SubjBut(grade: "Biology",),
                    SizedBox(height: 20,),
                    SubjBut(grade: "Programming",),
                    SizedBox(height: 20,),
                    SubjBut(grade: "Kazakh History",),
                    SizedBox(height: 20,),
                    
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
