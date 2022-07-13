import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/blocs/blocs.dart';
import '../screens.dart';
import 'package:quotidiant_app/screens/home/NavBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: HomeScreen());

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  static final pages = [
    const Home(),
    const Likes(),
    const Notifications(),
    const Topics(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(width: 400, child: NavBar()),
      appBar: AppBar(
        title: Text('Quotidiant',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            )),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => context.read<AuthBloc>().add(AppLogoutRequested()),
          )
        ],
      ),
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const Icon(
                      Icons.home_filled,
                      size: 35,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                      Icons.thumb_up_rounded,
                      size: 35,
                    )
                  : const Icon(
                      Icons.thumb_up_outlined,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                      Icons.notification_add_rounded,
                      size: 35,
                    )
                  : const Icon(
                      Icons.notification_add_outlined,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const Icon(
                      Icons.anchor_rounded,
                      size: 35,
                    )
                  : const Icon(
                      Icons.anchor_rounded,
                      size: 35,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
