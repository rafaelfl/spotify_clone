import 'package:flutter/material.dart';
import 'package:spotify_clone/core/domain/album.dart';

class RecentAlbumWidget extends StatelessWidget {
  final Album album;

  RecentAlbumWidget(this.album);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, "/play", arguments: album);
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color(0x10FFFFFF),
            borderRadius: BorderRadius.circular(7),
          ),
          clipBehavior: Clip.hardEdge,
          height: 70,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(
                      album.imageName,
                      fit: BoxFit.fitHeight,
                    )),
              ),
              SizedBox(width: 5),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    album.title,
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "OpenSans",
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
