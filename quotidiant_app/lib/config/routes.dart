import 'package:flutter/widgets.dart';

import '/blocs/blocs.dart';
import '/screens/screens.dart';

List<Page> onGenerateAppViewPages(
  AuthStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AuthStatus.authenticated:
      return [HomeScreen.page()];
    case AuthStatus.unauthenticated:
      return [LoginScreen.page()];
  }
}
