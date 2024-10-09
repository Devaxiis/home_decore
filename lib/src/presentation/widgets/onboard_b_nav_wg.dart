import '../../../library.dart';

class OnboardBNavWg extends StatelessWidget {
  const OnboardBNavWg(
      {super.key, required this.controller, required this.onTab, required this.name,});

  final PageController controller;
  final Function() onTab;

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: AppColors.clFFFFFFWhite,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmoothPageIndicator(
              controller: controller, // PageController
              count: 4,
              axisDirection: Axis.horizontal,
              effect: const ExpandingDotsEffect(
                  dotColor: AppColors.clFAF0E6Beige,
                  activeDotColor: AppColors.clF4B5A4Salmon,
                  dotHeight: 10,
                  dotWidth: 10),
            ),
            InkWell(
              onTap: () => onTab(),
              child: Container(
                height: 41,
                width: 130,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColors.clF4B5A4Salmon,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  name,
                  style: const TextStyle(
                      fontSize: 20,
                      color: AppColors.clCC7861Terracotta,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
