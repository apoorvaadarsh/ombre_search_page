import 'package:flutter/material.dart';
import 'package:ombre_search_page/widgets/searchList.dart';

String keyword;

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _searchController = TextEditingController();

  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

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
            Container(
              width: 300,
              height: 60,
              child: TextField(
                onChanged: (value) async {
                  setState(() {
                    keyword = _searchController.text;
                  });
                },
                controller: _searchController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    fillColor: Colors.grey[700]),
              ),
            ),
            Icon(
              Icons.search,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
        SearchList(keyword),
      ],
    );
  }
}

