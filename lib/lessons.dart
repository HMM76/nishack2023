import 'package:flutter/material.dart';
import 'package:nishack2023/sidebutt.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class Lessons extends StatefulWidget {
  const Lessons({Key? key});

  @override
  State<Lessons> createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {
  final videoURL = "https://www.youtube.com/watch?v=LZMMH-GFO-k";
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoURL)!,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(142, 143, 250, 1),
        toolbarHeight: 80,
        title: Text(
          "Materials",
          style: TextStyle(fontSize: 22),
        ),
      ),
      backgroundColor: Color.fromRGBO(194, 217, 255, 1),
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(194, 217, 255, 1),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text("Taqyryptar", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500, color: Color.fromRGBO(25, 4, 130, 1)),),
            SizedBox(height: 80,),
            SideButt(grade: "SI Units"),
            SizedBox(height: 30,),
            SideButt(grade: "Logarithms"),
            SizedBox(height: 30,),
            SideButt(grade: "Adsolute Errors"),
            SizedBox(height: 30,),
            SideButt(grade: "Comparative Errors"),
            SizedBox(height: 30,),
            SideButt(grade: "Error Graphs"),
            SizedBox(height: 30,),
            SideButt(grade: "Straight Graphs"),

          ],
        ),
      ),
      body: Column(
        children: [
          Text("VideoMaterial"),
          YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: _controller,
            ),
            builder: (context, player) {
              return Column(
                children: [
                  // some widgets if needed before the video
                  player,
                  // some widgets if needed after the video
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
