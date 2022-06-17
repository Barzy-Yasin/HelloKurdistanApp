import 'package:flutter/material.dart';

class AzadiPark extends StatelessWidget {
  const AzadiPark({Key? key}) : super(key: key);
  final String myName = "Barzy Biker";
  final String date = "January 17, 2022";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // var bbb=52;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.blueGrey.shade200,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Center(
            child: Text(
              "Azadi Park",
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
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // width: 200,
                  height: 400,
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('images/bicycle.jpg'),
                  ),
                ),
                Text(
                  myName,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 74, 32, 32),
                  ),
                ),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 74, 32, 32),
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
