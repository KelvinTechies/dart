import 'package:flutter/material.dart';
import 'package:practicing/Pages/edit_profile_page.dart';
import 'package:practicing/Pages/user_avartar.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          PopupMenuButton<ProfileMenu>(onSelected: (val) {
            switch (val) {
              case ProfileMenu.edit:
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return EditProfile();
                }));
                break;
              case ProfileMenu.logout:
                print("Logout Clicked");
                break;
              default:
                print("Nothing Clicked");
            }
          }, itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text("Edit"),
                value: ProfileMenu.edit,
              ),
              PopupMenuItem(
                child: Text("Log Out"),
                value: ProfileMenu.logout,
              ),
            ];
          }),
        ],
      ),
      body: Column(
        children: [
          UserAvatarImg(size: 90),
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
