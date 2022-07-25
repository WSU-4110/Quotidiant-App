import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:quotidiant_app/blocs/auth/auth_bloc.dart';
import 'package:quotidiant_app/main.dart';
import 'package:quotidiant_app/screens/home/home_screen.dart';
import 'package:quotidiant_app/screens/authenticate/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Login form widget test', (tester) async {
    await tester.pumpWidget(const AppView());

    // Create Finders
    final emailInputFinder = find.text('Enter your email address...');
    final passwordInputFinder = find.text('Enter your password...');
    final loginButtonFinder = find.text('LOGIN');
    final createAccountButtonFinder = find.text('CREATE ACCOUNT');
    final forgotPasswordButtonFinder = find.text('Forgot Password');

    // Verify the widgets exist using a Matcher
    expect(emailInputFinder, findsOneWidget);
  });
}
