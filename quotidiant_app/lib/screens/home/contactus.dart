// Contact us page Mark Drekh
import 'dart:js';
import 'dart:ui';
import 'package:flutter/material.dart';

class TestName {
  static bool? validate(List name) {
    if (name.isEmpty) {
      return true;
    } else {
      return false;
    }
  }
}

class TestEmail {
  static bool? validate(List email) {
    if (email.isEmpty) {
      return true;
    } else {
      return false;
    }
  }
}

class contactuswidget extends StatefulWidget {
  const contactuswidget({Key? key}) : super(key: key);

  @override
  _contactuswidgetState createState() => _contactuswidgetState();
}

class _contactuswidgetState extends State<contactuswidget> {
  TextEditingController? theirEmailController;
  TextEditingController? theirMessageController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

/*
  @override
  Future<void> initState() async {
    super.initState();
    theirEmailController = TextEditingController();
    theirMessageController = TextEditingController();
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: ElevatedButton.icon(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_left_sharp),
          label: const Text("Back"),
          style: ElevatedButton.styleFrom(
              elevation: 0, primary: Colors.transparent),
        ),
        title: const Align(
          alignment: AlignmentDirectional(-0.1, 0),
          child: Text(
            'Contact Us',
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: Column(children: <Widget>[
        const Text("If there are any concerns or bugs let us know!"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(children: <Widget>[
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey,
                hintText: "Name",
                border: InputBorder.none,
              ),
            ),
            const SizedBox(height: 8.0),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey,
                hintText: "Email",
                border: InputBorder.none,
              ),
            ),
            const SizedBox(height: 8.0),
            const TextField(
              maxLines: 7,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey,
                hintText: "Message",
                border: InputBorder.none,
              ),
            ),
            const SizedBox(height: 8.0),
            MaterialButton(
              height: 60.0,
              minWidth: double.infinity,
              color: const Color(0xff333333),
              onPressed: () {},
              child: const Text(
                "SUBMIT",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SafeArea(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Column(mainAxisSize: MainAxisSize.max, children: const [
                  Align(
                    alignment: AlignmentDirectional(0, .50),
                    child: Text(
                      'Contact us at Quotidiant@gmail.com',
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.75),
                    child: Text(
                      '123-456-789',
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.100),
                    child: Text(
                      'Check our github link for more help \nhttps://github.com/WSU-4110/Quotidiant-App',
                    ),
                  ),
                ]),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
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
