import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class SongListProvider with ChangeNotifier {
  List<String> _songList = [
  ];

  final songRef = FirebaseFirestore.instance.collection('songs');

  Future<void> getSongList() async {
    await songRef.get().then((songSnap) {
      songSnap.docs.forEach((song) {
          _songList.add(song['name']);
        
      });
    });
  }

  List<String> get songList {
    return [..._songList];
  }
}
