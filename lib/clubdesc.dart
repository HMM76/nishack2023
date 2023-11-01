import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ClubDesc extends StatelessWidget {
  const ClubDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(194, 217, 255, 1),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/beka.jpg'),
                radius: 100,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text("Inkarov Bekzat", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
          ),
          SizedBox(height: 20,),
          Text("Robotics teacher", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400)),
          SizedBox(height: 20,),
          Text("+10 years of experience", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400)),
          SizedBox(height: 20,),
          Text("Engineer & Programmer", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400)),
          SizedBox(height: 50,),
          Text("Contact info: ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
          SizedBox(height: 40,),
          Text("+77077651248", style: TextStyle(fontSize: 31, fontWeight: FontWeight.w500)),
          SizedBox(height: 40,),
          Text("inkarov_b1496@fmalm.nis.edu.kz", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}