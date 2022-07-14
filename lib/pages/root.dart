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
      appBar: AppBar(title: Text("Hello")),
      backgroundColor: Colors.black,
    );
  }
}
