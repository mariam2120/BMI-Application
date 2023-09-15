// ignore_for_file: prefer_const_constructors, must_be_immutable, non_constant_identifier_names

import 'dart:math';

import 'package:bmi_application/firstscreen.dart';
import 'package:flutter/material.dart';

class Calculated extends StatelessWidget {
  int weight, age;
  double height;
  bool IsMale;
  
  Calculated(
      {super.key,
      required this.weight,
      required this.height,
      required this.age,
      required this.IsMale});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
        backgroundColor: Color(0xff111427),
      ),
      backgroundColor: Color(0xff111427),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "THE RESULT",
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(95, 83, 80, 80)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Gender : ${IsMale ? "Male" : "Female"}",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Height : ${height.toInt()}",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Weight : ${weight}",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Age : ${age}",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                    SizedBox(
                      height: 90,
                    ),
                    Text("RESULT : ${(weight/pow(height/100, 2)).toStringAsFixed(2)}",
                        style: TextStyle(
                            color: Color.fromARGB(255, 54, 194, 180),
                            fontSize: 30))
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 55,
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FirstScreen(),
                    ));
              },
              color: Color(0xffd93558),
              child: Text(
                "Re-CALCULATE",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
