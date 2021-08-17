import 'package:flutter/material.dart';
import 'package:spotify_clone/core/domain/album.dart';
import 'package:spotify_clone/core/domain/artist.dart';
import 'package:spotify_clone/core/domain/music.dart';
import 'package:spotify_clone/screens/home/widgets/album_release/release_album_widget.dart';
import 'package:spotify_clone/screens/home/widgets/recent_albums/recent_album_panel_widget.dart';
import 'package:spotify_clone/screens/home/widgets/recently_played_albums/recently_played_panel.dart';
import 'package:spotify_clone/screens/home/widgets/toolbar/toolbar_widget.dart';

class StartTabHome extends StatefulWidget {
  @override
  _StartTabHomeState createState() => _StartTabHomeState();
}

class _StartTabHomeState extends State<StartTabHome> {
  List<Album> recentAlbums;
  List<Album> albumList;

  List<Artist> artists;
  Music releaseMusic;

  @override
  void initState() {
    super.initState();

    artists = [
      Artist(
          name: "Capital Inicial",
          imageIcon: "assets/images/icone_capital.jpeg"),
    ];

    albumList = [
      Album(
        imageName: "assets/images/nirvana.jpeg",
        title: "Nirvana - Nevermind",
        year: 1990,
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
      Album(
        imageName: "assets/images/am.jpeg",
        title: "Arctic Monkeys - AM",
      ),
      Album(
        imageName: "assets/images/fear.jpeg",
        title: "Iron Maden - Fear of the Dark",
      ),
      Album(
        imageName: "assets/images/favourit_worst.jpeg",
        title: "Arctic Monkeys - Favourite Worst Nightmare",
      ),
      Album(
        imageName: "assets/images/metallica.jpeg",
        title: "Metallica - Master of Puppets",
      ),
    ];

    recentAlbums = albumList.take(6).toList();

    releaseMusic = Music(
      artist: artists[0],
      name: "Pensando Em Você",
      author: "Capital Inicial, Mariana Volker",
      isFavorite: false,
      isSingle: true,
      album: albumList[2],
    );
  }

  void updateRecentAlbum(Album lastPlayedAlbum) {
    setState(() {
      recentAlbums.removeLast();
      recentAlbums.insert(0, lastPlayedAlbum);
      print("Lista de albuns atualizada!");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            ToolbarWidget(),
            RecentAlbumPanelWidget(recentAlbums),
            SizedBox(height: 30),
            MusicReleaseWidget(releaseMusic),
            SizedBox(height: 30),
            RecentlyPlayedPanel(
              albums: albumList,
              updateRecentAlbum: updateRecentAlbum,
            ),
          ],
        ),
      ),
    );
  }
}
