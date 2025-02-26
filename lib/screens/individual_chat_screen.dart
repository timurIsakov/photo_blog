import 'package:flutter/material.dart';

import '../widgets/message_view_widget.dart';

class IndividualChatScreen extends StatelessWidget {
  const IndividualChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'James',
          style: TextStyle(
            fontSize: 17,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Column(
        children: [
          Divider(),
          MessageViewWidget(),
        ],
      ),
    );
  }
}
