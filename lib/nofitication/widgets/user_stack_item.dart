import 'package:flutter/material.dart';
import 'dart:math' as math;

class UserStackItem extends StatelessWidget {
  const UserStackItem({
    super.key,
    this.active = false,
    required this.image, required this.name,
  });

  final bool active;
  final ImageProvider? image;
  final String name;

  @override
  Widget build(BuildContext context) {
    if(image != null){
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
            image: image!,
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    final color = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: active ? Theme.of(context).primaryColor : Colors.white,
        ),
        shape: BoxShape.circle,
        color: color,
      ),
      child: Text(name,style: TextStyle(color: Colors.white,),),
      alignment: Alignment.center,

    );
  }
}
