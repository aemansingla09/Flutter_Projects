import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spotify_clone/data/songs_json.dart';
import 'package:spotify_clone/pages/music_on_page.dart';
import 'package:spotify_clone/pages/new_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool abc = musicon;

  Widget build(BuildContext context) {
    print(musicon);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: getAppBar(),
      body: getBody(context),
    );
  }
}

getAppBar() {
  return AppBar(
      backgroundColor: Colors.black,
      elevation: 1,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text(
            "Welcome",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(children: const [
            Icon(Icons.add_alert),
            SizedBox(
              width: 3,
            ),
            Icon(Icons.replay_circle_filled_outlined),
            SizedBox(
              width: 3,
            ),
            Icon(Icons.settings),
          ]),
        ]),
      ));
}

getBody(BuildContext context) {
  return Stack(children: [
    SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(3, (index) {
              return Row(children: [
                const SizedBox(
                  width: 20,
                ),
                gird_view(
                  index: index,
                  ind: 0,
                ),
                const SizedBox(
                  width: 10,
                ),
                gird_view(ind: 1, index: index),
                const SizedBox(
                  width: 20,
                )
              ]);
            }),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "New Songs",
              style: TextStyle(fontSize: 25, color: Colors.amber),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(songs.length - 4, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  alignment: Alignment.bottomCenter,
                                  child: NewPage(),
                                  type: PageTransitionType.scale));
                        },
                        child: Column(
                          children: [
                            Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(songs[index]['img'])),
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(songs[index]['title'],
                                  style: TextStyle(color: Colors.white)),
                            ),
                            SizedBox(
                              width: 150,
                              child: Text(
                                songs[index]['description'],
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.amber,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              "Internationl Artists",
              style: TextStyle(color: Colors.amber, fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            //International Artists
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(inartist.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage(inartist[index]['img'])),
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(inartist[index]['title'],
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 45,
          )
        ]),
      ),
    ),
    songplay()
  ]);
}

class gird_view extends StatelessWidget {
  final index;
  final ind;
  const gird_view({Key? key, required this.ind, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              PageTransition(
                  child: MusiconPage(), type: PageTransitionType.bottomToTop));
        },
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              // color: Colors.transparent,
              color: Colors.white10,
              borderRadius: BorderRadius.circular(4)),
          child: Row(
            children: [
              Image(
                  height: 48,
                  width: 48,
                  fit: BoxFit.cover,
                  image: AssetImage(songs[index + ind + 3]['img'])),
              const SizedBox(
                width: 8,
              ),
              Text(
                songs[index + ind + 3]['title'],
                style: const TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class songplay extends StatefulWidget {
  const songplay({
    Key? key,
  }) : super(key: key);

  @override
  State<songplay> createState() => _songplayState();
}

class _songplayState extends State<songplay> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomStart,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              PageTransition(
                  child: MusiconPage(), type: PageTransitionType.bottomToTop));
        },
        child: musicon == true
            ? const song_playing()
            : const SizedBox(
                height: 10,
              ),
      ),
    );
  }
}

class song_playing extends StatelessWidget {
  const song_playing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(color: Colors.red.shade400),
      child: Row(
        children: [Image(image: AssetImage("assets/images/img_8.jpg"))],
      ),
    );
  }
}
