import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practicing/component/post_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 107, 112, 119),
      appBar: AppBar(
        title: Text(
          '5MinsFlutter',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        actions: [
          Icon(
            Icons.location_on_outlined,
            color: Colors.red,
          )
        ],
      ),
      body: ListView(
        children: MockUsers(),
      ),
    );
  }
}

List<Widget> MockUsers() {
  List<Widget> users = [];
  for (var i = 0; i < 10; i++) {
    users.add(PostItem());
  }
  return users;
}
