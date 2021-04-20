import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(SearchApp());
}

class SearchApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ombre Search Page',
      theme: ThemeData(
        backgroundColor: Colors.black,
        textTheme: ThemeData.dark().textTheme.copyWith(
            headline6: TextStyle(
              fontSize: 20,
              color: Colors.red,
            ),
            subtitle1: TextStyle(
              fontSize: 25,
              color: Colors.white,
            )),
        primaryColor: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
