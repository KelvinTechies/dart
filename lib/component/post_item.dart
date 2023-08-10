import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/Temp/deepak-mahajan-8ig-SzHpqDw-unsplash-removebg-preview.png',
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 16,
              ),
              Text('Giovani Hernandez')
            ],
          ),
          SizedBox(
            height: 52,
          ),
          Image.asset(
            'assets/Temp/bave-pictures-fl7bASYZgXo-unsplash-removebg-preview.png',
            height: 200,
          ),
          SizedBox(
            height: 52,
          ),
          Text(
            ' the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          )
        ],
      ),
    );
  }
}
