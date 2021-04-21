import 'package:flutter/material.dart';
import 'package:ombre_search_page/provider/songList_provider.dart';
import 'package:ombre_search_page/screens/search_screen.dart';
import 'package:provider/provider.dart';

class SearchList extends StatelessWidget {
  String keyWord;
  SearchList(this.keyWord);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 614,
      child: Consumer<SongListProvider>(builder: (context, songProvider, _) {
        songProvider.getSongList();

        return ListView.builder(
          itemBuilder: (context, index) {
            if (keyWord != null) {
              if (keyword.length != 0) {
                if (songProvider.songList[index].toString().startsWith(
                    keyWord[0].toUpperCase() +
                        keyWord.substring(1, keyWord.length)))
                  return ListTile(
                    title: Text(songProvider.songList[index]),
                  );
                else
                  return SizedBox();
              } else
                return ListTile(
                  title: Text(songProvider.songList[index]),
                );
            } else
              return ListTile(
                title: Text(songProvider.songList[index]),
              );
          },
          itemCount: songProvider.songList.length,
        );
      }),
    );
  }
}
