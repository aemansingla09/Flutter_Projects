import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      backgroundColor: Colors.amber,
      elevation: 1,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Explore",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Icon(Icons.list)
          ],
        ),
      ));
}

getBody() {
  return SingleChildScrollView(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(10, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 180,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image:
                                      AssetImage("assests/images/img_1.jpg"))),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          )
        ],
      )
    ]),
  );
}
