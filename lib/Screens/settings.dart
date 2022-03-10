import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.green[400],
              ),
            ),
            title: Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
              child: Text("Your Profile",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20)),
            )),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Center(
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Image.asset(
                                  "assets/image/user.png",
                                  fit: BoxFit.cover,
                                ),
                              )))
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Column(
                    children: [
                      Row(children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.65,
                            height: MediaQuery.of(context).size.width * 0.15,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                              child: Text(
                                "Aniket Tiwari",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ))
                      ]),
                      Row(children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.65,
                            height: MediaQuery.of(context).size.width * 0.15,
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Container()))
                      ])
                    ],
                  )
                ],
              ),
              Column(),
            ],
          ),
        )));
  }
}
