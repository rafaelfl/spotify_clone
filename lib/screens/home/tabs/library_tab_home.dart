import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:spotify_clone/core/store/profile_store.dart';

class LibraryTabHome extends StatefulWidget {
/*
WidgetsBinding.instance.addPostFrameCallback((_) {
      ProfileStore profileStore =
          Provider.of<ProfileStore>(context, listen: false);

      print(" >>> ${profileStore.username}");
    });
*/

  @override
  _LibraryTabHomeState createState() => _LibraryTabHomeState();
}

class _LibraryTabHomeState extends State<LibraryTabHome> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ProfileStore profileStore = Provider.of(context, listen: false);
      fetchProfile(profileStore);
    });
  }

  Future<void> fetchProfile(ProfileStore store) async {
    http.Response response = await http.get(Uri.parse(
        "https://my-json-server.typicode.com/rafaelfl/spotify_clone/profile"));

    if (response.statusCode == 200) {
      final Map dataResult = jsonDecode(response.body) as Map;

      store.updateProfile(dataResult['username'], dataResult['thumbUrl']);
      // print(" >>>> ${dataResult['username']}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Sua Biblioteca"),
          Consumer<ProfileStore>(builder: (context, profileStore, child) {
            if (profileStore.username == "") {
              return Center(child: CircularProgressIndicator());
            }

            return Column(
              children: [
                Text("Usuário: ${profileStore.username}"),
                Image.network(
                  profileStore.thumbUrl,
                  height: 150,
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
