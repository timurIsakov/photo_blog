import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:photo_blog/screens/register_screen.dart';
import 'package:photo_blog/utils/assets.dart';

import '../widgets/button_widget.dart';
import '../widgets/user_info_widget.dart';

class LoggedOutScreen extends StatelessWidget {
  const LoggedOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    Assets.tMainBackground,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: SizedBox.expand(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: SvgPicture.asset(
                          Assets.tMainLogo,
                        ),
                      ),
                      const UserInfoWidget(
                        image: Assets.tGirlAvatar,
                        name: 'Anna Czerwinski',
                        userName: '@anna_czerwinski',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 33),
            child: Row(
              children: [
                Expanded(
                  child: ButtonWidget(
                    onTap: () {},
                    title: 'LOG IN',
                    titleColor: Colors.black,
                    backgroundColor: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 9,
                ),
                Expanded(
                  child: ButtonWidget(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                    ),
                    title: 'REGISTER',
                    titleColor: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
