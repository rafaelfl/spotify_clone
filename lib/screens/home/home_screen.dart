import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/home/widgets/recent_album_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Row(
                children: [
                  RecentAlbumWidget(
                    albumImageName: "assets/images/nirvana.jpeg",
                    albumTitle: "Nirvana - Nevermind",
                  ),
                  SizedBox(width: 10),
                  RecentAlbumWidget(
                    albumImageName: "assets/images/nirvana.jpeg",
                    albumTitle: "Nirvana - Nevermind",
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  RecentAlbumWidget(
                    albumImageName: "assets/images/nirvana.jpeg",
                    albumTitle: "Nirvana - Nevermind",
                  ),
                  SizedBox(width: 10),
                  RecentAlbumWidget(
                    albumImageName: "assets/images/nirvana.jpeg",
                    albumTitle: "Nirvana - Nevermind",
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  RecentAlbumWidget(
                    albumImageName: "assets/images/nirvana.jpeg",
                    albumTitle: "Nirvana - Nevermind",
                  ),
                  SizedBox(width: 10),
                  RecentAlbumWidget(
                    albumImageName: "assets/images/nirvana.jpeg",
                    albumTitle: "Nirvana - Nevermind",
                  ),
                ],
              ),
              // Text("Boa noite"),
              // Text("Card1"),
              // Text("Card2"),
              // Text("Card3"),
            ],
          ),
        ),
      ),
    );
  }
}
