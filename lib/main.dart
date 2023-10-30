import 'dart:ui';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/material.dart';
import 'package:theappletsgo/chatgpt_api.dart';
import 'package:theappletsgo/navbar.dart';

void main() async {
  // ChatGptCommunicator.initSubjectInfoGeneration("Yoooo");
  OpenAI.apiKey = "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";

  await ChatGptCommunicator.initSubjectInfoGeneration("What is the most normal weather");

  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    home: FirstPage(data: "iu"),
  ));
}

class FirstPage extends StatefulWidget
{
  final String data;
  const FirstPage({Key? key, required this.data}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String data = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Nddegeer idd'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      bottomNavigationBar: const NavBar(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/nigg.jpg'),
                radius: 50.0,
              )
            ),
            Divider(
              height: 70.0,
              color: Colors.grey[300],
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              )
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Chun-li',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              )
            ),
            SizedBox(height: 10.0),
            const Text(
                'LEVEL',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )
            ),
            const SizedBox(height: 10.0),
            const Text(
                'negoorr',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
            ),
            Text(widget.data,
              style: const TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(child: Text("Brooo"), onPressed: (){

            },)
          ]
        )

      )
    );
  }

}