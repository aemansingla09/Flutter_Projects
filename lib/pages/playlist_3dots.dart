import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotify_clone/data/songs_json.dart';

class dots extends StatefulWidget {
  dots({Key? key}) : super(key: key);

  @override
  State<dots> createState() => _dotsState();
}

class _dotsState extends State<dots> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: getBody(),
    );
  }
}

getBody() {
  final item = [
    FontAwesomeIcons.xmark,
    Icons.download_for_offline_outlined,
    Icons.radar_outlined,
    Icons.search,
    Icons.playlist_add,
    Icons.share,
    Icons.lock,
    Icons.add_to_home_screen,
    Icons.recommend
  ];
  final item_name = [
    "Stop Following",
    "Downlod",
    "Go to Playlist Radio",
    "Find in Playlist",
    "Sort Playlist",
    "Share",
    "Make Public",
    "Add to home screen",
    "About recommendations"
  ];
  return SafeArea(
    child: SingleChildScrollView(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(songs[9]['img']))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Center(
              child: Text(
                "Hip te Hop",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Center(
              child: Text(
                "by Spotify",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Column(
              children: List.generate(item.length, (index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
              child: Row(
                children: [
                  Icon(item[index], color: Colors.white, size: 20),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    item_name[index],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          }))
        ],
      ),
    ),
  );
}
