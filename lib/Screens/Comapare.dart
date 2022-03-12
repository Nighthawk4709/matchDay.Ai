import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:matchday_ui/buttons/buttonsTopNav.dart';
import 'package:matchday_ui/buttons/floatingActionButton.dart';
import 'dart:math';

import 'package:matchday_ui/site.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class Compare extends StatefulWidget {
  const Compare({Key? key}) : super(key: key);

  @override
  State<Compare> createState() => _CompareState();
}

class _CompareState extends State<Compare> {
  Random random = new Random();
  late int r1 = random.nextInt(21) + 1;
  late int r2 = random.nextInt(21) + 1;
  late int r3 = random.nextInt(21) + 1;
  late int r4 = random.nextInt(21) + 1;
  late int r5 = random.nextInt(21) + 1;
  late int r6 = random.nextInt(21) + 1;
  late int r7 = random.nextInt(21) + 1;
  late int r8 = random.nextInt(21) + 1;
  late int r9 = random.nextInt(21) + 1;
  late int r11 = random.nextInt(21) + 1;
  late int r12 = random.nextInt(21) + 1;
  late int r13 = random.nextInt(21) + 1;
  late int r14 = random.nextInt(21) + 1;
  late int r15 = random.nextInt(21) + 1;

  String dropdownValue = 'Srikant Kidambi';
  String dx = 'Smash';
  String dy = 'Overview';

  String url = 'https://matchday.ai/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Compare your game"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.calendar_today_sharp,
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
          ButtonCompare(),
          SizedBox(
            height: 80,
          ),
          Row(children: [
            Row(
              children: [
                SizedBox(
                  width: 28,
                ),
                Text(
                  "Player",
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 165,
                    ),
                    Text(
                      "Shot Type",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ]),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
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
            SizedBox(
              width: 12,
            ),
            Row(children: [
              Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: BoxDecoration(
                          color: Colors.orange[100],
                          border:
                              Border.all(color: Colors.transparent, width: 4),
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
          ]),
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
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
          SizedBox(
            height: 10,
          ),
          DataTable2(
            headingRowColor: MaterialStateColor.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) return Colors.blue;
              return Colors.indigo.shade50;
            }),
            border: TableBorder.all(color: Colors.grey, width: 0.5),
            columns: [
              DataColumn2(
                label: Text(""),
              ),
              DataColumn2(
                  label: Text(
                    "Game\n1",
                    style: TextStyle(fontSize: 13),
                  ),
                  size: ColumnSize.L),
              DataColumn2(
                  label: Text(
                    "Game\n2",
                    style: TextStyle(fontSize: 13),
                  ),
                  size: ColumnSize.L),
              DataColumn2(
                label: Text(
                  "Game\n3",
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ],
            rows: [
              DataRow2(
                  color: MaterialStateColor.resolveWith((states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.blue;
                    return Color(0xffb0bec5);
                  }),
                  cells: [
                    DataCell(Text(
                      "Count",
                      style: TextStyle(fontSize: 12),
                    )),
                    DataCell(Text("$r1")),
                    DataCell(Text("$r2")),
                    DataCell(Text("$r3"))
                  ]),
              DataRow2(cells: [
                DataCell(Text(
                  "Winner",
                  style: TextStyle(fontSize: 12),
                )),
                DataCell(Text("$r4")),
                DataCell(Text("$r6")),
                DataCell(Text("$r3"))
              ]),
              DataRow2(
                  color: MaterialStateColor.resolveWith((states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.blue;
                    return Color(0xffb0bec5);
                  }),
                  cells: [
                    DataCell(Text(
                      "Winner %",
                      style: TextStyle(fontSize: 12),
                    )),
                    DataCell(Text("$r7")),
                    DataCell(Text("$r8")),
                    DataCell(Text("$r9"))
                  ]),
              DataRow2(cells: [
                DataCell(Text(
                  "Error",
                  style: TextStyle(fontSize: 12),
                )),
                DataCell(Text("$r2")),
                DataCell(Text("$r11")),
                DataCell(Text("$r3"))
              ]),
              DataRow2(
                  color: MaterialStateColor.resolveWith((states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.blue;
                    return Color(0xffb0bec5);
                  }),
                  cells: [
                    DataCell(Text(
                      "Error%",
                      style: TextStyle(fontSize: 12),
                    )),
                    DataCell(Text("$r12")),
                    DataCell(Text("$r14")),
                    DataCell(Text("$r15"))
                  ]),
            ],
          ),
        ],
      )),
      floatingActionButton: Fab(),
    );
  }
}
