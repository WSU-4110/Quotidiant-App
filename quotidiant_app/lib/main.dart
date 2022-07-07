import 'dart:html';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotidiant_app/blocs/preferences_bloc.dart';

import 'package:quotidiant_app/screens/home/home.dart';
import 'package:quotidiant_app/screens/likes/likes.dart';
import 'package:quotidiant_app/screens/notifications/notifications.dart';
import 'package:quotidiant_app/screens/screens.dart';
import 'package:quotidiant_app/screens/settings/settings.dart';
import 'package:quotidiant_app/screens/topics/topics.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:quotidiant_app/services/preferences_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flow_builder/flow_builder.dart';
import '/repositories/repositories.dart';
import '/bloc_observer.dart';
import '/blocs/blocs.dart';
import 'config/routes.dart';
import 'models/preferences.dart';

Future<void> main() {
  return BlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      final authRepository = AuthRepository();
      runApp(App(authRepository: authRepository));
    },
    blocObserver: AppBlocObserver(),
  );
}

class App extends StatelessWidget {
  const App({
    Key? key,
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(key: key);

  final AuthRepository _authRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authRepository,
      child: BlocProvider(
        create: (_) => AuthBloc(
          authRepository: _authRepository,
        ),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({
    Key? key,
  }) : super(key: key);

  Future<PreferencesCubit> buildBloc() async {
    // Get the instance of shared preferences
    // and use it to initiaze a MainPreferencesService object, and
    // use it in the Bloc
    final prefs = await SharedPreferences.getInstance();
    final service = MyPreferencesService(
      prefs,
    );

    return PreferencesCubit(
      service,
      service.get(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Here, we utilize a FutureBuilder because we will be expecting
    // a bloc of Preferences from the buildBloc method asynchronously.
    return FutureBuilder<PreferencesCubit>(
      future: buildBloc(),
      builder: (context, blocSnapshot) {
        if (blocSnapshot.hasData && blocSnapshot.data != null) {
          // Utilize a BlocBuilder to delegate control of the theme
          // to the Preferences bloc.
          return BlocProvider(
              create: (_) => blocSnapshot.data!,
              // We need a BlocBuilder to build the MaterialApp and giving
              // control to the Preferences bloc such that it can provide
              // the correct theme mode via the Preferences data.
              child: BlocBuilder<PreferencesCubit, Preferences>(
                builder: (context, preferences) => MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Flutter Demo',
                  // Change theme data of light and dark such that each
                  // utilize the deep purple color for the background of app bars
                  // and the text for the TextButtons are different.
                  theme: ThemeData.light().copyWith(
                    appBarTheme: const AppBarTheme(
                      backgroundColor: Colors.deepPurple,
                    ),
                  ),
                  darkTheme: ThemeData.dark().copyWith(
                    appBarTheme: const AppBarTheme(
                      backgroundColor: Colors.deepPurple,
                    ),
                  ),
                  // PreferencesBloc is utilized here to control the themeMode
                  // of the application by using its preferences member
                  // depending on whether the app was just opened or if the user
                  // changed the theme in the settings.
                  themeMode: preferences.themeMode,
                  // BlocProvider provides the AuthBloc instance and has a child widget
                  // which is the HomePage (since the widget must return a BlocBuilder).
                  home: FlowBuilder<AuthStatus>(
                    state: context.select((AuthBloc bloc) => bloc.state.status),
                    onGeneratePages: onGenerateAppViewPages,
                  ),
                ),
              ));
        }
        return const SizedBox.shrink();
      },
    );
  }
}








  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Quotidiant',
  //     theme: ThemeData(
  //         primaryColor: Colors.blueGrey,
  //         splashColor: Colors.transparent,
  //         highlightColor: Colors.transparent,
  //         hoverColor: Colors.transparent),
  //     // Assignment 4 FlowBuilder
  //     // Handles logic when app is opened
  //     home: FlowBuilder<AuthStatus>(
  //       state: context.select((AuthBloc bloc) => bloc.state.status),
  //       // Assignment 4
  //       onGeneratePages: onGenerateAppViewPages,
  //     ),
  //   );
  // }

