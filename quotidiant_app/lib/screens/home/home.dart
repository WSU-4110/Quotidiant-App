import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quotidiant_app/screens/api/gotapi.dart';
import '../../data/models/chuck_norris.dart';
import '/blocs/blocs.dart';
import 'home_screen.dart';
import 'package:quotidiant_app/data/models/models.dart';

void main() => runApp(const Home());

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: HomeScreen());

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final user = context.select((AuthBloc bloc) => bloc.state.user);

    // data to store GET request body
    var data;

    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome ${user.email}!'),
      ),
      body: Center(
        child: Center(
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 200, 0, 200),
            child: Column(
              children: [
                FutureBuilder<String>(
                  future: Randomize(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      data = snapshot.data;
                      return Text(
                        snapshot.data!,
                        textAlign: TextAlign.center,
                      );
                    } else if (snapshot.hasError) {
                      return Text('${snapshot.error}');
                    }
                    return const CircularProgressIndicator();
                  },
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                            onPressed: (() {
                              FirebaseAuth _auth = FirebaseAuth.instance;
                              FirebaseFirestore _db =
                                  FirebaseFirestore.instance;
                              FirebaseFirestore.instance
                                  .collection('Users')
                                  .doc(_auth.currentUser?.uid)
                                  .update({
                                "likes": FieldValue.arrayUnion([data])
                              });
                            }),
                            child: const Icon(Icons.thumb_up)),
                        FloatingActionButton(
                            onPressed: () {},
                            child: const Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Api calling

Future<String> Randomize() async {
  // game of thrones
  Autogenerated gameOfThronesObj = Autogenerated();
  final gameOfThronesResponse = await http
      .get(Uri.parse('https://api.gameofthronesquotes.xyz/v1/random'));

  if (gameOfThronesResponse.statusCode == 200) {
    gameOfThronesObj =
        Autogenerated.fromJson(jsonDecode(gameOfThronesResponse.body));
  } else {
    throw Exception('Failed to load album');
  }
  String? gotQuote = gameOfThronesObj.sentence;

  // chuck norris
  ChuckNorris chuckNorrisObj = ChuckNorris();
  final chuckNorrisResponse =
      await http.get(Uri.parse('https://api.chucknorris.io/jokes/random'));
  if (chuckNorrisResponse.statusCode == 200) {
    chuckNorrisObj = ChuckNorris.fromJson(jsonDecode(chuckNorrisResponse.body));
  } else {
    throw Exception('Failed to load album');
  }
  String? chuckJoke = chuckNorrisObj.value;

  // useless fact
  UselessFact uselessFactObj = UselessFact();
  final uselessFactRequest =
      "https://uselessfacts.jsph.pl/random.json?language=en";
  var url = Uri.parse(uselessFactRequest);
  var response = await http.get(url);
  if (response.statusCode == 200) {
    UselessFact uselessFact = UselessFact.fromMap(json.decode(response.body));
    uselessFactObj = uselessFact;
  }
  String? fact = uselessFactObj.text;

  final homeContentList = <String>[];
  homeContentList.add(gotQuote!);
  homeContentList.add(chuckJoke!);
  homeContentList.add(fact!);

  final random = Random();
  var element = homeContentList[random.nextInt(homeContentList.length)];

  return element.toString();
}
