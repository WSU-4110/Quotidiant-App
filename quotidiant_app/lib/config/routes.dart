import 'package:flutter/widgets.dart';
import 'package:quotidiant_app/main.dart';

import '/blocs/blocs.dart';
import '/screens/screens.dart';

// Assignment4
List<Page> onGenerateAppViewPages(
  AuthStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AuthStatus.authenticated:
      return [HomePage.page()];
    case AuthStatus.unauthenticated:
      return [LoginScreen.page()];
  }
}
