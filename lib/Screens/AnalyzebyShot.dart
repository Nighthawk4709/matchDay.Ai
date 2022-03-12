import 'dart:math';
import 'package:flutter/material.dart';
import 'package:matchday_ui/Screens/Comapare.dart';
import 'package:matchday_ui/buildRowsAndColumns/buildAnalyseShot.dart';
import 'package:matchday_ui/buttons/buttonsTopNav.dart';
import 'package:matchday_ui/buttons/floatingActionButton.dart';

class AnalyseShot extends StatefulWidget {
  const AnalyseShot({Key? key}) : super(key: key);

  @override
  State<AnalyseShot> createState() => _AnalyseShotState();
}

class _AnalyseShotState extends State<AnalyseShot> {
  Random rng = new Random();
  late var l = new List.generate(12, (_) => rng.nextInt(100));

  String dropdownValue = 'Srikant Kidambi';
  String dx = 'Smash';
  String dy = 'Overview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: Text("Analyse By Shot Type"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.calendar_today_outlined,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ButtonAnalyseShot(),
          SizedBox(
            height: 60,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Player",
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Center(
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        decoration: BoxDecoration(
                            color: Colors.orange[100],
                            border:
                                Border.all(color: Colors.transparent, width: 4),
                            borderRadius: BorderRadius.circular(12)),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          iconSize: 20,
                          dropdownColor: Colors.orange[100],
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          underline: Container(
                            color: Colors.transparent,
                          ),
                          items: <String>[
                            'Srikant Kidambi',
                            'LCW',
                            'Lin Dan',
                            'Kashyap'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        )))
              ]),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                "Shot Type",
              ),
              SizedBox(
                width: 80,
              ),
              Text(
                "Game",
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(
                alignment: WrapAlignment.spaceAround,
                children: [
                  Row(children: [
                    Center(
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            decoration: BoxDecoration(
                                color: Colors.orange[100],
                                border: Border.all(
                                    color: Colors.transparent, width: 4),
                                borderRadius: BorderRadius.circular(12)),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              iconSize: 20,
                              dropdownColor: Colors.orange[100],
                              value: dx,
                              icon: const Icon(Icons.arrow_downward),
                              elevation: 16,
                              onChanged: (String? ndvalue) {
                                setState(() {
                                  dx = ndvalue!;
                                });
                              },
                              underline: Container(
                                color: Colors.transparent,
                              ),
                              items: <String>[
                                'Smash',
                                'Net Clear',
                                'Toss Clear',
                                'Drop'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            )))
                  ]),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Row(children: [
                    Center(
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: BoxDecoration(
                                color: Colors.orange[100],
                                border: Border.all(
                                    color: Colors.transparent, width: 4),
                                borderRadius: BorderRadius.circular(12)),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              iconSize: 20,
                              dropdownColor: Colors.orange[100],
                              value: dy,
                              icon: const Icon(Icons.arrow_downward),
                              elevation: 16,
                              onChanged: (String? newValue) {
                                setState(() {
                                  dy = newValue!;
                                });
                              },
                              underline: Container(
                                color: Colors.transparent,
                              ),
                              items: <String>[
                                'Overview',
                                'Game1',
                                'Game2',
                                'Game3',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            )))
                  ]),
                ],
              )
            ],
          ),
          SizedBox(height: 20.0),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        dropdownValue,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [Text("vs")],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [Text("Aniket")],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "TOKYO OLYMPICS",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
                child: Container(
              height: 150.0,
              width: 240.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/$dx.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ))
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_upward_rounded),
                    label: Text("Straight"))
              ]),
              Column(children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_downward_sharp),
                  label: Text("Cross"),
                )
              ]),
            ],
          ),
          BuildRow(
            check: "$dy",
            l: l,
          ),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                  color: Colors.green[200],
                  border: Border.all(color: Colors.transparent, width: 4),
                  borderRadius: BorderRadius.circular(12)),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Compare()));
                },
                icon: Icon(
                  Icons.compare,
                  color: Colors.white,
                ),
                label: Text(
                  "Compare",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ]),
        ],
      )),
      floatingActionButton: Fab(),
    );
  }
}
