import "package:flutter/material.dart";
import 'package:nishack2023/ai.dart';
import 'package:nishack2023/club.dart';
import 'package:nishack2023/clubz.dart';
import 'package:nishack2023/profile.dart';
import 'package:nishack2023/subjbut.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  final screens = [
    Clubs(),
    Clubzz()
    
  ];
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: true,
      child: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.white,
            backgroundColor: Color.fromRGBO(142, 143, 250, 1),
            currentIndex: currentIndex,
            onTap: (index) => setState(() {
              currentIndex = index;
            }),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Learn",
                backgroundColor: Color.fromRGBO(142, 143, 250, 1),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded),
                label: "Feed",
                backgroundColor: Color.fromRGBO(142, 143, 250, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}