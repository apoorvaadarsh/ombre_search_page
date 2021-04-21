import 'package:flutter/material.dart';
import 'package:ombre_search_page/widgets/searchBar.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SearchBar(),
            Icon(
              Icons.search,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ],
    );
  }
}
