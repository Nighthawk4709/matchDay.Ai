import 'package:flutter/material.dart';
import 'package:matchday_ui/Screens/AnalyseByRally.dart';
import 'package:matchday_ui/Screens/AnalyzebyShot.dart';
import 'package:matchday_ui/Screens/drawer.dart';
import 'package:matchday_ui/Screens/settings.dart';
import 'package:matchday_ui/homepage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hovering/hovering.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'Screens/Comapare.dart';

class Site extends StatefulWidget {
  const Site({Key? key}) : super(key: key);

  @override
  State<Site> createState() => _SiteState();
}

class _SiteState extends State<Site> {
  late List<Data> _chartData;
  late List<Data> _newData;
  late TooltipBehavior _tooltipBehavior;
  @override
  void initState() {
    _chartData = getChartData();
    _newData = getData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final style1 = TextStyle(fontSize: 20);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      drawer: DrawerSite(),
      appBar: AppBar(
        backgroundColor: Colors.teal[300],
        title: Text("MatchDay.AI", style: style1),
        actions: <Widget>[
          Transform.scale(
            scale: 2,
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Settings()));
              },
              icon: Image.asset(
                "assets/image/user.png",
                fit: BoxFit.cover,
              ),
              iconSize: 18,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 10),
          Column(children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
              ),
              items: [22, 24, 23].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 0.1),
                      child: Image.asset(
                        "assets/image/$i.png",
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ]),
          SizedBox(
            height: 15,
          ),
          Column(children: [
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Basic Analysis",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ))
                ]),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              gradient: RadialGradient(colors: [
                                Colors.grey,
                                Colors.blueGrey,
                              ], center: Alignment.topRight, radius: 2),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.7),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(0, 3))
                              ],
                            ),
                            child: Stack(children: <Widget>[
                              Center(
                                  child: Text(
                                "Analyse By\n\t\t Shots",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                              Center(
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  child: HoverButton(onpressed: () {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                AnalyseShot()));
                                  }),
                                ),
                              )
                            ])),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              gradient: RadialGradient(colors: [
                                Colors.grey,
                                Colors.blueGrey,
                              ], center: Alignment.topLeft, radius: 2),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.7),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(0, 3))
                              ],
                            ),
                            child: Stack(children: <Widget>[
                              Center(
                                  child: Text(
                                "Analyse By\nRally Length",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                              Center(
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  child: HoverButton(onpressed: () {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                AnalyseRally()));
                                  }),
                                ),
                              )
                            ])),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              gradient: RadialGradient(colors: [
                                Colors.grey,
                                Colors.blueGrey,
                              ], center: Alignment.bottomRight, radius: 2),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.7),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(0, 3))
                              ],
                            ),
                            child: Stack(children: <Widget>[
                              Center(
                                  child: Text(
                                "Compare with\n\t\t\tFriends",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                              Center(
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  child: HoverButton(onpressed: () {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => Compare()));
                                  }),
                                ),
                              )
                            ])),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              gradient: RadialGradient(colors: [
                                Colors.grey,
                                Colors.blueGrey,
                              ], center: Alignment.bottomLeft, radius: 2),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.7),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(0, 3))
                              ],
                            ),
                            child: Stack(children: <Widget>[
                              Center(
                                  child: Text(
                                "View Winner\nand Error\nShots",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                              Center(
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  child: HoverButton(onpressed: () {
                                    showDialog(
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text("Work in progress :)"),
                                            content: SingleChildScrollView(
                                              child: ListBody(
                                                children: const <Widget>[
                                                  Text(
                                                      'kindly come back later'),
                                                ],
                                              ),
                                            ),
                                            actions: <Widget>[
                                              TextButton(
                                                child: const Text('Ok'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ],
                                          );
                                        },
                                        context: context);
                                  }),
                                ),
                              )
                            ])),
                      ],
                    )
                  ],
                )
              ],
            )
          ]),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Column(
                children: [
                  Text(
                    "Player Statistics",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Stack(children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 180,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        colors: [
                          Colors.teal.shade400,
                          Colors.deepPurple.shade200
                        ],
                      )),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                  child: Container(
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      height: 60,
                                      child: Center(
                                          child: Text(
                                        "Aniket",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30,
                                            color: Colors.white),
                                      )))),
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Center(
                                        child: Container(
                                      width: 120,
                                      height: 100,
                                      child: SfCircularChart(
                                        tooltipBehavior: _tooltipBehavior,
                                        series: <CircularSeries>[
                                          PieSeries<Data, String>(
                                            radius: "60",
                                            dataSource: _chartData,
                                            xValueMapper: (Data data, _) =>
                                                data.datalabel,
                                            yValueMapper: (Data data, _) =>
                                                data.values,
                                            dataLabelSettings:
                                                DataLabelSettings(
                                                    isVisible: true),
                                          )
                                        ],
                                      ),
                                    ))
                                  ],
                                ),
                                Column(
                                  children: [
                                    Center(
                                        child: Container(
                                      width: 120,
                                      height: 80,
                                      child: SfCircularChart(
                                        tooltipBehavior: _tooltipBehavior,
                                        series: <CircularSeries>[
                                          DoughnutSeries<Data, String>(
                                            radius: "60",
                                            dataSource: _chartData,
                                            xValueMapper: (Data data, _) =>
                                                data.datalabel,
                                            yValueMapper: (Data data, _) =>
                                                data.values,
                                            dataLabelSettings:
                                                DataLabelSettings(
                                                    isVisible: true),
                                          )
                                        ],
                                      ),
                                    ))
                                  ],
                                ),
                                Column(
                                  children: [
                                    Center(
                                        child: Container(
                                      width: 120,
                                      height: 80,
                                      child: SfCircularChart(
                                        tooltipBehavior: _tooltipBehavior,
                                        series: <CircularSeries>[
                                          PieSeries<Data, String>(
                                            radius: "60",
                                            dataSource: _newData,
                                            xValueMapper: (Data data, _) =>
                                                data.datalabel,
                                            yValueMapper: (Data data, _) =>
                                                data.values,
                                            dataLabelSettings:
                                                DataLabelSettings(
                                                    isVisible: true),
                                          )
                                        ],
                                      ),
                                    ))
                                  ],
                                )
                              ]),
                        ]),
                  ]),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(children: [
            Text(
              "Contact Us",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Name : ",
                    filled: true,
                    fillColor: Colors.grey.shade200,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email : ",
                    filled: true,
                    fillColor: Colors.grey.shade200,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  maxLines: 10,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Message : ",
                    filled: true,
                    fillColor: Colors.grey.shade200,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.black87),
                  child: Center(
                      child: Text("SUBMIT",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ))),
                  onPressed: () {},
                ),
              ),
            ),
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Text(
                "@ matchDay.AI",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ])
        ]),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [],
      // ),
    );
  }

  List<Data> getChartData() {
    final List<Data> chartData = [
      Data("Win", 60),
      Data("Loose", 30),
      Data("NR / Tie", 10)
    ];
    return chartData;
  }

  List<Data> getData() {
    final List<Data> newData = [
      Data("Smash", 18),
      Data("Toss", 32),
      Data("Drop", 23),
      Data("Net", 15),
      Data("Dive", 2),
      Data("Parallel", 10),
    ];
    return newData;
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class Data {
  final String datalabel;
  final int values;
  Data(this.datalabel, this.values);
}
