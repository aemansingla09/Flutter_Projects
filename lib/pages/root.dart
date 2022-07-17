import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/home_page.dart';
import 'package:spotify_clone/pages/library_page.dart';
import 'package:spotify_clone/pages/search.dart';

class RootApp extends StatefulWidget {
  RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activetab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      backgroundColor: Colors.blue,
      bottomNavigationBar: getFooter(),
      body: getbody(),
    );
  }

  getbody() {
    return IndexedStack(
      index: activetab,
      children: [
        HomePage(), //0
        search(),
        YourLibraryPage()
      ],
    );
  }

  getFooter() {
    List items = [Icons.home, Icons.search, Icons.library_music];
    var iconSize = 30.0;
    return Container(
        height: 100,
        decoration: const BoxDecoration(color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(items.length, (index) {
                return IconButton(
                  icon: Icon(
                    items[index],
                    color: activetab == index ? Colors.red : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      activetab = index;
                    });
                  },
                );
              })
              // children: [
              //   Container(
              //     width: 400,
              //     child: ListView(
              //       scrollDirection: Axis.horizontal,
              //       children: items
              //           .map((icon) => Icon(
              //                 icon,
              //                 color: Colors.amber,
              //               ))
              //           .toList(),
              //     ),
              //   ),
              // ],
              ),
        ));
  }
}
