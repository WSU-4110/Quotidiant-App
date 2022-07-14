import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotidiant_app/blocs/preferences_bloc.dart';
import 'package:quotidiant_app/main.dart';
import 'package:provider/provider.dart';
import 'package:quotidiant_app/models/preferences.dart';
import 'package:quotidiant_app/screens/home/contactus.dart';

class NavBar extends StatefulWidget {
  @override
  _State createState() => _State();
}

class DrawerBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Drawer();
  }
}

class _State extends State<NavBar> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PreferencesCubit, Preferences>(
      builder: (context, preferences) {
        return Scaffold(
          body: ListView(
            children: <Widget>[
              const Divider(color: Colors.black),
              Container(
                child: const Center(
                  child: Text(
                    "Settings",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              const Divider(),
              RadioListTile(
                title: const Text("Dark"),
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
              ElevatedButton(
                  child: const Text('Contact Us!'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const contactuswidget()),
                    );
                  }),
            ],
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        );
      },
    );
  }
}
