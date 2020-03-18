import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideosPage extends StatefulWidget {
  @override
  _VideosPageState createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  // String videoId = YoutubePlayer.convertUrlToId(
  //     "https://www.youtube.com/watch?v=BBAyRBTfsOU");

  // String videoId = YoutubePlayer.convertUrlToId(
  //     "https://www.youtube.com/watch?v=jZAvQP8J3aM");
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'jZAvQP8J3aM',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Latest Videos',
          style: TextStyle(color: Colors.black),
          textScaleFactor: 1.2,
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: FaIcon(Icons.arrow_back_ios),
          color: Colors.black,
          iconSize: 35,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: YoutubePlayer(
        controller: _controller,
        aspectRatio: 18 / 9,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.red,
        progressColors: ProgressBarColors(
          playedColor: Colors.red,
          handleColor: Colors.redAccent,
        ),
        onReady: () {
          print('ready');
        },
      ),
    );
  }
}
