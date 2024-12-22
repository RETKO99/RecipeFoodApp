import 'package:flutter/material.dart';

import 'Pages/category_page.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'Food Recipe App',
      theme: ThemeData(primaryColor: Color(0xFF5ea17f)),
      home: Home()

    );
  }
}

  class Home extends StatefulWidget {
    const Home({super.key});
  
    @override
    State<Home> createState() => _HomeState();
  }
  
  class _HomeState extends State<Home> {
  int selectedIndex = 0 ;
        void onItemTapped(int index){
          setState(() {
            selectedIndex = index ;
          });
        }

        List<Widget> pages = <Widget>[
          HomePage(),
          CategoryPage(),
        ];
    @override
    Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
        backgroundColor: Color(0xFFfafafa),
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'Category',
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline),
              label: 'Saved',
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
              ),
            ],
            unselectedItemColor: Theme.of(context).primaryColor,
            selectedItemColor: Theme.of(context).primaryColor,
            iconSize: 30,
            currentIndex: selectedIndex,
            onTap: onItemTapped,
        ),
        ),
      );
      
    }
  }
  


