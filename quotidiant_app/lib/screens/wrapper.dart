import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotidiant_app/models/user.dart';
import 'package:quotidiant_app/screens/authenticate/authenticate.dart';
import 'package:quotidiant_app/screens/authenticate/login.dart';
import 'package:quotidiant_app/screens/home/home.dart';
import 'package:quotidiant_app/services/authentication_service.dart';

class Wrapper extends StatelessWidget {
  // const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthenticationService>(context);
    return StreamBuilder<User?>(
      stream: authService.user,
      builder: (_, AsyncSnapshot<User?> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User? user = snapshot.data;
          return user == null ? Login() : Home();
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
