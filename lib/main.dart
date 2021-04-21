import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:ombre_search_page/provider/songList_provider.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SearchApp());
}

class SearchApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SongListProvider>(
          create: (ctx) => SongListProvider(),
        ),
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
