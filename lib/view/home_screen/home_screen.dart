import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix/utils/database/database.dart';
import 'package:netflix/utils/image/image_constant.dart';

// import 'package:newclass/view/coming_soon/coming_soon.dart';
// import 'package:newclass/view/download/download.dart';
// import 'package:newclass/view/more/more.dart';
// import 'package:newclass/view/search/search.dart';

class home_screen extends StatefulWidget {
  const home_screen({
    super.key,
    // required this.index,
  });
  // final int index;
  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  // int _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              CarouselSlider(
                  items: List.generate(
                      database.cursolimage.length,
                      (index) => Container(
                            height: 500,
                            width: 424,
                            //image
                            child: Image.asset(
                              database.cursolimage[index],
                              fit: BoxFit.cover,
                            ),
                          )),
                  options: CarouselOptions(
                    height: 500,
                    viewportFraction: 1,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(image.icon),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "TV Shows",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        Text("Movies",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17)),
                        Text("My List",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 420),
                    child: Text("#2 in Nigeria Today",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 13)),
                  ),
                ],
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "My List",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 45,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.play_arrow),
                        SizedBox(
                          width: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Play",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),
                      Text(
                        "info",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              //previews
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 270),
              child: Text(
                "Previews",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 110,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: Moviesclass.movies.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage(Moviesclass.movies[index]),
                          radius: 50,
                          backgroundColor: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 90),
                  //  ContinueWatchingforEmenalo
                  child: Text(
                    "Continue Watching for Emenalo",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child: Image.asset("assets/image/Rectangle 14.png"),
                          height: 161,
                          width: 103,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Text(
                    "Popular on Netflix",
                    //  PopularonNetflix
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child:
                              Image.asset("assets/image/Rectangle 15 (1).png"),
                          height: 161,
                          width: 103,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text(
                    "Trending Now",
                    //  Trendingnow
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child:
                              Image.asset("assets/image/Rectangle 15 (9).png"),
                          height: 161,
                          width: 103,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 160),
                  child: Text(
                    "Top 10 in Nigeria Today ",
                    // Top 10 in Nigeria Today
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child:
                              Image.asset("assets/image/Rectangle 16 (2).png"),
                          height: 161,
                          width: 103,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 300),
                  child: Text(
                    "My List",
                    // My List
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child:
                              Image.asset("assets/image/Rectangle 16 (3).png"),
                          height: 161,
                          width: 103,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Text(
                    "African Movies",
                    // African Movies
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child:
                              Image.asset("assets/image/Rectangle 16 (4).png"),
                          height: 161,
                          width: 103,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Text(
                    "Mollywood Movies & TV",
                    //Nollywood Movies & TV
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child:
                              Image.asset("assets/image/Rectangle 15 (5).png"),
                          height: 161,
                          width: 103,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Text(
                    "Netflix Originals",
                    // Netflix Originals
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child:
                              Image.asset("assets/image/Rectangle 15 (6).png"),
                          height: 251,
                          width: 180,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 240),
                  child: Text(
                    "Watch It Again",
                    // Watch It Again
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child:
                              Image.asset("assets/image/Rectangle 15 (7).png"),
                          height: 161,
                          width: 103,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text(
                    "New Releases",
                    //New Releases
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child:
                              Image.asset("assets/image/Rectangle 15 (8).png"),
                          height: 161,
                          width: 103,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Text(
                    "TV Thrillers & Mysteries",
                    //TV Thrillers & Mysteries
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child:
                              Image.asset("assets/image/Rectangle 15 (9).png"),
                          height: 161,
                          width: 103,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text(
                    "US TV Shows",
                    //US TV Shows
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          child:
                              Image.asset("assets/image/Rectangle 15 (10).png"),
                          height: 161,
                          width: 103,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
