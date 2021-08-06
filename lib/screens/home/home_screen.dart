import 'package:flutter/material.dart';
import 'package:spotify_clone/core/domain/album.dart';
import 'package:spotify_clone/core/domain/artist.dart';
import 'package:spotify_clone/core/domain/music.dart';
import 'package:spotify_clone/screens/home/widgets/recent_album_panel_widget.dart';
import 'package:spotify_clone/screens/home/widgets/release_album_widget.dart';

class HomeScreen extends StatelessWidget {
  List<Album> albums;
  List<Artist> artists;
  Music releaseMusic;

  HomeScreen() {
    artists = [
      Artist(
          name: "Capital Inicial",
          imageIcon: "assets/images/icone_capital.jpeg"),
    ];

    albums = [
      Album(
        imageName: "assets/images/nirvana.jpeg",
        title: "Nirvana - Nevermind",
      ),
      Album(
        imageName: "assets/images/skank.jpeg",
        title: "Skank - Maquinarama",
      ),
      Album(
        imageName: "assets/images/capital_inicial.jpeg",
        title: "Capital Inicial - Pensando em você",
        artist: artists[0],
      ),
      Album(
        imageName: "assets/images/aerosmith.jpg",
        title: "Aerosmith - Greatest Hits",
      ),
      Album(
        imageName: "assets/images/bonjovi.jpeg",
        title: "Bon Jovi - Slippery When Wet",
      ),
      Album(
        imageName: "assets/images/skank_velocia.jpeg",
        title: "Skank - Velocia",
      ),
    ];

    releaseMusic = Music(
      artist: artists[0],
      name: "Pensando Em Você",
      author: "Capital Inicial, Mariana Volker",
      isFavorite: false,
      isSingle: true,
      album: albums[2],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF7d5e7d),
                    Color(0xFF121212),
                  ],
                  stops: [
                    0.05,
                    0.3,
                  ]),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Boa noite",
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.history, size: 28),
                          SizedBox(width: 20),
                          Icon(Icons.settings_outlined, size: 28),
                        ],
                      ),
                    ],
                  ),
                ),
                RecentAlbumPanelWidget(albums),
                SizedBox(height: 30),
                MusicReleaseWidget(releaseMusic),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
