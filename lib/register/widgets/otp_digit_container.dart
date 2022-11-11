import 'package:flutter/material.dart';

class OtpDigitContainer extends StatefulWidget {
  const OtpDigitContainer({
    Key? key,
    required this.otpValue,
    this.optLength = 6,
  }) : super(key: key);

  final String otpValue;
  final int optLength;

  @override
  State<OtpDigitContainer> createState() => _OtpDigitContainerState();
}

class _OtpDigitContainerState extends State<OtpDigitContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.optLength, (index) => index + 1).map((e) {
        return OtpDigitItem(active: e <= widget.otpValue.length);
      }).toList(),
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
    if (active) {
      return Container(
        width: 16,
        height: 16,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: const Color(0xFFDAE9FF)),
          color: const Color(0xFF2F82FF),
        ),
      );
    }
    return Container(
      width: 16,
      height: 16,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey),
      ),
    );
  }
}
