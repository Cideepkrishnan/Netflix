import 'package:flutter/material.dart';

class search_screen extends StatelessWidget {
  const search_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
                child: Column(
              children: [
                Container(
                  height: 58,
                  width: double.infinity,
                  color: Color.fromARGB(66, 85, 84, 83),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.mic),
                          suffixIconColor: Colors.white,
                          prefixIconColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Search for a show, movie, genre, e.t.c.',
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 210, top: 20),
                  child: Text(
                    "Top Searches",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 1),
                          child: Container(
                            height: 76,
                            width: 391,
                            color: Color.fromARGB(255, 65, 65, 63),
                            child: Row(
                              children: [
                                Container(
                                    height: 76,
                                    width: 146,
                                    child: Image.asset(
                                        "assets/image/topseries.png")),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    "Citation",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 100),
                                  child: Icon(
                                    Icons.play_circle_outline,
                                    size: 33,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 1),
                          child: Container(
                            height: 76,
                            width: 391,
                            color: Color.fromARGB(255, 65, 65, 63),
                            child: Row(
                              children: [
                                Container(
                                    height: 76,
                                    width: 146,
                                    child: Image.asset(
                                        "assets/image/topseries1.png")),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    "Oloture",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 105),
                                  child: Icon(
                                    Icons.play_circle_outline,
                                    size: 33,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 1),
                          child: Container(
                            height: 76,
                            width: 391,
                            color: Color.fromARGB(255, 65, 65, 63),
                            child: Row(
                              children: [
                                Container(
                                    height: 76,
                                    width: 146,
                                    child: Image.asset(
                                        "assets/image/topseries2.png")),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    "The Setup",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80),
                                  child: Icon(
                                    Icons.play_circle_outline,
                                    size: 33,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 1),
                          child: Container(
                            height: 76,
                            width: 391,
                            color: Color.fromARGB(255, 65, 65, 63),
                            child: Row(
                              children: [
                                Container(
                                    height: 76,
                                    width: 146,
                                    child: Image.asset(
                                        "assets/image/topseries3.png")),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    "Breaking Bad",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 52),
                                  child: Icon(
                                    Icons.play_circle_outline,
                                    size: 33,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 1),
                          child: Container(
                            height: 76,
                            width: 391,
                            color: Color.fromARGB(255, 65, 65, 63),
                            child: Row(
                              children: [
                                Container(
                                    height: 76,
                                    width: 146,
                                    child: Image.asset(
                                        "assets/image/topseries4.png")),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    "Ozark",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 120),
                                  child: Icon(
                                    Icons.play_circle_outline,
                                    size: 33,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 1),
                          child: Container(
                            height: 76,
                            width: 391,
                            color: Color.fromARGB(255, 65, 65, 63),
                            child: Row(
                              children: [
                                Container(
                                    height: 76,
                                    width: 146,
                                    child: Image.asset(
                                        "assets/image/topseries5.png")),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    "The Governor",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Icon(
                                    Icons.play_circle_outline,
                                    size: 33,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 1),
                          child: Container(
                            height: 76,
                            width: 391,
                            color: Color.fromARGB(255, 65, 65, 63),
                            child: Row(
                              children: [
                                Container(
                                    height: 76,
                                    width: 146,
                                    child: Image.asset(
                                        "assets/image/topseries6.png")),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    "Your Excellency",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Icon(
                                    Icons.play_circle_outline,
                                    size: 33,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
