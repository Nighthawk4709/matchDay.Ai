import 'dart:math';

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:matchday_ui/buttons/buttonsTopNav.dart';
import 'package:matchday_ui/buttons/floatingActionButton.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../site.dart';

class AnalyseRally extends StatefulWidget {
  const AnalyseRally({Key? key}) : super(key: key);

  @override
  State<AnalyseRally> createState() => _AnalyseRallyState();
}

class _AnalyseRallyState extends State<AnalyseRally> {
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
  late int r10 = random.nextInt(21) + 1;
  List<_ShotsData> data = [
    _ShotsData('0-5', 10),
    _ShotsData('6-10', 25),
    _ShotsData('11-15', 15),
    _ShotsData('15-20', 45),
    _ShotsData('21-25', 5)
  ];
  List<_ShotsData> data1 = [
    _ShotsData('0-5', 15),
    _ShotsData('6-10', 45),
    _ShotsData('11-15', 15),
    _ShotsData('15-20', 20),
    _ShotsData('21-25', 5)
  ];
  List<_ShotsData> data2 = [
    _ShotsData('0-5', 12),
    _ShotsData('6-10', 22),
    _ShotsData('11-15', 19),
    _ShotsData('15-20', 40),
    _ShotsData('21-25', 7)
  ];
  List<_ShotsData> data3 = [
    _ShotsData('0-5', 22),
    _ShotsData('6-10', 10),
    _ShotsData('11-15', 5),
    _ShotsData('15-20', 5),
    _ShotsData('21-25', 31)
  ];
  String dropdownValue = 'Srikant Kidambi';
  String dx = 'Smash';
  String dy = 'Overview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        title: Text("Analyse By Rally length"),
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
          ButtonRally(),
          SizedBox(
            height: 60,
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
                      "Game",
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
            Row(
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
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          buildRow(),
          DataTable2(
            headingRowColor: MaterialStateColor.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) return Colors.blue;
              return Colors.indigo.shade50;
            }),
            border: TableBorder.all(width: 0.5, color: Colors.grey),
            columns: [
              DataColumn2(
                label: Text("Rally length"),
              ),
              DataColumn2(
                  label: Text(
                    "% of points\n won",
                    style: TextStyle(fontSize: 13),
                  ),
                  size: ColumnSize.L),
              DataColumn2(
                label: Text(
                  "Count",
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ],
            rows: [
              DataRow2(cells: [
                DataCell(Text(
                  "0-5",
                  style: TextStyle(fontSize: 14),
                )),
                DataCell(Text("$r1")),
                DataCell(Text("$r2")),
              ]),
              DataRow2(
                  color: MaterialStateColor.resolveWith((states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.blue;
                    return Colors.grey.shade100;
                  }),
                  cells: [
                    DataCell(Text(
                      "6-10",
                      style: TextStyle(fontSize: 14),
                    )),
                    DataCell(Text("$r3")),
                    DataCell(Text("$r4")),
                  ]),
              DataRow2(cells: [
                DataCell(Text(
                  "11-15",
                  style: TextStyle(fontSize: 14),
                )),
                DataCell(Text("$r5")),
                DataCell(Text("$r6")),
              ]),
              DataRow2(cells: [
                DataCell(Text(
                  "16-20",
                  style: TextStyle(fontSize: 14),
                )),
                DataCell(Text("$r6")),
                DataCell(Text("$r7")),
              ]),
              DataRow2(
                  color: MaterialStateColor.resolveWith((states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.blue;
                    return Colors.indigo.shade50;
                  }),
                  cells: [
                    DataCell(Text(
                      "20-25",
                      style: TextStyle(fontSize: 14),
                    )),
                    DataCell(Text("$r8")),
                    DataCell(Text("$r9")),
                  ]),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      )),
      floatingActionButton: Fab(),
    );
  }

  buildRow() {
    if ("$dy" == "Overview") {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 200,
            child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                primaryYAxis: NumericAxis(),
                series: <ChartSeries<_ShotsData, String>>[
                  ColumnSeries(
                      color: Colors.blueAccent[200],
                      dataSource: data,
                      xValueMapper: (_ShotsData sales, _) => sales.year,
                      xAxisName: 'Rally length',
                      yValueMapper: (_ShotsData sales, _) => sales.sales,
                      yAxisName: '% of points won',
                      // Enable data label
                      dataLabelSettings: DataLabelSettings(isVisible: true)),
                ]),
          )
        ],
      );
    } else if ("$dy" == "Game1") {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 200,
            child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                primaryYAxis: NumericAxis(),
                series: <ChartSeries<_ShotsData, String>>[
                  ColumnSeries(
                      color: Colors.blueAccent[200],
                      dataSource: data1,
                      xValueMapper: (_ShotsData sales, _) => sales.year,
                      xAxisName: 'Rally length',
                      yValueMapper: (_ShotsData sales, _) => sales.sales,
                      yAxisName: '% of points won',
                      // Enable data label
                      dataLabelSettings: DataLabelSettings(isVisible: true)),
                ]),
          )
        ],
      );
    } else if ("$dy" == "Game2") {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 200,
            child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                primaryYAxis: NumericAxis(),
                series: <ChartSeries<_ShotsData, String>>[
                  ColumnSeries(
                      color: Colors.blueAccent[200],
                      dataSource: data2,
                      xValueMapper: (_ShotsData sales, _) => sales.year,
                      xAxisName: 'Rally length',
                      yValueMapper: (_ShotsData sales, _) => sales.sales,
                      yAxisName: '% of points won',
                      // Enable data label
                      dataLabelSettings: DataLabelSettings(isVisible: true)),
                ]),
          )
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 200,
            child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                primaryYAxis: NumericAxis(),
                series: <ChartSeries<_ShotsData, String>>[
                  ColumnSeries(
                      color: Colors.blueAccent[200],
                      dataSource: data3,
                      xValueMapper: (_ShotsData sales, _) => sales.year,
                      xAxisName: 'Rally length',
                      yValueMapper: (_ShotsData sales, _) => sales.sales,
                      yAxisName: '% of points won',
                      // Enable data label
                      dataLabelSettings: DataLabelSettings(isVisible: true)),
                ]),
          )
        ],
      );
    }
  }
}

class _ShotsData {
  _ShotsData(this.year, this.sales);

  final String year;
  final double sales;
}
