import 'package:flutter/material.dart';

import '../utils/assets.dart';

class MessageViewWidget extends StatelessWidget {
  const MessageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 28,
            width: 28,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(
                    Assets.tGirlAvatar,
                  ),
                  fit: BoxFit.fill),
            ),
          ),
          const SizedBox(width: 16),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(6),
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
              color: Colors.black.withOpacity(0.1),
            ),
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Hello, how are you?',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
