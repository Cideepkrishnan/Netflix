import 'package:flutter/material.dart';
import 'package:netflix/utils/image/image_constant.dart';
import 'package:netflix/view/user_screen/user_screen.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) => Navigator.push(context,
        MaterialPageRoute(builder: (context) => user_screen()))); //user screen
  }

  bool isloading = true;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 56,
          width: 207,
          child: Image.asset(image.logo),
        ),
      ),
    );
  }
}
