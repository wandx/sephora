import 'package:flutter/material.dart';

class UserStackItem extends StatelessWidget {
  const UserStackItem({
    super.key,
    this.active = false,
    required this.image,
  });

  final bool active;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: active ? Theme.of(context).primaryColor : Colors.white,
        ),
        shape: BoxShape.circle,
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
