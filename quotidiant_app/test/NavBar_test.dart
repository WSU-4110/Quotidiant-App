import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quotidiant_app/screens/home/NavBar.dart';
import 'package:quotidiant_app/screens/topics/topics.dart';

void main() {
  testWidgets("Testing if the theme provider package is working.",
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData.dark(),
        home: Topics(),
      ),
    );

    expect(
      ThemeData.dark,
      Color.fromARGB(255, 0, 0, 0),
      reason:
          'While the system dark is dark theme, the text should be light and the background darker',
    );
  });
}



/*
void main() {
  final widget = MaterialApp(
    home: Scaffold(
      body: ListView(
        RadioListTile: RadioListTile,
        onChanged: (value) {
          ThemeData = ThemeMode.dark;
        },
      ),
    ),
  );
  
  testWidgets('Testing Light Dark widget on click', (tester) async {
    await tester.pumpWidget(widget);
    debugDumpApp();
    await tester.tap(find.byType(Radio).first);
    expect(RadioListTile, findsNWidgets(2));
  });
}
*/




/*
void main() {
  testWidgets('Testing about us page button', (tester) async {
    // Build the widget.
    await tester.pumpWidget(const aboutusbutton());

    await tester.enterText(
        find.byType(TextField), 'about us button pushes to about page');

    // Tap the add button.
    await tester.tap(find.byType(FloatingActionButton));

    await tester.pump();

    // Expect to find the item on screen.
    expect(find.text('about us button pushes to about page'), findsOneWidget);

    // Swipe the item to dismiss it.
    await tester.drag(find.byType(Dismissible), const Offset(500.0, 0.0));

    // Build the widget until the dismiss animation ends.
    await tester.pumpAndSettle();

    // Ensure that the item is no longer on screen.
    expect(find.text('about us button pushes to about page'), findsNothing);

    print('test finished successfully');
  });
}

class aboutusbutton extends StatefulWidget {
  const aboutusbutton({super.key});

  @override
  State<aboutusbutton> createState() => _aboutusbuttonState();
}

class _aboutusbuttonState extends State<aboutusbutton> {
  static const _appTitle = 'About us button';
  final aboutbutton = <String>[];
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _appTitle,
      home: Scaffold(
        body: Column(
          children: [
            TextField(
              controller: controller,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: aboutbutton.length,
                itemBuilder: (context, index) {
                  final aboutbuttoncheck = aboutbutton[index];

                  return Dismissible(
                    key: Key('$aboutbuttoncheck$index'),
                    onDismissed: (direction) => aboutbutton.removeAt(index),
                    background: Container(color: Colors.red),
                    child: ListTile(title: Text(aboutbuttoncheck)),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              aboutbutton.add(controller.text);
              controller.clear();
            });
          },
        ),
      ),
    );
  }
}

*/







/*
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

*/