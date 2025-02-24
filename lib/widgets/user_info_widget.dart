import 'package:flutter/material.dart';

class UserInfoWidget extends StatelessWidget {
  final String image;
  final String name;
  final String userName;
  const UserInfoWidget(
      {super.key,
      required this.image,
      required this.name,
      required this.userName});

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
                image,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Column(
          children: [
            Text(
              name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.bold,
                height: 0,
              ),
            ),
            Text(
              userName,
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
