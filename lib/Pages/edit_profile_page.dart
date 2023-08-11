import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practicing/Pages/app_text_field.dart';
import 'package:practicing/Pages/user_avartar.dart';

enum Gender { none, male, female, others }

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Edit Profile"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Stack(
                  children: [
                    UserAvatarImg(size: 120),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Icon(
                          Icons.edit,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                AppTextField(hint: 'First Name'),
                SizedBox(
                  height: 12,
                ),
                AppTextField(hint: 'Last Name'),
                SizedBox(
                  height: 12,
                ),
                AppTextField(hint: 'Mobile Number'),
                SizedBox(
                  height: 12,
                ),
                AppTextField(hint: 'Location'),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text("Male"),
                        Radio(
                            value: Gender.male,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.male;
                              });
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Female"),
                        Radio(
                            value: Gender.female,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.female;
                              });
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Others"),
                        Radio(
                            value: Gender.others,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.others;
                              });
                            }),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
