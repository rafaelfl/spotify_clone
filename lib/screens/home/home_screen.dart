import 'package:flutter/material.dart';
import 'package:spotify_clone/core/domain/album.dart';
import 'package:spotify_clone/screens/home/widgets/recent_album_panel_widget.dart';
import 'package:spotify_clone/screens/home/widgets/recent_album_widget.dart';
import 'package:spotify_clone/screens/home/widgets/release_album.dart';

class HomeScreen extends StatelessWidget {
  final List<Album> albums = [
    Album(
      imageName: "assets/images/nirvana.jpeg",
      title: "Nirvana - Nevermind",
    ),
    Album(
      imageName: "assets/images/skank.jpeg",
      title: "Skank - Maquinarama",
    ),
    Album(
      imageName: "assets/images/nirvana.jpeg",
      title: "Nirvana - Nevermind",
    ),
    Album(
      imageName: "assets/images/nirvana.jpeg",
      title: "Nirvana - Nevermind",
    ),
    Album(
      imageName: "assets/images/nirvana.jpeg",
      title: "Nirvana - Nevermind",
    ),
    Album(
      imageName: "assets/images/nirvana.jpeg",
      title: "Nirvana - Nevermind",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 22,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Boa noite",
                      style: TextStyle(
                        fontSize: 24,
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
              AlbumReleaseWidget(albums[1]),
            ],
          ),
        ),
      ),
    );
  }
}
