import 'package:flutter/material.dart';
import 'package:spotify_clone/core/domain/album.dart';

import 'recent_album_widget.dart';

class RecentAlbumPanelWidget extends StatelessWidget {
  final List<Album> albums;

  const RecentAlbumPanelWidget(this.albums);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            RecentAlbumWidget(albums[0]),
            SizedBox(width: 10),
            RecentAlbumWidget(albums[1]),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            RecentAlbumWidget(albums[2]),
            SizedBox(width: 10),
            RecentAlbumWidget(albums[3]),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            RecentAlbumWidget(albums[4]),
            SizedBox(width: 10),
            RecentAlbumWidget(albums[5]),
          ],
        ),
      ],
    );
  }
}
