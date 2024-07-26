import 'package:flutter/material.dart';

import '../model/albums.dart';
import '../service/api_service.dart';
import 'album_screen.dart';

class AlbumListScreen extends StatefulWidget {
  const AlbumListScreen({super.key});

  @override
  State<AlbumListScreen> createState() => _AlbumListScreenState();
}

class _AlbumListScreenState extends State<AlbumListScreen> {
  ApiService _service = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Album List'),
      ),
      body: FutureBuilder(
        future: _service.getAlbumList(),
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
            List<Albums> albumList = snapshot.data ?? [];

            return ListView.builder(
              itemCount: albumList.length,
              itemBuilder: (context, index) {
                Albums album = albumList[index];

                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AlbumScreen(album),
                            ));
                      },
                      title: Text('${album.title}'),
                      subtitle:
                          Text('user id : ${album.userId}\nid : ${album.id}'),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
