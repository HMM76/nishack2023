import 'package:flutter/material.dart';
import 'package:nishack2023/numbut.dart';

class Clubs extends StatelessWidget {
  const Clubs({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(194, 217, 255, 1),
        body: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              "Synybyñyzdy tañdañyz",
              style: TextStyle(
                  fontSize: 30,
                  color: Color.fromRGBO(25, 4, 130, 1),
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumBut(grade: 7),
                      NumBut(grade: 8),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumBut(grade: 9),
                      NumBut(grade: 10),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumBut(grade: 11),
                      NumBut(grade: 12),
                    ],
                  )
                ],
              ),
            ),
          ],
        )
        //NumBut(grade: 7)
        );
  }
}
