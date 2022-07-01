import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotidiant_app/screens/theme/ThemeModel.dart';
import 'package:quotidiant_app/screens/theme/themeapp.dart';
import 'package:quotidiant_app/screens/settings/settings.dart';

class apptesttheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Settings(),
      theme: Provider.of<ThemeModel>(context, listen: true).currentTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
