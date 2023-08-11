import 'package:flutter/cupertino.dart';

class UserAvatarImg extends StatelessWidget {
  final double size;
  const UserAvatarImg({super.key, this.size = 40.0});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/Temp/deepak-mahajan-8ig-SzHpqDw-unsplash-removebg-preview.png',
      width: size,
      height: size,
    );
  }
}
