import 'package:flutter/material.dart';
import 'package:quotidiant_app/main.dart';
import 'package:provider/provider.dart';
import 'package:quotidiant_app/screens/theme/ThemeModel.dart';

//Matthew Merge Test

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Themes Demo'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.color_lens),
                      Text('Toggle Theme'),
                    ],
                  ),
                  onPressed: () {
                    // Button Action
                    Provider.of<ThemeModel>(context, listen: false)
                        .toggleTheme();
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
