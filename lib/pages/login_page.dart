import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spotify_clone/pages/authentication.dart';
import 'package:spotify_clone/pages/signup_page.dart';

class loginPage extends StatefulWidget {
  loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: getAppBar(),
      backgroundColor: Colors.black,
      body: getBody(context),
    );
  }

  getAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text(
        "Welcome",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

getBody(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  return Column(
    children: [
      // SizedBox(height: height / 8),
      Container(
          width: width,
          height: height / 3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/img_2.jpg"),
                  fit: BoxFit.fitHeight))),
      SizedBox(height: 50), // image and text
      Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          width: width,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Log In",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 50),
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
                controller: passwordController,
                obscureText: true,
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
          ])),
      SizedBox(height: height * 0.08), //input and button
      // TextField(),

      GestureDetector(
        onTap: () {
          AuthController.instance.login(
              emailController.text.trim(), passwordController.text.trim());
        },
        child: Container(
          width: width * 0.4,
          height: height * 0.08,
          // color: Color.fromRGBO(30, 215, 96, 1),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromRGBO(30, 215, 96, 1)),
          child: const Center(
            child: Text(
              "Sign In",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
      // TextButton(
      //     style: TextButton.styleFrom(
      //       shape: RoundedRectangleBorder(
      //           borderRadius: new BorderRadius.circular(20)),
      //       backgroundColor: Color.fromRGBO(30, 215, 96, 1),
      //       minimumSize: Size(200, 44),
      //     ),
      //     onPressed: () {
      //       // Navigator.push(context, PageTransition(child:  /*password ka page*/, type: PageTransitionType.bottomToTop));
      //     },
      //     child: const Text("Login",
      //         style: TextStyle(
      //             color: Colors.black,
      //             fontWeight: FontWeight.w400,
      //             fontSize: 18))),
      SizedBox(height: height * 0.14), //button and create account
      RichText(
          text: TextSpan(
              text: "Don't have an account?",
              style: TextStyle(color: Colors.white, fontSize: 16),
              children: [
            TextSpan(
                text: " Create",
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Get.to(() => signUp()))
          ])),
      // TextButton(
      //     onPressed: () {},
      //     child: const Text(
      //       "Don't Have a Account,Sign Up",
      //       style:
      //           TextStyle(color: Color.fromRGBO(30, 215, 96, 1), fontSize: 12),
      //     ))
    ],
  );
}
