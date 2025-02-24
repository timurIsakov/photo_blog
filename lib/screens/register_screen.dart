import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:photo_blog/widgets/button_widget.dart';

import '../widgets/text_input_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Register',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 32),
              const TextInputWidget(
                label: 'Email',
              ),
              const SizedBox(height: 16),
              const TextInputWidget(
                label: 'Password',
              ),
              const SizedBox(height: 16),
              ButtonWidget(
                onTap: () {},
                title: 'Next',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
