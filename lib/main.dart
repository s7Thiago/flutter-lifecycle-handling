import 'dart:async';

import 'package:flutter/material.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer timer;
  int count = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        count++;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
    print("DISPOSE: called");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.amber,
      child: Text(
        count.toString(),
        style: Theme.of(context).textTheme.headline1.copyWith(
              color: Colors.white,
            ),
      ),
    );
  }
}
