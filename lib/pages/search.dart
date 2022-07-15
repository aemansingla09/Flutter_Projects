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
  return SingleChildScrollView(
      // child: Row(
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
      );
}
