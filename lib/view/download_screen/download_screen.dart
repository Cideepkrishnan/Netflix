import 'package:flutter/material.dart';

class download_screen extends StatelessWidget {
  const download_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Smart Downloads",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 70, top: 30),
            child: Text(
              "Introducing Downloads For You",
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Container(
              height: 65,
              width: 350,
              child: Text(
                "fjabfkffagrufwfiwhfuwhshhchchfiwqihwfjabfkffagrufwfiwhfuwhshhchchfiwqihwiawhdihfhfiofohifahkainvhifjkhfoifhafaimanfigfaiafiffiawhdihfhfiofjabfkffagrufwfiwhfuwhshhchchfiwqihwiawhdihfhfiofohifahkainvhifjkhfoifhafaimanfigfaiafiffffjabfkffagrufwfiwhfuwhshhchchfiwqihwiawhdihfhfiofohifahkainvhifjkhfoifhafaimanfigfaiafiffohifahkainvhifjkhfoifhafaimanfigfaiafiff",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Container(
              height: 40,
              width: 360,
              color: Colors.blue,
              child: Center(
                child: Text(
                  "SETUP",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: Container(
              height: 33,
              width: 239,
              color: Colors.grey,
              child: Center(
                child: Text(
                  "Find Something to Download",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
