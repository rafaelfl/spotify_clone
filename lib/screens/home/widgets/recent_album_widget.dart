import 'package:flutter/material.dart';

class RecentAlbumWidget extends StatelessWidget {
  final String albumImageName;
  final String albumTitle;
  // final double width;

  RecentAlbumWidget({
    @required this.albumImageName,
    @required this.albumTitle,
    // this.width = 180,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                    albumImageName,
                    fit: BoxFit.fitHeight,
                  )),
            ),
            SizedBox(width: 5),
            Expanded(
              flex: 3,
              child: Text(
                albumTitle,
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
