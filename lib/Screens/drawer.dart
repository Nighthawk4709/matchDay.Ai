import 'package:flutter/material.dart';
import 'package:matchday_ui/Screens/settings.dart';

class DrawerSite extends StatelessWidget {
  const DrawerSite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Drawer(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => Settings()));
                          },
                          icon: Image.asset(
                            "assets/image/user.png",
                            fit: BoxFit.cover,
                          ),
                          iconSize: 450,
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.shutter_speed_outlined),
                              SizedBox(
                                width: 60,
                              ),
                              Text("Matches")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.people_alt_outlined),
                              SizedBox(
                                width: 60,
                              ),
                              Text("Players")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.toc),
                              SizedBox(
                                width: 60,
                              ),
                              Text("All-Matches")
                            ],
                          ),
                        ),
                      ],
                    ),
                    //decoration: BoxDecoration(color: Colors.amber),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign In To Continue!",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.6,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              border: Border.all(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              children: [
                                GoogleIcon(),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Continue With Google")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //decoration: BoxDecoration(color: Colors.red),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.10,
                    //decoration: BoxDecoration(color: Colors.black),
                    child: Center(
                        child: Image.asset(
                      "assets/image/match.png",
                      fit: BoxFit.fill,
                    )),
                  )
                ],
              ),
            )));
  }
}

class GoogleIcon extends StatelessWidget {
  const GoogleIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
          onPressed: () {}, icon: Image.asset("assets/image/google.png")),
    );
  }
}
