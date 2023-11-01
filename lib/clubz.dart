import 'package:flutter/material.dart';
import 'package:nishack2023/clubdesc.dart';

class Clubzz extends StatefulWidget {
  const Clubzz({super.key});

  @override
  State<Clubzz> createState() => _ClubzzState();
}

class Food {
  final String name;

  Food({required this.name});
}

class _ClubzzState extends State<Clubzz> {
  List<Food> dishes = [
    Food(name: 'Rock n Plane'),
    Food(
        name: 'Robotics'),
    Food(
        name: 'Dombyra'),
    Food(name: 'Game-Dev'),
    Food(name: 'Gen-AI'),
    Food(name: 'Chess'),
    Food(
        name: 'Anime'),
  ];
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
                "Clubtar",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(25, 4, 130, 1)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Divider(
                color: Color.fromRGBO(25, 4, 130, 1),
                thickness: 5,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: dishes.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      child: Card(
                        child: ListTile(
                          title: Text(
                            dishes[index].name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(8)),
                            child: IconButton(
                              icon: const Icon(Icons.phone),
                              iconSize: 18,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ClubDesc()),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(194, 217, 255, 1),
    );
  }
}
