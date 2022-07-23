import 'dart:math';

import 'package:flutter/material.dart';

class YourLibraryPage extends StatefulWidget {
  YourLibraryPage({Key? key}) : super(key: key);

  @override
  State<YourLibraryPage> createState() => _YourLibraryPageState();
}

class _YourLibraryPageState extends State<YourLibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      backgroundColor: Colors.black,
      body: getBody(),
    );
  }
}

getAppBar() {
  List items = [Icons.search, Icons.add];
  return AppBar(
      backgroundColor: Colors.black,
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
            ))
      ],
      title: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Your Library",
                style: TextStyle(
                  fontSize: 20,
                )),
          ],
        ),
      ));
}

getBody() {
  final List<String> items =
      List<String>.generate(200, (index) => "Artist ${index + 1}");
  // print(items);
  return ListView.builder(
      controller: ScrollController(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 70,
            // width: 400,
            child: Row(
              children: [
                Image.asset("assets/images/img_${random(1, 10)}.jpg"),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[index],
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5.0, left: 2.0),
                        child: Text(
                          "Artist",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      });
}

random(int min, int max) {
  return min + Random().nextInt(max - min);
}
