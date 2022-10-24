import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'authentication.dart';

class signUp extends StatefulWidget {
  signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: getAppBar(),
      backgroundColor: Colors.black,
      body: getBody(context),
    );
  }
}

getBody(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  // Icons icons = [Icons.];
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  List methods = ['G', 'F', 'T'];
  return Column(children: [
    // SizedBox(height: height / 10),
    Container(
      width: width,
      height: height * 0.3,
      // decoration: const BoxDecoration(
      //     image: DecorationImage(
      //         image: AssetImage("assets/images/img_2.jpg"),
      //         fit: BoxFit.contain)),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.16,
          ),
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage("assets/images/img_4.jpg"),
          )
        ],
      ),
    ),
    Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          // Container(
          //   child: TextField(
          //     decoration: InputDecoration(
          //       focusedBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(5),
          //           borderSide: BorderSide(color: Colors.grey, width: 1)),
          //       enabledBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(5),
          //           borderSide: BorderSide(color: Colors.black, width: 1)),
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(5),
          //       ),
          //       filled: true,
          //       fillColor: Colors.grey,
          //       hintText: "Name",
          //     ),
          //   ),
          // ),
          // SizedBox(height: 20),
          Container(
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.grey, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black, width: 1)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                filled: true,
                fillColor: Colors.grey,
                hintText: "Email",
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.grey, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black, width: 1)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: "Password",
                filled: true,
                fillColor: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: height * 0.1),
        ],
      ),
    ),
    GestureDetector(
      onTap: () {
        AuthController.instance.register(
            emailController.text.trim(), passwordController.text.trim());
      },
      child: Container(
        width: width * 0.4,
        height: height * 0.08,
        // color: Color.fromRGBO(30, 215, 96, 1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromRGBO(30, 215, 96, 1),
        ),
        child: Center(
            child: Text("Sign Up",
                style: TextStyle(color: Colors.white, fontSize: 20))),
      ),
    ),
    //Height between the sign up button and different methods
    SizedBox(height: 10),
    RichText(
        text: TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
            text: "Have an account?",
            style: TextStyle(color: Colors.grey, fontSize: 16))),
    SizedBox(
      height: height * 0.05,
    ),
    RichText(
        text: TextSpan(
            text: "Sign in using the following method",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              // fontWeight: FontWeight.bold,
            ))),
    Wrap(
      children: List<Widget>.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Color.fromRGBO(30, 215, 96, 1),
            child: Text(
              methods[index],
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        );
      }),
    )
  ]);
}
