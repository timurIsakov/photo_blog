import 'package:flutter/material.dart';
import 'package:photo_blog/screens/history_screen.dart';
import 'package:photo_blog/utils/assets.dart';
import 'package:photo_blog/widgets/button_widget.dart';
import 'package:photo_blog/widgets/user_post_card_widget.dart';

import '../widgets/bottom_bar.widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Discover',
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    'What’s new today',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    height: 400,
                    child: ListView.builder(
                      itemExtent: 347,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HistoryScreen(),
                              )),
                          child: const UserPostCardWidget(
                            image: Assets.tManImage,
                            userAvatar: Assets.tGirlAvatar,
                            userName: 'Anna Finger',
                            nickName: '@annaFinger',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  const Text(
                    'Browse all',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: GridView.count(
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
                                image: AssetImage(Assets.tVillaImage),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 24, bottom: 24, right: 16),
                    child: ButtonWidget(
                      onTap: () {},
                      title: 'SEE MORE',
                      backgroundColor: Colors.white,
                      titleColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
