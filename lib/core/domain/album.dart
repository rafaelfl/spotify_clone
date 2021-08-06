import 'package:spotify_clone/core/domain/artist.dart';

class Album {
  final String imageName;
  final String title;
  final String description;
  final int year;
  final Artist artist;

  Album(
      {this.title = "",
      this.description = "",
      this.imageName = "",
      this.year = 2021,
      this.artist});
}
