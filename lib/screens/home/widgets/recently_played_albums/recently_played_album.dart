import 'package:flutter/material.dart';
import 'package:spotify_clone/core/domain/album.dart';

class RecentlyPlayedAlbum extends StatelessWidget {
  final Album album;

  const RecentlyPlayedAlbum({Key key, this.album}) : super(key: key);

  recentlyPlayedAlbumClick() {
    print("Album clicked: $album");
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: recentlyPlayedAlbumClick,
      child: Container(
        padding: const EdgeInsets.all(5),
        width: 100,
        child: Column(
          children: [
            Image.asset(
              album.imageName,
              height: 100,
              width: 100,
            ),
            Text(
              album.title,
              style: TextStyle(
                fontFamily: "OpenSans",
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
