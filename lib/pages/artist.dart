import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/library_page.dart';

class artistPage extends StatefulWidget {
  artistPage({Key? key}) : super(key: key);

  @override
  State<artistPage> createState() => _artistPageState();
}

class _artistPageState extends State<artistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      backgroundColor: Colors.black,
      body: getBody(),
    );
  }
}

getAppBar() {
  return AppBar(
    title: Text("Artist"),
    backgroundColor: Colors.black,
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.play_circle),
        iconSize: 20.0,
      )
    ],
  );
}

getBody() {
  // final songs=List<String>.generate(5, (int index) => "${index + 1} Song ${index + 1}");
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(8.0, 30.0, 0.0, 8.0),
          child: Text(
            "Popular",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Column(
            children: List.generate(5, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/img_${random(1, 10)}.jpg",
                  height: 65,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Song ${index + 1}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                )
              ],
            ),
          );
        })),
        const Padding(
          padding: EdgeInsets.fromLTRB(8.0, 30.0, 0.0, 8.0),
          child: Text(
            "Popular Releases",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Column(
            children: List.generate(4, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/img_${random(1, 10)}.jpg",
                  height: 90,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "SongName",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          );
        })),
        const Padding(
          padding: EdgeInsets.fromLTRB(8.0, 30.0, 0.0, 8.0),
          child: Text(
            "Featuring Artist",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(10, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/img_${random(1, 10)}.jpg",
                    height: 120,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      "AlbumName",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  )
                ],
              ),
            );
          })),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(8.0, 30.0, 0.0, 8.0),
          child: Text(
            "Fans also like",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(8, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        AssetImage("assets/images/img_${random(1, 10)}.jpg"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      "ArtistName",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  )
                ],
              ),
            );
          })),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(8.0, 30.0, 0.0, 8.0),
          child: Text(
            "Artist Playlist",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(8, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/img_${random(1, 10)}.jpg",
                    height: 120,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      "PlayistName",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  )
                ],
              ),
            );
          })),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(8.0, 30.0, 0.0, 8.0),
          child: Text(
            "About me",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Column(
          children: [],
        )
      ],
    ),
  );
}
