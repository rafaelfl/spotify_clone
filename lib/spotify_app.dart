import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/home/home_screen.dart';

class SpotifyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        // primarySwatch: MaterialColor(),
        // backgroundColor: Colors.black,
        // primaryColor: Colors.white,
      ),
      home: HomeScreen(),
    );
  }
}
