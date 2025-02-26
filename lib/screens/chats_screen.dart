import 'package:flutter/material.dart';

import '../utils/assets.dart';
import '../widgets/chat_card_widget.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Chats',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Divider(),
            ChatCardWidget(
              image: Assets.tGirlAvatar,
              userName: 'Jane',
              messagePreview: 'Hello, how are you?',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
