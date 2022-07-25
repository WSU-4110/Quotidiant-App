import 'package:quotidiant_app/screens/notifications/notifications.dart';
import 'package:test/test.dart';

void main() {
  test('Check if Check Box is Empty, returns false', () {
    bool checkbox = false;
    var result = CheckBoxValidator.validate(checkbox);
    expect(result, false);
  });
  test('Check if Check Box is marked, returns true', () {
    bool checkbox = true;
    var result = CheckBoxValidator.validate(checkbox);
    expect(result, true);
  });
  test('Check if array of days is empty, returns true', () {
    List days = [];
    var result = DaysSelectedValidator.validate(days);
    expect(result, 'The List Is Empty');
  });
  test('Check if array of days is not empty, returns false', () {
    List days = ["Monday"];
    var result = DaysSelectedValidator.validate(days);
    expect(result, 'The list is not empty');
  });

  test('Check if array of days is being sorted properly', () {
    List days = ["Saturday ", "Sunday ", "Friday "];
    var result = OrderValidator.validate(days);
    expect(result, ["Friday ", "Saturday ", "Sunday "]);
  });

  test('Check if array of days is being sorted properly test 2', () {
    List days = [
      "Sunday ",
      "Saturday ",
      "Friday ",
      "Thursday ",
      "Wednesday ",
      "Tuesday ",
      "Monday "
    ];
    var result = OrderValidator.validate(days);
    expect(result, [
      "Monday ",
      "Tuesday ",
      "Wednesday ",
      "Thursday ",
      "Friday ",
      "Saturday ",
      "Sunday "
    ]);
  });
}
