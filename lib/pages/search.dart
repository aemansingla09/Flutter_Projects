import 'package:flutter/material.dart';
import 'package:spotify_clone/data/songs_json.dart';
import 'package:spotify_clone/pages/home_page.dart';
import 'package:spotify_clone/pages/box_data.dart';

class search extends StatefulWidget {
  search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
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
    title: Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            "Search",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}

getBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                  width: 300,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.search),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Artists, songs,or podcasts",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 20),
                        ),
                      ),
                    ],
                  )),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Icon(
                Icons.mic,
                color: Color.fromARGB(255, 187, 169, 169),
                size: 50,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: const [
            Text(
              "Your top genres",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Column(
                children: List.generate(abc.length, (ind) {
              return Row(
                  children: List.generate(abc[ind].length, (index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                  child: Container(
                    height: 70,
                    width: 170,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 233, 12, 67),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Text(
                          abc[ind][index],
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                );
              }));
            }))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: const [
            Text(
              "Popular podcast categories",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Row(
                children: List.generate(2, (index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                child: Container(
                  height: 70,
                  width: 170,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 233, 12, 67),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(songs[index]['img'])),
                  ),
                  child: Row(children: const [
                    Text(
                      "abhay",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ]),
                ),
              );
            }))
          ],
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "Browse all",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        Column(
            children: List.generate(30, (index) {
          return Row(
              children: List.generate(2, (index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
              child: Container(
                height: 70,
                width: 170,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 233, 12, 67),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            );
          }));
        }))
      ],
    ),
  );
}
