// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quotidiant_app/data/models/stoic_quote.dart';
import 'package:quotidiant_app/screens/topics/topics.dart';

void main() {
  test('Game of Thrones Topic checkbox', () {
    expect(CheckboxWidgetState.values.keys.first, equals('Game of Thrones'));
  });

  test('Chuck Norris Topic checkbox', () {
    expect(
        CheckboxWidgetState.values.keys.skip(1).first, equals('Chuck Norris'));
  });

  test('Useless Facts Topic checkbox', () {
    expect(
        CheckboxWidgetState.values.keys.skip(2).first, equals('Useless Facts'));
  });

  test('Testing number of Topics', () {
    expect(CheckboxWidgetState.values.keys.length, equals(3));
  });

  test('Testing save button selection', () {
    expect(const TextButton(onPressed: null, child: Text(" Save ")),
        equals(" Save "));
  });

  testWidgets('Testing Widget', (WidgetTester tester) async {
    //find widget needed
    final button = find.byType(Column);

    //act actual test
    await tester.pumpWidget(MaterialApp(home: Topics()));
    await tester.tap(button);
    await tester.pump();

    //check outputs
    final text = find.text(" Save ");
    expect(text, findsOneWidget);
  });
}
