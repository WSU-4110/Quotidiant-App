import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:quotidiant_app/screens/home/home.dart';
import 'package:quotidiant_app/HomePageTest.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Make sure a fact is displayed on screen', () {
    final fact = factCheck();

    bool? actual = fact.validate(true);

    expect(actual, true);
  });

  test('Check for response on like button', () async {
    var tester;
    await tester.pumpWidget(const Home());

    await tester.tap(find.byType(FloatingActionButtonAnimator));

    await tester.pump();

    expect(find.text(''), findsNothing);
  });

  test('Confirm background image displays', () async {
    var tester;
    await tester.pumpWidget(const Home());

    await tester.tap(find.byType(NetworkImage));

    await tester.pump();

    expect(Image, findsNothing);
  });
}
