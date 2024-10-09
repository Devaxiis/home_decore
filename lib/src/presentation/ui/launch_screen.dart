import 'package:home_app/library.dart';
import 'package:home_app/src/presentation/ui/onboard_screen_one.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.clFFFFFFWhite,
        body: Column(
          children: [
            Spacer(),
            Spacer(),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AppImages.imgLogoSalamon,
                    height: 175,
                    width: 250,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod. ",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.cl363130Black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.onReplacement(OnboardScreenOne());
                    },
                    child: Container(
                      height: 45,
                      width: 207,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.clF4B5A4Salmon,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Text(
                        "Log in",
                        style: TextStyle(
                            color: AppColors.clCC7861Terracotta,
                            fontFamily: "PS",
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.onReplacement(OnboardScreenOne());
                    },
                    child: Container(
                      height: 45,
                      width: 207,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.clFAF0E6Beige,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                            color: AppColors.clCC7861Terracotta,
                            fontFamily: "PS",
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ));
  }
}
