import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'SearchPage.dart';
import 'PlayListPage.dart';
import 'ProfilePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SpotfiyApp(),
  ));
}

class SpotfiyApp extends StatefulWidget {
  @override
  _SpotfiyAppState createState() => _SpotfiyAppState();
}

class _SpotfiyAppState extends State<SpotfiyApp> {

  int current_tab = 3;
  @override
  Widget build(BuildContext context) {

    final tabs = [
      HomePage(),SearchPage(),PlayListPage(),ProfilePage()
    ];
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: tabs[current_tab],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index){
              setState(() {
                print('Index is: $index');
                print('Current Index is: $current_tab');
                current_tab = index;
              });
            },
            currentIndex: current_tab,
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.white), title: Text("Home",style: TextStyle(color: Colors.white),) ,backgroundColor: Color.fromARGB(255,20,20,20)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.white), title: Text("Search",style: TextStyle(color: Colors.white),) ,backgroundColor: Color.fromARGB(255,20,20,20)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.play_circle_fill, color: Colors.white), title: Text("PlayList",style: TextStyle(color: Colors.white),) ,backgroundColor: Color.fromARGB(255,20,20,20)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.white), title: Text("Profile",style: TextStyle(color: Colors.white),) ,backgroundColor: Color.fromARGB(255,20,20,20)
              ),
            ],
          ),
        ));
  }
}

