import 'package:flutter/material.dart';
import 'package:photo_blog/screens/chats_screen.dart';
import 'package:photo_blog/screens/home_screen.dart';
import 'package:photo_blog/screens/profile_screen.dart';
import 'package:photo_blog/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentScreen = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.black,
      child: const Center(
        child: Text(
          'Soon :)',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
    const ChatsScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreen],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 11,
            right: 11,
            top: 9,
            bottom: 39,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    currentScreen = 0;
                  });
                },
                icon: const Icon(
                  Icons.home_sharp,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    currentScreen = 1;
                  });
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  setState(() {
                    currentScreen = 2;
                  });
                },
                child: Ink(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.orange,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    currentScreen = 3;
                  });
                },
                icon: const Icon(
                  Icons.message,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    currentScreen = 4;
                  });
                },
                icon: const Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
