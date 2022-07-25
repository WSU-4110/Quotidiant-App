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
            'About Us',
          ),
        ),
        actions: [],
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: const [
              Align(
                alignment: AlignmentDirectional(0, .50),
                child: Text(
                  'Hello! Welcome to Quotidiant, we are focused on creating an app that sends facts and quotes of your choosing \nfrom the API\'s we have gathered all of which can be seein in the topics tab.\n',
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.75),
                child: Text(
                  'Here you can view where we gathered the API\'s that you see popup in the home page and in the topics page.\n\nhttps://api.gameofthronesquotes.xyz/v1/random\n\nhttps://api.chucknorris.io/jokes/random\n\nhttps://uselessfacts.jsph.pl/random.json?language=e\n',
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.100),
                child: Text(
                  'This app was created for Software Engineering at Wayne State university. \nIt was maintained and developed by Mark, Kam, Zach, Rivan, Rabby and Matt',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
