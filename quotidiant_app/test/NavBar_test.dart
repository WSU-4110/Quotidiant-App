import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quotidiant_app/screens/home/NavBar.dart';

void main() {
  testWidgets('Testing contact us page button', (tester) async {
    // Build the widget.
    await tester.pumpWidget(const contactusbutton());

    await tester.enterText(
        find.byType(TextField), 'Contact us button pushes to contact page');

    // Tap the add button.
    await tester.tap(find.byType(FloatingActionButton));

    await tester.pump();

    // Expect to find the item on screen.
    expect(
        find.text('Contact us button pushes to contact page'), findsOneWidget);

    // Swipe the item to dismiss it.
    await tester.drag(find.byType(Dismissible), const Offset(500.0, 0.0));

    // Build the widget until the dismiss animation ends.
    await tester.pumpAndSettle();

    // Ensure that the item is no longer on screen.
    expect(find.text('Contact us button pushes to contact page'), findsNothing);

    print('test finished successfully');
  });
}

class contactusbutton extends StatefulWidget {
  const contactusbutton({super.key});

  @override
  State<contactusbutton> createState() => _contactusbuttonState();
}

class _contactusbuttonState extends State<contactusbutton> {
  static const _appTitle = 'Contact us button';
  final contbutton = <String>[];
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_appTitle),
        ),
        body: Column(
          children: [
            TextField(
              controller: controller,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: contbutton.length,
                itemBuilder: (context, index) {
                  final contbuttoncheck = contbutton[index];

                  return Dismissible(
                    key: Key('$contbuttoncheck$index'),
                    onDismissed: (direction) => contbutton.removeAt(index),
                    background: Container(color: Colors.red),
                    child: ListTile(title: Text(contbuttoncheck)),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              contbutton.add(controller.text);
              controller.clear();
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
