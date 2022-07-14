// Contact us page Mark Drekh
import 'dart:ui';
import 'package:flutter/material.dart';

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
      backgroundColor: const Color(0xffeeeeee),
      body: Column(children: <Widget>[
        const Text("If there are any concerns or bugs let us know!"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(children: <Widget>[
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Name",
                border: InputBorder.none,
              ),
            ),
            const SizedBox(height: 8.0),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Email",
                border: InputBorder.none,
              ),
            ),
            const SizedBox(height: 8.0),
            const TextField(
              maxLines: 7,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
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
