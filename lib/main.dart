import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/core/store/album_store.dart';
import 'package:spotify_clone/spotify_app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AlbumStore(),
        )
      ],
      child: SpotifyApp(),
    ),
  );
}
