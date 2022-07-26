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
    'Science Facts': false,
    'Historical Facts': false,
    'Movies': false,
    'Games': false,
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
            return CheckboxListTile(
              title: Text(key),
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

 //deleted unused code