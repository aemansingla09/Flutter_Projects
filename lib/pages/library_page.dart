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
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Your Library", style: TextStyle(fontSize: 20)),
          ],
          // child: Column(

          // )
        ),
      ));
}
