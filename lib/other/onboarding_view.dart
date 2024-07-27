import 'package:app/other/onboarding_items.dart';
import 'package:app/pages/getstarted.dart';
import 'package:app/properties.dart';
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
      backgroundColor: const Color(backgroundColor),
      bottomSheet: SizedBox(
        height: 150.h,
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
                effect: const WormEffect(
                    activeDotColor:
                        Color(primaryColor)), // Customize effect here
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
                      SizedBox(
                        height: 30.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 15.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              controller.items[index].tittle,
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 20.sp,
                                  color: const Color(textColor),
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              controller.items[index].description,
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16.sp,
                                  color: const Color(textSubtitle)),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        controller.items[index].image,
                        fit: BoxFit.contain,
                        width: screenWidth,
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
                          fontSize: 16.sp,
                          fontFamily: "Poppins",
                          color: const Color(textColor)),
                    ))),
          ],
        ),
      ),
    );
  }
}
