import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/utils/database/database.dart';

class newarrival extends StatelessWidget {
  const newarrival({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      color: const Color.fromARGB(255, 65, 64, 64),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            width: 110,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.red),
            child: Image.asset(
              database.notification[index],
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "New Arrival",
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
                Text("El Chapo",
                    style: TextStyle(fontSize: 13, color: Colors.white)),
                Text("Nov 6",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
              ],
            ),
          )
        ],
      ),
    );
  }
}