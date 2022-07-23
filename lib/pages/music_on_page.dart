import 'package:flutter/material.dart';
import 'package:spotify_clone/data/songs_json.dart';

class MusiconPage extends StatefulWidget {
  MusiconPage({Key? key}) : super(key: key);

  @override
  State<MusiconPage> createState() => _MusiconPageState();
}

class _MusiconPageState extends State<MusiconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              musicon = !musicon;
            },
            child: const Text("Play Music")),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Go Back"))
      ]),
    );
  }
}
