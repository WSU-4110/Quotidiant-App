import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// test merge Mark
class Likes extends StatelessWidget {
  const Likes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetLikes();
  }
}

class GetLikes extends StatelessWidget {
  final String documentId = "GAWChSgtDzdZyIhkJYQ8WDhYztn1";

  const GetLikes({Key? key}) : super(key: key);

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
          Iterable<dynamic> likes = data["likes"];
          return ListView.builder(
              itemCount: likes.length,
              itemBuilder: (context, index) {
                // Individual quote in the Iterable of CloudQuotes
                final liked = likes.elementAt(index) as String;
                return Card(
                  child: ListTile(
                    title: Text(
                      liked,
                      softWrap: true,
                    ),
                  ),
                );
              });
          //return Text("${likes.elementAt(0)}");
        }
        return Text("loading");
      },
    );
  }
}
