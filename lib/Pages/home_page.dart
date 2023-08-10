import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      body: Column(
        children: [
          Row(children: [
            Image.asset(
              'assets/Temp/deepak-mahajan-8ig-SzHpqDw-unsplash-removebg-preview.png',
              width: 40,
              height: 40,
            ),
            SizedBox(
              width: 16,
            ),
            Text('Giovani Hernandez')
          ])
        ],
      ),
    );
  }
}
