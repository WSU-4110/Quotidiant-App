import 'package:flutter/material.dart';

class aboutuswidget extends StatefulWidget {
  const aboutuswidget({Key? key}) : super(key: key);

  @override
  _aboutuswidgetstate createState() => _aboutuswidgetstate();
}

class _aboutuswidgetstate extends State<aboutuswidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(25),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Align(
            alignment: AlignmentDirectional(-0.05, 0),
            child: Text(
              'About Quotidiant\n',
              textAlign: TextAlign.center,
            ),
          ),
          actions: [],
          elevation: 2,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Hello! Welcome to Quotidiant, we are focused on creating an app that sends facts and quotes of your choosing from the API\'s we have gathered all of which can be seein in the topics tab.\n',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Text(
                'Here you can view where we gathered the API\'s that you see popup in the home page and in the topics page.\n\nhttps://api.gameofthronesquotes.xyz/v1/random\n\nhttps://api.chucknorris.io/jokes/random\n\nhttps://uselessfacts.jsph.pl/random.json?language=e\n',
              ),
              Text(
                'This app was created for Software Engineering at Wayne State university. This app was maintained and developed by Mark, Kam, Zach, Rivan, Rabby and Matt',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
