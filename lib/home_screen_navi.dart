import 'package:flutter/material.dart';
import 'package:flutter_application_1/adidas_screen.dart';
import 'package:flutter_application_1/favourite_screen.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/search_screen.dart';
import 'package:flutter_application_1/shopping_screen.dart';

class HomeScreenNavi extends StatefulWidget {
  const HomeScreenNavi({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreenNavi> {
  int _selectedIndex = 0;

  final Map<int, Map<String, Widget>> _navigationMap = {
    0: {"title": const Text("Home"), "screen": HomeScreen()},
    1: {"title": const Text("Search"), "screen": SearchScreen()},
    2: {"title": const Text("Favorites"), "screen": FavoriteScreen()},
    3: {"title": const Text("Cart"), "screen": ShoppingScreen()},
    4: {"title": const Text("AdiClub"), "screen": AdidasScreen()},
  };

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'SHOP',
          style: TextStyle(
          fontWeight: FontWeight.bold, 
          fontSize: 16
          ),
        ),
        backgroundColor: Colors.white,
          actions: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_outline),
              ),
            ),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: onItemTapped,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon:
               Image.asset("assets/icons/logo.png",width: 30,height: 30,),
               label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: ""),
            BottomNavigationBarItem(icon: Image.asset("assets/icons/adiclub.png",width: 45,height: 45), label:""),
          ],
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: _navigationMap.values.map((page) => page["screen"]!).toList(),
        ),
      ),
    );
  }
}