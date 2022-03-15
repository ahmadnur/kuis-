import 'package:cooba/list_album.dart';
import 'package:flutter/material.dart';
import 'top_album.dart';

class albumpage extends StatelessWidget {
  const albumpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sopty Pay"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          final TopAlbum place = topAlbumList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                int nomor = index;
                return listalbum(nomor);
              }));
            },
            child: Card(
              child: Row(
                children: [
                  Image.network(
                    place.albumurl[0],
                    width: 12,
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: topAlbumList.length,
      ),
    );
  }
}
