import "package:flutter/material.dart";
import "package:todo/core/common/widgets/fading_text.dart";
import "package:todo/core/common/widgets/white_space.dart";
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todo/features/on_boarding/views/widgets/dynamic_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final pageController = PageController();
  final count = 2;
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView(
                controller: pageController,
                children: const [
                  DynamicPage(type: 'text'),
                  DynamicPage(type: 'button'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //button
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInCubic);
                      },
                      child: const Row(
                        children: [
                          Icon(
                            Icons.arrow_circle_right_rounded,
                            size: 30,
                            color: Colors.blue,
                          ),
                          WhiteSpace(width: 1),
                          FadingText('Skip', color: Colors.blue)
                        ],
                      ),
                    ),
                    //skip
                    SmoothPageIndicator(
                        controller: pageController,
                        count: count,
                        effect: const ExpandingDotsEffect(
                            dotColor: Colors.grey,
                            activeDotColor: Colors.blue,
                            dotHeight: 12,
                            dotWidth: 12,
                            expansionFactor: 2,
                            spacing: 5))
                    //swipe
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
