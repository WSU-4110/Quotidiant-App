import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);
  @override
  _FactListState createState() => _FactListState();
}

class _FactListState extends State<Home> {
  List<String> facts = [
    'Food Fact: Honey is the only food that does not spoil',
    'History Fact: There is 5,000 years equivelent of recorded history',
    'Science Fact: There are 206 bones in the adult human body and 300 in a childs developing body'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Random Facts'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: facts.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}
