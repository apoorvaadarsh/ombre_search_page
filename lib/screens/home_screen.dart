import 'package:flutter/material.dart';

import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar_item.dart';

import './search_screen.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: CustomBottomNavigationBar(
        backgroundColor: Colors.grey[900],
        itemBackgroudnColor: Colors.red,
        itemOutlineColor: Theme.of(context).backgroundColor,
        onTap: (index) {
          _pageController.animateToPage(index,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(milliseconds: 600));
        },
        items: [
          CustomBottomNavigationBarItem(
            icon: Icons.map,
            title: "Map",
          ),
          CustomBottomNavigationBarItem(
            icon: Icons.near_me,
            title: "Directions",
          ),
          CustomBottomNavigationBarItem(
            icon: Icons.search,
            title: "Search",
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          Center(
            child: Icon(
              Icons.map,
              color: Colors.white,
            ),
          ),
          Center(
            child: Icon(
              Icons.near_me,
              color: Colors.white,
            ),
          ),
          SearchScreen(),
        ],
      ),
    );
  }
}
