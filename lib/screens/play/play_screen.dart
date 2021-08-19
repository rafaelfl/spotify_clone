import 'package:flutter/material.dart';
import 'package:spotify_clone/core/domain/album.dart';
import 'package:spotify_clone/screens/play/widgets/play_screen_body.dart';

class PlayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Album album = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            snap: false,
            floating: false,
            expandedHeight: 280.0,
            toolbarHeight: 50.0,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF618d69),
                      Color(0xFF121212),
                    ],
                    stops: [
                      0.3,
                      0.95,
                    ]),
              ),
              child: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.asset(
                    album.imageName,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: PlayScreenBody(album),
          ),
        ],
      ),
    );
  }
}
