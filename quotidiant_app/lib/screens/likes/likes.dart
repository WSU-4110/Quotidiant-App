import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// test merge Mark
class Likes extends StatelessWidget {
  const Likes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // ignore: dead_code
        child: ListView(children: <Widget>[
      const Divider(color: Colors.black),
      Container(
        child: const Center(
          child: Text(
            "Favorites",
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      const Divider(),
      GetLikes()
    ]));
  }
}

class GetLikes extends StatelessWidget {
  final String documentId = "GAWChSgtDzdZyIhkJYQ8WDhYztn1";

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('Users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          List<dynamic> likes = data["likes"];
          return Text("likes: ${likes[0]}");
        }

        return Text("loading");
      },
    );
  }
}
