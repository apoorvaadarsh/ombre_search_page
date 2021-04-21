import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      child: TextField(
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
    );
  }
}
