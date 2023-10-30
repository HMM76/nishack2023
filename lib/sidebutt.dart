import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nishack2023/lessons.dart';

class SideButt extends StatelessWidget {
  final String grade;
  const SideButt({super.key, required this.grade});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 310,
        height: 75,
        child: OutlinedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Lessons()),
            );
          },
          style: OutlinedButton.styleFrom(
            backgroundColor: Color.fromRGBO(142, 143, 250, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
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