import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:quotidiant_app/screens/home/contactus.dart';

void main() {
  testWidgets('MyWidget has a title', (tester) async {
    // Test code goes here.
    await tester.pumpWidget(const MyWidget(
      title: 'T',
      message: 'M',
    ));

    // ignore: non_constant_identifier_names
    final TitleFinder = find.text('T');
    expect(TitleFinder, findsOneWidget);
  });

  testWidgets('MyWidget has a message', (tester) async {
    // Test code goes here.
    await tester.pumpWidget(const MyWidget(
      title: 'T',
      message: 'M',
    ));

    // ignore: non_constant_identifier_names
    final messageFinder = find.text('M');
    expect(messageFinder, findsOneWidget);
  });

  test("Testing if name is empty", () {
    List Name = [];
    var result = TestName.validate(Name);
    expect(result, true);
  });

  test("Testing if name is empty", () {
    List Name = ["Hello"];
    var result = TestName.validate(Name);
    expect(result, false);
  });

  test("Testing if Email is empty", () {
    List Email = ["Mark@gmail.com"];
    var result = TestEmail.validate(Email);
    expect(result, false);
  });

  test("Testing if Email is empty", () {
    List Email = [];
    var result = TestEmail.validate(Email);
    expect(result, true);
  });
}
