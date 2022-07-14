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
        title: Align(
          alignment: AlignmentDirectional(-0.1, 0),
          child: Text(
            'Contact Us',
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Text(
                  'Contact us at Quotidiant@gmail.com',
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.35),
                child: Text(
                  '123-456-789',
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.75),
                child: Text(
                  'Check our github link for more help \nhttps://github.com/WSU-4110/Quotidiant-App',
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.3),
                child: Text(
                  'Or send us a message directly here',
                ),
              ),
              TextFormField(
                controller: theirEmailController,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Your email address',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              TextFormField(
                controller: theirMessageController,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Your message',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
