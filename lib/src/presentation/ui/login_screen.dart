import 'package:flutter/gestures.dart';
import 'package:home_app/library.dart';

import 'package:home_app/src/config/app_typografy.dart';
import 'package:home_app/src/presentation/ui/onboard_screen_one.dart';
import 'package:home_app/src/presentation/ui/sign_up_screen.dart';
import 'package:home_app/src/presentation/widgets/login_button_wg.dart';
import 'package:home_app/src/presentation/widgets/login_screen_txtfild.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController controllerUsername = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.clFFFFFFWhite,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.onBack();
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: AppColors.cl363130Black,
            )),
        title: const Text(
          'Log In',
          style: AppTypografy.appTitleLIn,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome",
              style: AppTypografy.titleLIn,
            ),
            const Text(
              "Please enter your details to proceed.",
              style: AppTypografy.descrpLIn,
            ),
            const SizedBox(
              height: 90,
            ),
            LoginScreenTxtfild(
              title: "Username or email",
              hinttitle: "example@example.com",
              isHaveEye: false,
              controller: controllerUsername,
              isNumber: false,
            ),
            LoginScreenTxtfild(
              title: "Password",
              hinttitle: "********",
              isHaveEye: true,
              controller: controllerPassword,
              isNumber: false,
            ),
            const SizedBox(
              height: 100,
            ),
            Center(
                child: LoginButtonWg(
                    title: "Log In",
                    onTab: () {
                      context.onPushAndRemoveUntil(const OnboardScreenOne());
                    })),
            const SizedBox(
              height: 10,
            ),
            const Center(
                child: Text(
              "Forgot Password?",
              style: AppTypografy.forgotLIn,
            )),
            SizedBox(height: 60,),
            SizedBox(
              height: 90,
              child: Column(
                children: [
                  const Text("or sign up with"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook_outlined),
                      Icon(Icons.telegram_outlined),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      const TextSpan(
                        text: "Don’t have an account? ",
                        style: TextStyle(
                          fontFamily: "LS",
                          fontSize: 13,
                          fontWeight: FontWeight.w200,
                          color: AppColors.cl363130Black,
                        ),
                      ),
                      TextSpan(
                        text: "Sign Up",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.onPush(const SignUpScreen());
                          },
                        style: const TextStyle(
                          fontFamily: "LS",
                          fontSize: 13,
                          fontWeight: FontWeight.w200,
                          color: AppColors.clCC7861OrangeDark,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
