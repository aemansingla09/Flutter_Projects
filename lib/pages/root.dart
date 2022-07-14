import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/home_page.dart';

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
        // Center(
        //   child: Text(
        //     "Home",
        //     style: TextStyle(color: Colors.white),
        //   ),
        // ),
        Center(
          //1
          child: Text("Search"),
        ),
        Center(
          //2
          child: Text("Library"),
        )
      ],
    );
  }

  getFooter() {
    List items = [Icons.home, Icons.search, Icons.library_music];
    return Container(
        height: 100,
        decoration: BoxDecoration(color: Colors.black),
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
              })),
        ));
  }
}
