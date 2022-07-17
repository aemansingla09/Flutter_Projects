import 'package:flutter/material.dart';
import 'package:spotify_clone/data/songs_json.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: getAppBar(),
      body: getBody(),
    );
  }
}

getAppBar() {
  return AppBar(
      backgroundColor: Colors.black,
      elevation: 1,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Icon(Icons.add_alert),
            Icon(Icons.replay_circle_filled_outlined),
            Icon(Icons.settings),
          ],
        ),
      ));
}

getBody() {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Column(
          children: [
            Column(
              children: List.generate(3, (index) {
                return Row(
                  children: List.generate(2, (index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                      child: Container(
                        height: 70,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    );
                  }),
                );
              }),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "New Songs",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Column(
          children: [
            // Row(
            //     children: List.generate(10, (index) {
            //   return Padding(
            //     padding: const EdgeInsets.only(right: 20),
            //     child: Column(
            //       children: const [
            //         Text(
            //           "data",
            //           style: TextStyle(
            //               color: Colors.white,
            //               fontSize: 20,
            //               fontWeight: FontWeight.bold),
            //         )
            //       ],
            //     ),
            //   );
            // })),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(songs.length - 5, (index) {
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
                                    fit: BoxFit.fill,
                                    image: AssetImage(songs[index]['img'])),
                              ))
                        ],
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        )
      ]),
    ),
  );
}
