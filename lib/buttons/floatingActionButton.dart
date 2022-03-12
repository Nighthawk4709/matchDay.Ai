import 'package:flutter/material.dart';

import '../site.dart';

class Fab extends StatefulWidget {
  const Fab({Key? key}) : super(key: key);

  @override
  State<Fab> createState() => _FabState();
}

class _FabState extends State<Fab> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.green[200],
      onPressed: () {
        Navigator.push(
            context, new MaterialPageRoute(builder: (context) => Site()));
      },
      child: Center(
        child: Text("Know\nMore"),
      ),
    );
  }
}
