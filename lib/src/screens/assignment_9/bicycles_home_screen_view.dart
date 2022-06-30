import 'package:flutter/material.dart';
import 'package:hello_kurdistan_app/bike/bike_data.dart';
import 'package:hello_kurdistan_app/models/recipe.dart';
// import 'package:hello_kurdistan_app/models/recipe.dart';
import 'package:hello_kurdistan_app/src/screens/assignment_9/bicycles_details_screen_view.dart';


class StudentHomeScreenView extends StatefulWidget {
  const StudentHomeScreenView({Key? key}) : super(key: key);

  @override
  State<StudentHomeScreenView> createState() => _StudentHomeScreenViewState();
}

class _StudentHomeScreenViewState extends State<StudentHomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          title: const Text(
            "Bicycle Brands",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blueGrey, Colors.grey],
              ),
            ),
            child: Expanded(
              // flex: 5,
              child: ListView.builder(
                // itemCount: bikeData.length,
                itemCount: Recipe.bikes.length,
                itemBuilder: (context, index) {
                  return Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        width: 360,
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            // bikeData[index]["image"].toString(),
                            Recipe.bikes[index].image.toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 2,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StudentDetailsScreenView(
                                  index: index,
                                ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            // splashFactory: InkRipple.splashFactory,
                            primary: const Color.fromARGB(186, 55, 71, 79),
                            onPrimary: Colors.white,
                            side: const BorderSide(
                                width: 1.0, color: Colors.white),
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 40.0),
                          ),
                          child: Text(
                            // bikeData[index]["name"].toString(),
                            Recipe.bikes[index].name.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
