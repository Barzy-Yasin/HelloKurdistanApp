import 'package:flutter/material.dart';

class BicycleSlider extends StatefulWidget {
  const BicycleSlider({Key? key}) : super(key: key);

  @override
  State<BicycleSlider> createState() => BicycleSliderState();
}

class BicycleSliderState extends State<BicycleSlider> {
  int counter = 0;
  final String img1 = "images/roadbike1.jpg";
  final String img2 = "images/roadbike2.jpg";
  final String img3 = "images/roadbike3.jpg";
  final String img4 = "images/roadbike4.jpg";
  String imgSlider = "images/roadbike1.jpg";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade200,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Center(
            child: Text(
              "Bicycle Slider",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blueGrey, Colors.grey],
            ),
          ),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 13,
                ),
                Container(
                  width: 330,
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(imgSlider),
                  ),
                ),
                Container(
                  width: 330,
                  height: 120,
                  padding: const EdgeInsets.all(5.0),
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListView(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10.0),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          setState(() {
                            imgSlider = img1;
                            counter++;
                          });
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(1.5),
                            child: Image.asset(img1),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            imgSlider = img2;
                            counter++;
                          });
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(1.5),
                            child: Image.asset(img2),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            imgSlider = img3;
                            counter++;
                          });
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(1.5),
                            child: Image.asset(img3),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            imgSlider = img4;
                            counter++;
                          });
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(1.5),
                            child: Image.asset(img4),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '$counter',
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
