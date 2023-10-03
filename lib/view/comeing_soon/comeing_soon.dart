import 'package:flutter/material.dart';
import 'package:netflix/view/comeing_soon/moviesbar.dart';
import 'package:netflix/view/comeing_soon/newarrival.dart';

class coming_soon extends StatelessWidget {
  const coming_soon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              width: 19,
              height: 19,
              decoration:
                  BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              child: Icon(
                Icons.notifications,
                size: 13,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Notifications",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 130,
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return newarrival(
                    index: index,
                  );
                }),
          ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return moviesbar(
                  index: index,
                );
              })
        ],
      ),
    );
  }
}
