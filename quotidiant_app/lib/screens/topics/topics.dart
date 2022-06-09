import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotidiant_app/models/random_year.dart';
import 'package:quotidiant_app/repository/random_year_repo.dart';

class Topics extends StatelessWidget {
  const Topics({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Topics",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
