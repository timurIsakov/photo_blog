import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_input_widget.dart';
import 'main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                'Log in',
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
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainScreen(),
                  ),
                ),
                title: 'LOG IN',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
