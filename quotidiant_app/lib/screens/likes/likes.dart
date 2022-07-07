import 'package:flutter/material.dart';

// test merge Mark
class Likes extends StatelessWidget {
  const Likes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // ignore: dead_code
        child: ListView(children: <Widget>[
      const Divider(color: Colors.black),
      Container(
        child: const Center(
          child: Text(
            "Favorites",
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      const Divider(),
    ]));
  }
}
