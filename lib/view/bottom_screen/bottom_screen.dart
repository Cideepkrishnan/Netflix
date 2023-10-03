import 'package:flutter/material.dart';
import 'package:netflix/view/comeing_soon/comeing_soon.dart';
import 'package:netflix/view/download_screen/download_screen.dart';
import 'package:netflix/view/home_screen/home_screen.dart';
import 'package:netflix/view/more_screen/more_screen.dart';
import 'package:netflix/view/search_screen/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List _screens = [
      home_screen(),
      search_screen(),
      coming_soon(),
      download_screen(),
      more_screen()
    ];
    return Scaffold(
      body: _screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          backgroundColor: Colors.black,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined),
                label: "Coming Scoon"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: "Download"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu")
          ]),
    );
  }
}
