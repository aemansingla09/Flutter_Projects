import 'package:flutter/material.dart';
import 'package:spotify_clone/methods/authentication.dart';
import 'package:spotify_clone/pages/login_page.dart';
import 'package:spotify_clone/pages/signup_page.dart';
// import 'pages/seach.dart';
import 'pages/root.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthController()));
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: loginPage(),
  ));
}
