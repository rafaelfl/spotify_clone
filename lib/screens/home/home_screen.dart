import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spotify_clone/screens/home/tabs/library_tab_home.dart';
import 'package:spotify_clone/screens/home/tabs/start_tab_home.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String username = "VAZIO";

  @override
  void initState() {
    super.initState();

    retrieveUsername();
  }

  Future retrieveUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String myUsername = prefs.getString("username");

    setState(() {
      username = myUsername;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: TabBarView(
            children: [
              StartTabHome(),
              Center(
                child: Text("Buscar - $username"),
              ),
              LibraryTabHome(),
            ],
          ),
        ),
        bottomNavigationBar: TabBar(
          labelStyle: TextStyle(fontSize: 10),
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Início",
            ),
            Tab(
              icon: Icon(Icons.search),
              text: "Buscar",
            ),
            Tab(
              icon: Icon(Icons.library_books),
              text: "Sua Biblioteca",
            ),
          ],
        ),
      ),
    );
  }
}
