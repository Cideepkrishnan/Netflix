import 'package:flutter/material.dart';
import 'package:netflix/utils/database/database.dart';
import 'package:netflix/utils/image/image_constant.dart';
import 'package:netflix/view/bottom_screen/bottom_screen.dart';

class user_screen extends StatelessWidget {
  const user_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: SizedBox(),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Container(
          width: 138,
          height: 37,
          child: Image.asset(image.logo),
        ),
        actions: [
          Icon(Icons.edit),
          SizedBox(
            width: 24,
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 170,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavScreen(),
                        ));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 92,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    database.usernameimage[index]["image"]))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        database.usernameimage[index]["name"],
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
