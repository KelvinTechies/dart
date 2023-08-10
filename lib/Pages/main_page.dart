import 'package:flutter/material.dart';
import 'package:practicing/Pages/home_page.dart';
import 'package:practicing/Pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int cur = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 107, 112, 119),
      body: pages[cur],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Messages"),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user), label: "User"),
        ],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: cur,
        onTap: (index) {
          setState(() {
            cur = index;
          });
        },
      ),
    );
  }
}

const pages = [
  HomePage(),
  Center(
    child: Text("Favourite"),
  ),
  Center(
    child: Text("Add Posts"),
  ),
  Center(
    child: Text("Messages"),
  ),
  ProfilePage(),
];
