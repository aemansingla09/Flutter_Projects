import 'package:flutter/material.dart';

class RootApp extends StatefulWidget {
  RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
<<<<<<< HEAD
=======
      bottomNavigationBar: getFooter(),
>>>>>>> 4537937e7cca045fe18278b374f78ae2767b00c7
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
                    color: Colors.white,
                  ),
                  onPressed: () {},
                );
              })),
        ));
  }
}
