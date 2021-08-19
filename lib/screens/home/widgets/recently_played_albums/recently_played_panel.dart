import 'package:flutter/material.dart';
import 'package:spotify_clone/core/domain/album.dart';
import 'package:spotify_clone/screens/home/widgets/recently_played_albums/recently_played_album.dart';

class RecentlyPlayedPanel extends StatelessWidget {
  final List<Album> albums;
  final void Function(Album) updateRecentAlbum;

  const RecentlyPlayedPanel({this.albums, this.updateRecentAlbum});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tocadas recentemente",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontFamily: "OpenSans",
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 170),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8),
              itemCount: albums.length,
              itemBuilder: (context, index) {
                return RecentlyPlayedAlbum(
                  album: albums[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
