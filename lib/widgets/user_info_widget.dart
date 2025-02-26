import 'package:flutter/material.dart';

class UserInfoWidget extends StatelessWidget {
  final String avatar;
  final String fullName;
  final String nickName;
  const UserInfoWidget(
      {super.key,
      required this.avatar,
      required this.fullName,
      required this.nickName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                avatar,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Column(
          children: [
            Text(
              fullName,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.bold,
                height: 0,
              ),
            ),
            Text(
              nickName,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 13,
                height: 0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
