import 'package:flutter/material.dart';
import 'package:matchday_ui/Screens/AnalyseByRally.dart';
import 'package:matchday_ui/Screens/AnalyzebyShot.dart';
import 'package:matchday_ui/Screens/Comapare.dart';

import '../site.dart';

class ButtonAnalyseShot extends StatelessWidget {
  const ButtonAnalyseShot({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            TextButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Site()));
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                label: Text(
                  "Home",
                  style: TextStyle(color: Colors.grey),
                ))
          ],
        ),
        Text(">"),
        Column(children: [
          TextButton.icon(
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => AnalyseShot()));
              },
              icon: Icon(
                Icons.analytics,
                color: Colors.purple[300],
              ),
              label: Text(
                "Analyse By Shots",
                style: TextStyle(color: Colors.purple[300]),
              ))
        ])
      ],
    );
  }
}

class ButtonRally extends StatelessWidget {
  const ButtonRally({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            TextButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Site()));
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                label: Text(
                  "Home",
                  style: TextStyle(color: Colors.grey),
                ))
          ],
        ),
        Text(">"),
        Column(children: [
          TextButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => AnalyseRally()));
              },
              icon: Icon(
                Icons.run_circle_rounded,
                color: Colors.deepPurple[400],
              ),
              label: Text(
                "Analyse By Rally length",
                style: TextStyle(color: Colors.deepPurple[300]),
              ))
        ])
      ],
    );
  }
}

class ButtonCompare extends StatelessWidget {
  const ButtonCompare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            TextButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Site()));
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                label: Text(
                  "Home",
                  style: TextStyle(color: Colors.grey),
                ))
          ],
        ),
        Text(">"),
        Column(children: [
          TextButton.icon(
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Compare()));
              },
              icon: Icon(
                Icons.run_circle_rounded,
                color: Colors.brown[300],
              ),
              label: Text(
                "Compare with friends",
                style: TextStyle(color: Colors.brown[300]),
              ))
        ])
      ],
    );
  }
}
