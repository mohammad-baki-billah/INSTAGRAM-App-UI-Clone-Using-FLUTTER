import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/Screens/Login/login_screen.dart';
import 'package:instagram_ui_clone/Widgets/ui_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>const LoginScreen(),
          ),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customImage(imgUri: 'logo.png'),
           const SizedBox(
              height: 10,
            ),
            UiHelper.customImage(imgUri: 'Instagram.png'),
          ],
        ),
      ),
    );
  }
}
