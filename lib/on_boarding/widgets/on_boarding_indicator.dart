import 'package:flutter/material.dart';

class OnBoardingIndicator extends StatelessWidget {
  const OnBoardingIndicator({super.key, required this.currentPage});

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OnBoardingIndicatorItem(active: currentPage == 0),
        OnBoardingIndicatorItem(active: currentPage == 1),
        OnBoardingIndicatorItem(active: currentPage == 2),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}

class OnBoardingIndicatorItem extends StatelessWidget {
  const OnBoardingIndicatorItem({super.key, this.active = false});

  final bool active;

  @override
  Widget build(BuildContext context) {
    if (active) {
      return Container(
        width: 30,
        height: 10,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      );
    }
    return Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: const BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
