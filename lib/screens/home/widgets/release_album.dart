import 'package:flutter/material.dart';
import 'package:spotify_clone/core/domain/album.dart';

class AlbumReleaseWidget extends StatelessWidget {
  final Album albumRelease;

  const AlbumReleaseWidget(this.albumRelease);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.access_alarm, size: 50),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "NOVO LANÇAMENTO DE",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              SizedBox(height: 5),
              Text(
                this.albumRelease.title,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ]),
        SizedBox(height: 15),
        Container(
          color: Colors.grey[850],
          child: Row(
            children: [
              Image.asset(
                this.albumRelease.imageName,
                height: 160,
                fit: BoxFit.contain,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
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
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.favorite),
                          Icon(Icons.play_arrow_rounded),
                        ],
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
