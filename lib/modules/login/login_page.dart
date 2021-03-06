import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';

import 'package:nl_pay_flow/modules/login/login_controller.dart';
import 'package:nl_pay_flow/shared/themes/app_colors.dart';
import 'package:nl_pay_flow/shared/themes/app_images.dart';
import 'package:nl_pay_flow/shared/themes/app_text_style.dart';
import 'package:nl_pay_flow/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              color: AppColors.primary,
              width: size.width,
              height: size.height * 0.30,
            ),
            Positioned(
              top: 40,
              left: 0,
              right: 0,
              child: Image.asset(AppImages.person, width: 208, height: 300),
            ),
            Positioned(
              bottom: size.height * 0.08,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedCard(
                      direction: AnimatedCardDirection.top,
                      child: Image.asset(AppImages.logomini)),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 70, right: 70),
                    child: Text(
                      "Organize os seus boletos em um só lugar",
                      style: AppTextStyles.titleHome,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 40),
                    child: SocialLoginButton(
                        onTape: () => controller.myuser(
                            context: context,
                            username: "dercio",
                            password: "1234")),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
