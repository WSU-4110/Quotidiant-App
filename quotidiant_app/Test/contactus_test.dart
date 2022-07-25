import 'package:flutter/material.dart';
import 'dart:js';
import 'package:flutter_test/flutter_test.dart';
import 'package:quotidiant_app/data/models/stoic_quote.dart';
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
}

class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
    required this.title,
    required this.message,
  });

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quotidiant',
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text(message),
        ),
      ),
    );
  }
}
