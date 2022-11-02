import 'package:flutter/material.dart';

class OnBoardingCarousel extends StatelessWidget {
  OnBoardingCarousel({super.key, required this.onChanged});

  final Function(int) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 240,
      child: PageView(
        onPageChanged: (currentPage) {
          onChanged(currentPage);
        },
        children: [
          Container(
            width: 240,
            height: 240,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/im_1.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            width: 240,
            height: 240,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/im_2.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            width: 240,
            height: 240,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/im_3.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
