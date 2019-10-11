import 'package:flutter/material.dart';
import 'package:insta_ui/pages/add_post.dart';
import 'package:insta_ui/pages/notifications.dart';
import 'package:insta_ui/pages/profile.dart';
import 'package:insta_ui/pages/search.dart';
import 'package:insta_ui/pages/user_feed.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Color(0xffF4475A),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final pages  = [
    UserFeed(),
    SearchPage(),
    AddPost(),
    NotificationsPage(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '𝕴𝖓𝖘𝖙𝖆𝖌𝖗𝖆𝖒',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.send,
            ),
          ),
        ],
        centerTitle: false,
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? Colors.black : Colors.grey,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: _selectedIndex == 1 ? Colors.black : Colors.grey,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box,
              color: _selectedIndex == 2 ? Colors.black : Colors.grey,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 3 ? Icons.favorite : Icons.favorite_border,
              color: _selectedIndex == 3 ? Colors.black : Colors.grey,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 4 ? Icons.person : Icons.person_outline,
              color: _selectedIndex == 4 ? Colors.black : Colors.grey,
            ),
            title: Text(''),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int currentSelected) {
          setState(() {
            _selectedIndex = currentSelected;
          });
        },
      ),
    );
  }
}
