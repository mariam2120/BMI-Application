// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names

import 'package:bmi_application/calculated.dart';
import 'package:flutter/material.dart';

// PINK : Color(0xffd93558) //GREY : Colors.white38 //BLACK : Color(0xff111427) //background : Color.fromARGB(95, 83, 80, 80)
class FirstScreen extends StatefulWidget {
  FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int weight = 80, age = 21;
  double height = 180;
  bool IsMale = true;
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
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            IsMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: IsMale
                                  ? Color(0xffd93558)
                                  : Color.fromARGB(95, 83, 80, 80)),
                          height: 225,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                color: Colors.white,
                                size: 85,
                              ),
                              Text(
                                "MALE",
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            IsMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: IsMale
                                  ? Color.fromARGB(95, 83, 80, 80)
                                  : Color(0xffd93558)),
                          height: 225,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                color: Colors.white,
                                size: 85,
                              ),
                              Text(
                                "FEMALE",
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(95, 83, 80, 80)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(color: Colors.white38, fontSize: 24),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${height.toInt()}",
                            style: TextStyle(color: Colors.white, fontSize: 50),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                                color: Color.fromARGB(97, 114, 104, 104)),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        min: 20,
                        max: 250,
                        activeColor: Colors.white,
                        inactiveColor: Colors.grey,
                        thumbColor: Color(0xffd93558),
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: Row(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(95, 83, 80, 80)),
                    height: 225,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(color: Colors.white38, fontSize: 25),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${weight}",
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                backgroundColor:
                                    Color.fromARGB(115, 229, 195, 224),
                                child: Icon(Icons.remove),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                backgroundColor:
                                    Color.fromARGB(115, 198, 156, 193),
                                child: Icon(Icons.add),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(95, 83, 80, 80)),
                    height: 225,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(color: Colors.white38, fontSize: 25),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${age}",
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                backgroundColor:
                                    Color.fromARGB(115, 229, 195, 224),
                                child: Icon(Icons.remove),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                backgroundColor:
                                    Color.fromARGB(115, 198, 156, 193),
                                child: Icon(Icons.add),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ])),
            Container(
              width: double.infinity,
              height: 55,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Calculated(IsMale: IsMale ,age: age,height: height,weight: weight),
                      ));
                },
                color: Color(0xffd93558),
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ),
            ),
          ],
        ));
  }
}
