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
  bool change = false;
  var size;
  void changebc() {
    setState(() {
      change = musicon;
    });
  }

  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: getAppBar(),
      body: Stack(children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(3, (index) {
                  return Row(children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: MusiconPage(
                                    imageid: songs[index + 3],
                                  ),
                                  type: PageTransitionType.bottomToTop));
                          changebc();
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
                                  image: AssetImage(songs[index + 3]['img'])),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                songs[index + 3]['title'],
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: MusiconPage(
                                    imageid: songs[index + 3],
                                  ),
                                  type: PageTransitionType.bottomToTop));
                          changebc();
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
                                  image: AssetImage(songs[index + 3]['img'])),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                songs[index + 3]['title'],
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
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
                                          image:
                                              AssetImage(songs[index]['img'])),
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
                                          image: AssetImage(
                                              inartist[index]['img'])),
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
              ),
            ]),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: GestureDetector(
            onTap: () {
              // Navigator.push(
              //     context,
              //     PageTransition(
              //         child: MusiconPage(image: ,), type: PageTransitionType.bottomToTop));
            },
            child: change
                ? song_playing()
                : const SizedBox(
                    height: 10,
                  ),
          ),
        )
      ]),
    );
  }

  Expanded GridView(BuildContext context, int index) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              PageTransition(
                  child: MusiconPage(
                    imageid: songs[index + 3],
                  ),
                  type: PageTransitionType.bottomToTop));
          setState(() {
            change = musicon;
          });
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
                  image: AssetImage(songs[index + 3]['img'])),
              const SizedBox(
                width: 8,
              ),
              Text(
                songs[index + 3]['title'],
                style: const TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
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

class song_playing extends StatefulWidget {
  song_playing({
    Key? key,
  }) : super(key: key);

  @override
  State<song_playing> createState() => _song_playingState();
}

class _song_playingState extends State<song_playing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 70),
      height: 50,
      decoration: BoxDecoration(color: Colors.red),
      child: Row(
        children: [Image(image: AssetImage("assets/images/img_8.jpg"))],
      ),
    );
  }
}
