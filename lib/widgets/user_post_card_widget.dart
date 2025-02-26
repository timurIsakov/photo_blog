import 'package:flutter/material.dart';
import 'package:photo_blog/widgets/user_info_widget.dart';

class UserPostCardWidget extends StatelessWidget {
  final String image;
  final String userAvatar;
  final String userName;
  final String nickName;
  const UserPostCardWidget(
      {super.key,
      required this.image,
      required this.userAvatar,
      required this.userName,
      required this.nickName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 343,
          width: 343,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 16),
        UserInfoWidget(
          avatar: userAvatar,
          fullName: userName,
          nickName: nickName,
        ),
      ],
    );
  }
}
