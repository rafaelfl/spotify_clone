import 'package:flutter/material.dart';
import 'package:spotify_clone/core/domain/album.dart';

class PlayScreenBody extends StatelessWidget {
  final Album album;

  const PlayScreenBody(this.album);

  void voltarClick(BuildContext context) {
    Navigator.pop(context, "Meu album: ${album.title}");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            album.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontFamily: "OpenSans",
            ),
          ),
          TextButton(
            onPressed: () => voltarClick(context),
            child: Text("Voltar"),
          )
        ],
      ),
    );
  }
}
