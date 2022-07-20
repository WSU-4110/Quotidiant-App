import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quotidiant_app/screens/home/home_screen.dart';

void main() {
  testWidgets("Testing the user is logged out after they press logout", (tester) async {
  final LogoutButton = GlobalKey<ScaffoldState>();

   await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          key: LogoutButton,
          
        ),
      ),
    );

   LogoutButton.currentState?.activate;
    await tester.pump();

    expect(
      FirebaseAuth.instance.currentUser = null;
    );
  }
  );
}
