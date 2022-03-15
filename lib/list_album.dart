import 'package:flutter/material.dart';
import 'top_album.dart';

class listalbum extends StatefulWidget {
  listalbum(
    int nomor, {
    Key? key,
  }) : super(key: key);

  @override
  State<listalbum> createState() => _listalbumState();
}

class _listalbumState extends State<listalbum> {
  @override
  Widget Builder(BuildContext context, nomor) {
    final TopAlbum place = topAlbumList[nomor];

    return Scaffold(
      appBar: AppBar(
        title: Text("List Album"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Image.network(place.imageUrls),
              SizedBox(
                height: 30,
              ),
              Text(place.albumName),
              SizedBox(
                height: 6,
              ),
              Text(place.singer),
              SizedBox(
                height: 24,
              ),
              Text(place.firstEntryDate),
              Text(place.firstEntryPosition)
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
