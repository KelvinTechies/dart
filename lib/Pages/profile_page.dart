import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text("Edit"),
              ),
              PopupMenuItem(
                child: Text("Add Post"),
              ),
            ];
          }),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/Temp/deepak-mahajan-8ig-SzHpqDw-unsplash-removebg-preview.png',
            width: 90,
            height: 90,
          ),
          SizedBox(
            height: 12,
          ),
          Text("Jimenez james"),
          SizedBox(
            height: 12,
          ),
          Text("London"),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("500"),
                  Text("Followers"),
                ],
              ),
              Column(
                children: [
                  Text("50"),
                  Text("Posts"),
                ],
              ),
              Column(
                children: [
                  Text("200"),
                  Text("Following"),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
