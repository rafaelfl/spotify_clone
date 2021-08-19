import 'package:flutter/material.dart';
import 'package:spotify_clone/core/domain/album.dart';
import 'package:spotify_clone/core/domain/artist.dart';
import 'package:spotify_clone/core/domain/music.dart';

class AlbumStore extends ChangeNotifier {
  List<Album> recentAlbums;
  List<Album> albumList;

  List<Artist> artists;
  Music releaseMusic;

  AlbumStore() {
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
    recentAlbums.removeLast();
    recentAlbums.insert(0, lastPlayedAlbum);
    print("Lista de albuns atualizada!");

    notifyListeners();
  }
}
