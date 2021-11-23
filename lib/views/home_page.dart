// import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_sample/views/pages/add_page.dart';
import 'package:flutter_ui_sample/views/pages/feed_page.dart';
import 'package:flutter_ui_sample/views/pages/messages_page.dart';
import 'package:flutter_ui_sample/views/pages/profile_page.dart';
import 'package:flutter_ui_sample/views/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  // final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: _body(),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            currentIndex: _currentIndex,
            selectedItemColor: Colors.pink[800],
            unselectedItemColor: Colors.white,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.feed),
                label: "List",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: "List",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "List"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Map"),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Map"),
            ]),
        // floatingActionButton: FabCircularMenu(
        //     key: fabKey,
        //     ringDiameter: 300.0,
        //     ringWidth: 50.0,
        //     children: <Widget>[
        //       IconButton(
        //           icon: Icon(Icons.home),
        //           onPressed: () {
        //             print('Home');
        //           }),
        //       IconButton(
        //           icon: Icon(Icons.favorite),
        //           onPressed: () {
        //             print('Favorite');
        //           })
        //     ]),
      ),
    );
  }

  Widget _body() {
    if (_currentIndex == 0) {
      return FeedPage();
    } else if (_currentIndex == 1) {
      return const MessagesPage();
    } else if (_currentIndex == 2) {
      return AddPage();
    } else if (_currentIndex == 3) {
      return ProfilePage();
    } else if (_currentIndex == 4) {
      return const SettingPage();
    } else {
      return Center(
        child: InkWell(
          onTap: () {
            // if (fabKey.currentState!.isOpen) {
            //   fabKey.currentState!.close();
            // } else {
            //   fabKey.currentState!.open();
            // }
          },
          child: Text(
            _currentIndex.toString(),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      );
    }
  }
}
