import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// kam testing push
class Topics extends StatefulWidget {
  const Topics({Key? key}) : super(key: key);
  @override
  _TopicsState createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  bool _checkBoxVal1 = false;
  bool _checkBoxVal2 = false;
  bool _checkBoxVal3 = false;
  bool _checkBoxVal4 = false;
  bool _checkBoxVal5 = false;
  bool _checkBoxVal6 = false;
  bool _checkBoxVal7 = false;
  bool _checkBoxVal8 = false;
  bool _checkBoxVal9 = false;
  bool _checkBoxVal10 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        // ignore: dead_code
        child: ListView(children: <Widget>[
      const Divider(color: Colors.black),
      Container(
        child: const Center(
          child: Text(
            "Topics you Enjoy!",
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      const Divider(),
      Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 500,
              child: ListTile(
                leading: Checkbox(
                  value: _checkBoxVal1,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkBoxVal1 = value!;
                    });
                  },
                ),
                title: const Text("Topic"),
              ),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 500,
              child: ListTile(
                leading: Checkbox(
                  value: _checkBoxVal2,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkBoxVal2 = value!;
                    });
                  },
                ),
                title: const Text("Topic"),
              ),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 500,
              child: ListTile(
                leading: Checkbox(
                  value: _checkBoxVal3,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkBoxVal3 = value!;
                    });
                  },
                ),
                title: const Text("Topic"),
              ),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 500,
              child: ListTile(
                leading: Checkbox(
                  value: _checkBoxVal4,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkBoxVal4 = value!;
                    });
                  },
                ),
                title: const Text("Topic"),
              ),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 500,
              child: ListTile(
                leading: Checkbox(
                  value: _checkBoxVal5,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkBoxVal5 = value!;
                    });
                  },
                ),
                title: const Text("Topic"),
              ),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 500,
              child: ListTile(
                leading: Checkbox(
                  value: _checkBoxVal6,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkBoxVal6 = value!;
                    });
                  },
                ),
                title: const Text("Topic"),
              ),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 500,
              child: ListTile(
                leading: Checkbox(
                  value: _checkBoxVal7,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkBoxVal7 = value!;
                    });
                  },
                ),
                title: const Text("Topic"),
              ),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 500,
              child: ListTile(
                leading: Checkbox(
                  value: _checkBoxVal8,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkBoxVal8 = value!;
                    });
                  },
                ),
                title: const Text("Topic"),
              ),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 500,
              child: ListTile(
                leading: Checkbox(
                  value: _checkBoxVal9,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkBoxVal9 = value!;
                    });
                  },
                ),
                title: const Text("Topic"),
              ),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 500,
              child: ListTile(
                leading: Checkbox(
                  value: _checkBoxVal10,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkBoxVal10 = value!;
                    });
                  },
                ),
                title: const Text("Topic"),
              ),
            ),
          ),
        ],
      ),
    ]));
  }
}
//deleted extra code