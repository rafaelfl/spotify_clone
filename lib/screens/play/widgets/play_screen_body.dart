import 'package:flutter/material.dart';
import 'package:spotify_clone/core/domain/album.dart';

class PlayScreenBody extends StatelessWidget {
  final Album album;

  const PlayScreenBody(this.album);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            album.imageName,
            height: 200,
          ),
          Text(album.title),
        ],
      ),
    );
  }
}
