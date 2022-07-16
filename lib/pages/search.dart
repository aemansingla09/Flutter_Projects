// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/home_page.dart';

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
        children: [
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
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: AnimatedContainer(
            duration: Duration(microseconds: 400),
            width: 900,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              children: const [
                Icon(Icons.search),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Artists, songs,or podcasts",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                  ),
                ),
              ],
            )),
      ),
      const Padding(
        padding: const EdgeInsets.fromLTRB(40, 20, 10, 0),
        child: Icon(
          Icons.mic,
          color: Colors.white,
          size: 50,
        ),
      )
    ],
  );
  // return SingleChildScrollView(
  //     // child: Row(
  //   IconButton(
  //     onPressed: () {
  //     showSearch(
  //       context: context,
  //       delegate: CustomSearchDelegate(),
  //     );
  //     },
  //     icon: const (Icon.search),
  //     ),
  // ),
  // );
}
