import 'package:app/onboarding/onboarding_items.dart';
import 'package:app/properties.dart';
import 'package:app/setup/getstarted.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final controller = OnboardingItems();
  final pageController = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(foregroundColor),
      bottomSheet: Container(
        height: 120.h,
        decoration: const BoxDecoration(
          color: Color(foregroundColor),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Spacer(
              flex: 1,
            ),
            Container(
              alignment: Alignment.center,
              child: SmoothPageIndicator(
                onDotClicked: (index) => pageController.animateToPage(index,
                    duration: const Duration(
                      milliseconds: 600,
                    ),
                    curve: Curves.easeIn),
                controller: pageController,
                count: controller.items.length,
                effect: WormEffect(
                    dotHeight: 8.h,
                    dotWidth: 20.w,
                    spacing: 10.w,
                    type: WormType.thin,
                    dotColor: const Color(dotDefault),
                    activeDotColor:
                        const Color(primaryColor)), // Customize effect here
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            ElevatedButton(
              onPressed: () {
                if (currentPage == controller.items.length - 1) {
                  // Last page: handle "Get Started" action
                  // (replace with your desired action)
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const Getstarted())); // Example navigation
                } else {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.easeIn,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(primaryColor),
                minimumSize:
                    Size(screenWidth - 30, 48.h), // Set width and height
              ),
              child: Text(
                currentPage == controller.items.length - 1
                    ? 'Get Started'
                    : 'Next',
                style: TextStyle(
                  color: const Color(textLight),
                  fontSize: 16.sp,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                onPageChanged: (index) => setState(() {
                      currentPage == controller.items.length - 1
                          ? 'Get Started'
                          : 'Next'; // Update button text based on page
                    }),
                itemCount: controller.items.length,
                controller: pageController,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        width: screenWidth,
                        controller.items[index].image,
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 15.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              softWrap: true,
                              maxLines: 2,
                              controller.items[index].title,
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 20.sp,
                                  color: const Color(textColor),
                                  fontWeight: FontWeight.w500),
                            ),
                            AutoSizeText(
                              softWrap: true,
                              maxLines: 2,
                              controller.items[index].description,
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp,
                                  color: const Color(textSubtitle)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
            Positioned(
                right: 15,
                top: 0,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Getstarted()));
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: "Poppins",
                          color: const Color(textColor)),
                    ))),
          ],
        ),
      ),
    );
  }
}
