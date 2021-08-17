import 'package:flutter/material.dart';
import 'package:spotify_clone/core/domain/album.dart';
import 'package:spotify_clone/screens/play/widgets/play_screen_body.dart';

class PlayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Album album = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("${album.title}"),
      ),
      body: PlayScreenBody(album),
    );
  }
}
