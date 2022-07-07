import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotidiant_app/blocs/preferences_bloc.dart';
import 'package:quotidiant_app/main.dart';
import 'package:provider/provider.dart';
import 'package:quotidiant_app/models/preferences.dart';

//Matthew Merge Test

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PreferencesCubit, Preferences>(
      builder: (context, preferences) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Themes Demo'),
          ),
          body: ListView(
            children: <Widget>[
              RadioListTile(
                value: ThemeMode.dark,
                groupValue: preferences.themeMode,
                onChanged: (_) {
                  context.read<PreferencesCubit>().changePreferences(
                        preferences.copyWith(
                          ThemeMode.dark,
                        ),
                      );
                },
              ),
              RadioListTile(
                title: const Text("Light"),
                value: ThemeMode.light,
                groupValue: preferences.themeMode,
                onChanged: (_) {
                  context.read<PreferencesCubit>().changePreferences(
                        preferences.copyWith(
                          ThemeMode.light,
                        ),
                      );
                },
              ),
            ],
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        );
      },
    );
  }
}
