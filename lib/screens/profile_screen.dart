import 'package:flutter/material.dart';
import 'package:photo_blog/widgets/button_widget.dart';

import '../utils/assets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: Column(
                children: [
                  Container(
                    height: 128,
                    width: 128,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          Assets.tGirlAvatar,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    'Jane',
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'San francisco, CA',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 32),
                  ButtonWidget(
                    onTap: () {},
                    title: 'Follow Jane',
                  ),
                  const SizedBox(height: 16),
                  ButtonWidget(
                    onTap: () {},
                    title: 'Message',
                    backgroundColor: Colors.white,
                    titleColor: Colors.black,
                  ),
                  const SizedBox(height: 32),
                  GridView.count(
                    physics: const ScrollPhysics(
                      parent: NeverScrollableScrollPhysics(),
                    ),
                    shrinkWrap: true,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: List.generate(
                      10,
                      (index) => Container(
                        height: 320,
                        width: 167,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(Assets.tGirlImage),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  ButtonWidget(
                    onTap: () {},
                    title: 'SEE MORE',
                    backgroundColor: Colors.white,
                    titleColor: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
