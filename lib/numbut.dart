import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nishack2023/profile.dart';

class NumBut extends StatelessWidget {
  final int grade;

  const NumBut({super.key, required this.grade});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 120,
        height: 120,
        child: OutlinedButton(
          onPressed: () {
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
  );
          },
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Color.fromRGBO(142, 143, 250, 1),
            side: const BorderSide(
                color: Color.fromRGBO(25, 4, 130, 1), width: 3),
          ),
          child: Text(
            grade.toString(),
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(25, 4, 130, 1),
            ),
          ),
        ),
      ),
    );
  }
}
