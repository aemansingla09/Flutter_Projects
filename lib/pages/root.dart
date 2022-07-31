import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/home_page.dart';
import 'package:spotify_clone/pages/library_page.dart';
import 'package:spotify_clone/pages/search.dart';
import 'package:spotify_clone/pages/album.dart';

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
      extendBody: true,
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
        // album(),
        YourLibraryPage()
      ],
    );
  }

  getFooter() {
    List items = [
      Icons.home_outlined,
      Icons.search_outlined,
      Icons.library_music_outlined
    ];
    List items2 = [Icons.home, Icons.search, Icons.library_music];
    var iconSize = 30.0;
    return Container(
        height: 60,
        decoration: const BoxDecoration(color: Color(0x00ffffff), boxShadow: [
          BoxShadow(
              color: Colors.black87,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0))
        ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(items.length, (index) {
                return IconButton(
                  iconSize: 40,
                  icon: Icon(
                    activetab != index ? items[index] : items2[index],
                    color: activetab == index
                        ? Colors.green.shade400
                        : Colors.white,
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
