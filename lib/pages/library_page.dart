import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/home_page.dart';

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
    );
  }
}

getAppBar() {
  List items = [Icons.search, Icons.add];
  return AppBar(
      backgroundColor: Colors.black,
      title: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween;
        //   children: [
        //     Text("Your Library",
        //     // style: TextStyle(
        //     //   fontSize: 20,

        //     // ))
        //     // Icons
        //   ],
        // ),
      ));
}
