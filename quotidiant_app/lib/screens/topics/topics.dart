import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

// kam testing push

class Topics extends StatefulWidget {
  const Topics({Key? key}) : super(key: key);
  @override
  _GameofThrones createState() => _GameofThrones();
}

class _GameofThrones extends State<Topics> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text('Game of Thrones'),
      value: timeDilation != 1.0,
      onChanged: (bool? value) {
        setState(() {
          timeDilation = value! ? 10.0 : 1.0;
        });
      },
      secondary: const Icon(Icons.fit_screen_rounded),
    );
  }
}

class _ChuckNoris extends State<Topics> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text('Chuck Noris'),
      value: timeDilation != 0.5,
      onChanged: (bool? value) {
        setState(() {
          timeDilation = value! ? 1.0 : 0.5;
        });
      },
      secondary: const Icon(Icons.account_box_rounded),
    );
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