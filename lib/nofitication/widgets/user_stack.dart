import 'package:flutter/material.dart';
import 'package:sephore/nofitication/widgets/user_stack_item.dart';

class UserStack extends StatefulWidget {
  const UserStack({super.key});

  @override
  State<UserStack> createState() => _UserStackState();
}

class _UserStackState extends State<UserStack>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _moveRight;

  final movementLength = 20.0;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 600,
      ),
    );

    _moveRight = Tween<double>(
      begin: 0,
      end: movementLength,
    ).animate(_controller);
    super.initState();

    _controller.addListener(() {
      setState(() {});
    });

    _controller.forward();
  }

  final users = [
    <String, dynamic>{
      'image': 'assets/user.jpeg',
    },
    <String, dynamic>{
      'image': 'assets/user.jpeg',
    },
    <String, dynamic>{
      'image': 'assets/user.jpeg',
    },
    <String, dynamic>{
      'image': 'assets/user.jpeg',
    }
  ];

  @override
  Widget build(BuildContext context) {
    final allMovementLength = users.length * movementLength;
    return Stack(
      children: users.reversed.toList().asMap().entries.map(
        (e) {
          final index = e.key;
          final value = e.value;
          return Positioned(
            left: _moveRightValue(index),
            child: UserStackItem(
              image: AssetImage(value['image']),
              active: index == users.length - 1,
            ),
          );
        },
      ).toList(),
    );
  }

  double _moveRightValue(int index) {
    final x = _moveRight.value * (users.length - index) - movementLength;
    return x < 0 ? 0 : x;
  }
}
