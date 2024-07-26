import 'package:flutter/material.dart';
import 'package:flutter_project/http/practical3/model/albums.dart';

import '../service/api_service.dart';

class AlbumScreen extends StatefulWidget {
  Albums? albums;

  AlbumScreen(this.albums);

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  ApiService _service = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Album'),
      ),

      body: FutureBuilder(
        future: _service.getAlbum('${widget.albums!.id}'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error.toString()}'),
            );
          } else {
            Albums? falbums = snapshot.data;

            return Center(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text( '${falbums!.id}'),
                SizedBox(width: 16,),
                Text( '${falbums!.title}'),
              ],
            ));
          }
        },
      ),
    );
  }
}
