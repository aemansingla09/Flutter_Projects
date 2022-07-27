import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spotify_clone/data/songs_json.dart';
import 'package:spotify_clone/pages/playlist_3dots.dart';

class album extends StatefulWidget {
  album({Key? key}) : super(key: key);

  @override
  State<album> createState() => _albumState();
}

class _albumState extends State<album> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 71, 69, 69),
      appBar: getAppBar(context),
      body: getBody(),
    );
  }
}

getAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Color.fromARGB(255, 63, 62, 62),
    // title: Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: const [
    //     // Icon(Icons.arrow_back),
    //     Icon(Icons.more_vert),
    //   ],),
    actions: [
      IconButton(
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    duration: const Duration(seconds: 1),
                    child: dots(),
                    type: PageTransitionType.bottomToTop));
          },
          icon: Icon(Icons.more_vert))
    ],
  );
}

getBody() {
  final ac = Icons.toggle_off_rounded;
  return SingleChildScrollView(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(75, 30, 0, 0),
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(songs[9]['img']))),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(80, 10, 0, 0),
          child: Text(
            "Study beats",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(80, 20, 0, 0),
          child: Container(
            width: 60,
            height: 15,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "FOLLOW",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 75),
          child: Text(
            "BY SPOTIFY. 200,000 FOLLOWERS",
            style: TextStyle(
                color: Colors.white, fontSize: 8, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // const Padding(
        //   padding: EdgeInsets.only(left: 125),
        //   child: Icon(
        //     Icons.circle,
        //     size: 5,
        //     color: Colors.white,
        //   ),
        // ),
        // const SizedBox(
        //   width: 2,
        // ),
        // const Icon(
        //   Icons.circle_outlined,
        //   size: 5,
        //   color: Colors.white,
        // ),
        // const SizedBox(
        //   height: 10,
        // ),
        const Padding(
          padding: EdgeInsets.only(left: 80),
          child: Icon(
            Icons.play_circle,
            size: 40,
            color: Colors.green,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "Download",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          IconButton(
            onPressed: () {
              ac == Icons.toggle_on;
            },
            icon: Icon(
              ac,
              size: 40,
              color: Colors.grey,
            ),
          )
          // ToggleButtons(children: [Icon(Icons.toggle_off_rounded)], isSelected: )
        ]),
        const SizedBox(
          height: 10,
        ),
        Column(
            children: List.generate(20, (index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(songs[index % 10]['img']))),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          songs[index % 10]['title'],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          poartist[index % 5]['title'],
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ],
          );
        }))
      ],
    ),
  );
}
