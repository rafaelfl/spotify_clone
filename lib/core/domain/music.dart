import 'package:spotify_clone/core/domain/album.dart';
import 'package:spotify_clone/core/domain/artist.dart';

class Music {
  final String name;
  final Artist artist;
  final String author;
  final bool isSingle;
  final bool isFavorite;
  final Album album;

  Music({
    this.name = "",
    this.artist,
    this.author,
    this.isSingle = false,
    this.isFavorite = false,
    this.album,
  });
}
