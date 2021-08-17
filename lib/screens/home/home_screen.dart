import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/home/tabs/start_tab_home.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                child: Text("Buscar"),
              ),
              Center(
                child: Text("Sua Biblioteca"),
              ),
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
