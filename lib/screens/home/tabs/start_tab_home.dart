import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/core/domain/album.dart';
import 'package:spotify_clone/core/domain/artist.dart';
import 'package:spotify_clone/core/domain/music.dart';
import 'package:spotify_clone/core/store/album_store.dart';
import 'package:spotify_clone/core/store/profile_store.dart';
import 'package:spotify_clone/screens/home/widgets/album_release/release_album_widget.dart';
import 'package:spotify_clone/screens/home/widgets/recent_albums/recent_album_panel_widget.dart';
import 'package:spotify_clone/screens/home/widgets/recently_played_albums/recently_played_panel.dart';
import 'package:spotify_clone/screens/home/widgets/toolbar/toolbar_widget.dart';

class StartTabHome extends StatefulWidget {
  @override
  _StartTabHomeState createState() => _StartTabHomeState();
}

class _StartTabHomeState extends State<StartTabHome> {
  @override
  void initState() {
    super.initState();
  }

  // void updateRecentAlbum(Album lastPlayedAlbum) {
  //   setState(() {});
  // }

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
        child: Consumer<AlbumStore>(builder: (context, albumStore, child) {
          final recentAlbums = albumStore.recentAlbums;
          final releaseMusic = albumStore.releaseMusic;
          final albumList = albumStore.albumList;

          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ToolbarWidget(),
              RecentAlbumPanelWidget(recentAlbums),
              SizedBox(height: 30),
              MusicReleaseWidget(releaseMusic),
              SizedBox(height: 30),
              RecentlyPlayedPanel(albums: albumList),
            ],
          );
        }),
      ),
    );
  }
}
