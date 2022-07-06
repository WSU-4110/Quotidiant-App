import 'dart:html';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:quotidiant_app/screens/home/home.dart';
import 'package:quotidiant_app/screens/likes/likes.dart';
import 'package:quotidiant_app/screens/notifications/notifications.dart';
import 'package:quotidiant_app/screens/screens.dart';
import 'package:quotidiant_app/screens/settings/settings.dart';
import 'package:quotidiant_app/screens/topics/topics.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:quotidiant_app/screens/theme/themeapp.dart';
import 'package:quotidiant_app/screens/theme/ThemeModel.dart';
import 'package:quotidiant_app/screens/theme/defaulttheme.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flow_builder/flow_builder.dart';
import '/repositories/repositories.dart';
import '/bloc_observer.dart';
import '/blocs/blocs.dart';
import 'config/routes.dart';

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quotidiant',
      theme: ThemeData(
          primaryColor: Colors.blueGrey,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent),
      // Assignment 4 FlowBuilder
      // Handles logic when app is opened
      home: FlowBuilder<AuthStatus>(
        state: context.select((AuthBloc bloc) => bloc.state.status),
        // Assignment 4
        onGeneratePages: onGenerateAppViewPages,
      ),
      // initialRoute: '/',
      // routes: {
      //   '/home': (context) => Home(),
      //   '/topics': (context) => Topics(),
      //   '/likes': (context) => Likes(),
      //   '/notifications': (context) => Notifications(),
      //   '/settings': (context) => Settings(),
      // },
    );
  }
}
