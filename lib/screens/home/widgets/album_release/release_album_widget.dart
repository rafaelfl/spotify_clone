import 'package:flutter/material.dart';
import 'package:spotify_clone/core/domain/music.dart';

class MusicReleaseWidget extends StatelessWidget {
  final Music musicRelease;

  const MusicReleaseWidget(this.musicRelease);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 50,
              height: 50,
              child: Image.asset(this.musicRelease.artist.imageIcon),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "NOVO LANÇAMENTO DE",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 5),
              Text(
                this.musicRelease.artist.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "OpenSans",
                ),
              ),
            ],
          ),
        ]),
        SizedBox(height: 15),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[850],
            borderRadius: BorderRadius.circular(7),
          ),
          clipBehavior: Clip.hardEdge,
          height: 160,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                this.musicRelease.album.imageName,
                fit: BoxFit.contain,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Pensando Em Você",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Single . Capital Inicial, Mariana Volker",
                              maxLines: 3,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey[100]),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Icon(Icons.favorite_border_outlined,
                                size: 30, color: Colors.red),
                            Icon(Icons.play_circle_rounded, size: 30),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
