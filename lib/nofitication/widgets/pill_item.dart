import 'package:flutter/material.dart';

class PillItem extends StatelessWidget {
  const PillItem({
    super.key,
    this.active = false,
    required this.text,
    this.onPressed,
  });

  final bool active;
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: active ? Theme.of(context).primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        margin: EdgeInsets.only(right: 10),
        child: Text(
          text,
          style: TextStyle(
            color: active ? Colors.white : Theme.of(context).primaryColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
