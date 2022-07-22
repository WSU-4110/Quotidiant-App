import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/auth/auth_bloc.dart';

// test merge Mark
class Likes extends StatelessWidget {
  const Likes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetLikes();
  }
}

class GetLikes extends StatelessWidget {
  const GetLikes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = context.select((AuthBloc bloc) => bloc.state.user);
    CollectionReference users = FirebaseFirestore.instance.collection('Users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(user.id).get(),
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
