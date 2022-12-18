import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/news_screens/business_screen.dart';
import 'package:news_app/screens/news_screens/entertainment_screen.dart';
import 'package:news_app/screens/news_screens/health_screen.dart';
import 'package:news_app/screens/news_screens/science_screen.dart';
import 'package:news_app/screens/news_screens/sports_screen.dart';
import 'package:news_app/screens/news_screens/technology_screen.dart';
import '../news_screens/general_screen.dart';

class tabAppBar extends StatelessWidget  {
  const tabAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          title: Text("News"),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Colors.grey,
            labelColor: Colors.white,
            // Colors.grey.shade500,
            isScrollable: true,
            tabs: [
              Tab(text:'General', icon: Icon(CupertinoIcons.infinite)),
              Tab(text:'Business', icon: Icon(Icons.attach_money)),
              Tab(text:'Entertainment', icon: Icon(Icons.movie_creation_outlined)),
              Tab(text:'Health', icon: Icon(CupertinoIcons.plus)),
              Tab(text:'Science', icon: Icon(Icons.science)),
              Tab(text:'Sports', icon: Icon(Icons.sports_football)),
              Tab(text:'Technology', icon: Icon(CupertinoIcons.device_phone_portrait)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            generalScreen(),
            businessScreen(),
            entertainmentScreen(),
            healthScreen(),
            scienceScreen(),
            sportsScreen(),
            technologyScreen(),
          ],
        ),
      ),
    );
  }
}
