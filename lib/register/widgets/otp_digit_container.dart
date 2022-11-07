import 'package:flutter/material.dart';

class OtpDigitContainer extends StatelessWidget {
  const OtpDigitContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OtpDigitItem(active: false),
        OtpDigitItem(active: false),
        OtpDigitItem(active: false),
        OtpDigitItem(active: false),
        OtpDigitItem(active: false),
        OtpDigitItem(active: false),
      ],
    );
  }
}

class OtpDigitItem extends StatelessWidget {
  const OtpDigitItem({
    Key? key,
    this.active = false,
  }) : super(key: key);

  final bool active;

  @override
  Widget build(BuildContext context) {
    if(active){
      return Container(
        width: 16,
        height: 16,
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Color(0xFFDAE9FF)),
          color: Color(0xFF2F82FF),
        ),
      );
    }
    return Container(
      width: 16,
      height: 16,
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey),
      ),
    );
  }
}
