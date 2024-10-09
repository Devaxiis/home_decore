import 'package:home_app/library.dart';
import 'package:home_app/src/config/app_ui_message.dart';
import 'package:home_app/src/presentation/ui/home_screen.dart';
import 'package:home_app/src/presentation/widgets/onboard_b_nav_wg.dart';
import 'package:home_app/src/presentation/widgets/onboard_screen_wg.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardScreenOne extends StatefulWidget {
  const OnboardScreenOne({super.key});

  @override
  State<OnboardScreenOne> createState() => _OnboardScreenOneState();
}

class _OnboardScreenOneState extends State<OnboardScreenOne> {
  PageController controller = PageController();
  String name = "Next";
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.clFFFFFFWhite,
      body: PageView(
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        children: const [
          OnboardScreenWg(
            image: AppImages.imgOnboardOne,
            title: "Confortable Space",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
          ),
          OnboardScreenWg(
            image: AppImages.imgOnboardTwo,
            title: "Modern Design",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
          ),
          OnboardScreenWg(
            image: AppImages.imgOnboardThree,
            title: "Styled Living",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
          ),
          OnboardScreenWg(
            image: AppImages.imgOnboardFour,
            title: "Relaxing Furniture",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
          ),
        ],
      ),
      bottomNavigationBar: OnboardBNavWg(
        name: name,
        controller: controller,
        onTab: () {
          if (index > 4) {
            AppUiMessage.UiToastError(context, message: "Sahifa mavjud emas.");
          }
          if (index == 3) {
            name = "Boshlash";
          }
          if (index == 4) {
            context.onPushAndRemoveUntil(HomeScreen());
          }
          if (index < 5 && index > 0) {
            controller.animateToPage(index++,
                duration: const Duration(milliseconds: 700),
                curve: Curves.linear);
          }
          setState(() {});
        },
      ),
    );
  }
}
