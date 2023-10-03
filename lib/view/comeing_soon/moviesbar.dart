import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class moviesbar extends StatefulWidget {
  moviesbar({
    super.key,
    required this.index,
  });
  final int index;

  @override
  State<moviesbar> createState() => _moviesbarState();
}

class _moviesbarState extends State<moviesbar> {
  List<String> videoLinks = ["L0vdykuBPOk", "qf5Hdkhh7zs", "TukUMmQCGt4"];

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
        initialVideoId: videoLinks[widget.index],
        flags: YoutubePlayerFlags(autoPlay: true, mute: true));

    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 440,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 195,
            color: Colors.yellowAccent,
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressColors: ProgressBarColors(
                playedColor: Colors.red,
                handleColor: Colors.amberAccent,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_sharp,
                        color: Colors.white,
                      )),
                  Text(
                    "Remind Me",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Share",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Text(
              "Season 1 Coming December 14",
              style: TextStyle(fontSize: 11, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text(
              "Castle & Castle",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.",
              style: TextStyle(fontSize: 11, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Steamy • ",
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Soapy • ",
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Slow Burn • ",
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Suspenseful • ",
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Teen • ",
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Mystery",
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
