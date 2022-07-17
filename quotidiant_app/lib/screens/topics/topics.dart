// ignore_for_file: unnecessary_new

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// kam testing push

class Topics extends StatefulWidget {
  const Topics({Key? key}) : super(key: key);

  @override
  CheckboxWidgetState createState() => CheckboxWidgetState();
}

class CheckboxWidgetState extends State {
  Map<String, bool> values = {
    'Game of Thrones': false,
    'Chuck Norris': false,
    'Useless Facts': false,
  };

  var tmpArray = [];

  getCheckboxItems() {
    values.forEach((key, value) {
      if (value == true) {
        tmpArray.add(key);
      }
    });

    // Printing all selected items on Terminal screen.
    print(tmpArray);
    // Here you will get all your selected Checkbox items.

    // Clear array after use.
    tmpArray.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextButton(
        onPressed: getCheckboxItems,
        child: const Text(
          " Save ",
          style: TextStyle(fontSize: 18),
        ),
      ),
      Expanded(
        child: ListView(
          children: values.keys.map((String key) {
            return new CheckboxListTile(
              title: new Text(key),
              value: values[key],
              onChanged: (bool? value) {
                setState(() {
                  values[key] = value!;
                });
              },
            );
          }).toList(),
        ),
      ),
    ]);
  }
}
















      /*
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
                title: const Text("Chuck Norris"),
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
                title: const Text("Useless random facts"),
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
                title: const Text("Game of Thrones"),
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
                title: const Text("Random number facts"),
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
*/
//deleted extra code