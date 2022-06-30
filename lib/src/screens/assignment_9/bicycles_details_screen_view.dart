import 'package:flutter/material.dart';
import 'package:hello_kurdistan_app/bike/bike_data.dart';
import 'package:hello_kurdistan_app/models/recipe.dart';

class StudentDetailsScreenView extends StatelessWidget {
  const StudentDetailsScreenView({Key? key, required this.index})
      : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            height: double.infinity,
            margin: const EdgeInsets.all(0.0),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.blueGrey, Colors.grey],
              ),
            ),
            child: Stack(
              children: [
                SizedBox(
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        // bikeData[index]["image"].toString(),
                        Recipe.bikes[index].image.toString(),
                        alignment: Alignment.topCenter,
                      ),
                      Text(
                        "\n\nBrand:  " +
                            // bikeData[index]["name"].toString() +
                            Recipe.bikes[index].name.toString() +
                            "\n" +
                            "Type:    " +
                            // bikeData[index]["type"].toString() +
                            Recipe.bikes[index].type.toString() +
                            "\n" +
                            "Price:   " +
                            // bikeData[index]["price"].toString() +
                            Recipe.bikes[index].price.toString() +
                            " \$ \n\n" +
                            "    Description:",
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          letterSpacing: 1.5,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 310,
                          height: 220,
                          child: Text(
                            // bikeData[index]["description"].toString(),
                            Recipe.bikes[index].description.toString(),
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    decoration:  BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 1.5,
                        ),
                        shape: BoxShape.circle,
                        color: Colors.blueGrey),
                    child: InkWell(
                      child: const Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
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
