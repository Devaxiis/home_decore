import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:home_app/library.dart';
import 'package:home_app/src/presentation/ui/login_screen.dart';
import 'package:home_app/src/presentation/ui/onboard_screen_one.dart';
import 'package:home_app/src/presentation/widgets/login_button_wg.dart';
import 'package:home_app/src/presentation/widgets/login_screen_txtfild.dart';

import '../../config/app_typografy.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController controllerForName = TextEditingController();
  TextEditingController controllerForEmail = TextEditingController();
  TextEditingController controllerForNumber = TextEditingController();
  TextEditingController controllerForDate = TextEditingController();
  TextEditingController controllerForPassword = TextEditingController();
  TextEditingController controllerForPassword2 = TextEditingController();
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
          'Create Account',
          style: AppTypografy.appTitleLIn,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          children: [
            LoginScreenTxtfild(
              title: "Full Name",
              hinttitle: "John",
              isHaveEye: false,
              controller: controllerForName,
              isNumber: false,
            ),
            LoginScreenTxtfild(
              title: "Email",
              hinttitle: "example@example.com",
              isHaveEye: false,
              controller: controllerForEmail,
              isNumber: false,
            ),
            LoginScreenTxtfild(
              title: "Mobile Number",
              hinttitle: "+998(**)*** ** **",
              isHaveEye: false,
              controller: controllerForNumber,
              isNumber: true,
            ),
            LoginScreenTxtfild(
              title: "Date of birth",
              hinttitle: "12/23/2024",
              isHaveEye: false,
              controller: controllerForDate,
              isNumber: false,
            ),
            LoginScreenTxtfild(
              title: "Password",
              hinttitle: "********",
              isHaveEye: true,
              controller: controllerForPassword,
              isNumber: false,
            ),
            LoginScreenTxtfild(
              title: "Password",
              hinttitle: "********",
              isHaveEye: true,
              controller: controllerForPassword2,
              isNumber: false,
            ),
            const Text(
              "By continuing, you agree to \nTerms of Use and Privacy Policy.",
              style: AppTypografy.textTermstitle,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10,),
            Center(
                child: LoginButtonWg(
                    title: "Sign Up",
                    onTab: () {
                      context.onPushAndRemoveUntil(const OnboardScreenOne());
                    })),
                    const SizedBox(
                      height: 10,
                    ),
            SizedBox(
              height: 70,
              child: Column(
                children: [
                  const Text("or sign up with"),
                  
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
                        text: "Already have an account? ",
                        style: TextStyle(
                          fontFamily: "LS",
                          fontSize: 13,
                          fontWeight: FontWeight.w200,
                          color: AppColors.cl363130Black,
                        ),
                      ),
                      TextSpan(
                        text: "Log In",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.onPush(const LoginScreen());
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
