import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StatefulWidgetsExampleState();
}

class _StatefulWidgetsExampleState extends State<Notifications> {
  bool _checkBoxVal1 = false;
  bool _checkBoxVal2 = false;
  bool _checkBoxVal3 = false;
  bool _checkBoxVal4 = false;
  bool _checkBoxVal5 = false;
  bool _checkBoxVal6 = false;
  bool _checkBoxVal7 = false;
  double _slider2Val = 3;
  String dropdownValue = '12 AM - 6 AM';
  List days = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: dead_code
      child: ListView(
        children: <Widget>[
          const Divider(color: Colors.black),
          const Center(
            child: Text(
              "Days to Be Notified:",
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
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
                        if (_checkBoxVal1) {
                          days.add('Monday ');
                        }
                        if (!_checkBoxVal1) {
                          days.removeWhere((str) {
                            return str == "Monday ";
                          });
                        }
                      },
                    ),
                    title: const Text("Monday"),
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
                        if (_checkBoxVal2) {
                          days.add('Tuesday ');
                        }
                        if (!_checkBoxVal2) {
                          days.removeWhere((str) {
                            return str == "Tuesday ";
                          });
                        }
                      },
                    ),
                    title: const Text("Tuesday"),
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
                        if (_checkBoxVal3) {
                          days.add('Wednesday ');
                        }
                        if (!_checkBoxVal3) {
                          days.removeWhere((str) {
                            return str == "Wednesday ";
                          });
                        }
                      },
                    ),
                    title: const Text("Wednesday"),
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
                        if (_checkBoxVal4) {
                          days.add('Thursday ');
                        }
                        if (!_checkBoxVal4) {
                          days.removeWhere((str) {
                            return str == "Thursday ";
                          });
                        }
                      },
                    ),
                    title: const Text("Thursday"),
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
                        if (_checkBoxVal5) {
                          days.add('Friday');
                        }
                        if (!_checkBoxVal5) {
                          days.removeWhere((str) {
                            return str == "Friday ";
                          });
                        }
                      },
                    ),
                    title: const Text("Friday"),
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
                        if (_checkBoxVal6) {
                          days.add('Saturday ');
                        }
                        if (!_checkBoxVal1) {
                          days.removeWhere((str) {
                            return str == "Saturday ";
                          });
                        }
                      },
                    ),
                    title: const Text("Saturday"),
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
                        if (_checkBoxVal7) {
                          days.add('Sunday ');
                        }
                        if (!_checkBoxVal7) {
                          days.removeWhere((str) {
                            return str == "Sunday ";
                          });
                        }
                      },
                    ),
                    title: const Text("Sunday"),
                  ),
                ),
              ),
            ],
          ),
          const Divider(color: Colors.black),
          Container(
            child: const Center(
              child: Text(
                "Notification Time: ",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          const Divider(color: Colors.black),
          DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.access_time_outlined),
            elevation: 16,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>[
              '12 AM - 6 AM',
              '6 AM - 12 PM',
              '12 PM - 6 PM',
              '6 PM - 12 AM'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          const Divider(color: Colors.black),
          Container(
            child: const Center(
              child: Text(
                "Number of Notifications",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          const Divider(color: Colors.black),
          Slider(
              value: _slider2Val,
              max: 6,
              divisions: 6,
              label: '${_slider2Val.round()}',
              onChanged: (double value) {
                setState(() => _slider2Val = value);
              }),
          const Divider(color: Colors.black),
          const SizedBox(height: 30),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color.fromARGB(255, 62, 202, 6),
                          Color.fromARGB(255, 62, 202, 6),
                          Color.fromARGB(255, 62, 202, 6)
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Color.fromARGB(255, 0, 0, 0),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Notification Saved'),
                      content: Text(
                          'You Will Be Notified on the following days: ${days.join(',')}; You will recieve $_slider2Val times a day, between $dropdownValue'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  ),
                  child: const Center(
                    child: Text('Save'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
