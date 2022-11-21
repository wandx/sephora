import 'package:flutter/material.dart';
import 'package:sephore/nofitication/models/user_list.dart';
import 'package:sephore/nofitication/widgets/user_stack_item.dart';

class UserStack extends StatefulWidget {
  const UserStack({super.key, this.users = const []});

  final List<UserList> users;

  @override
  State<UserStack> createState() => _UserStackState();
}

class _UserStackState extends State<UserStack>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _moveRight;

  final movementLength = 20.0;
  final takeUser = 5;
  int currentThumbCount = 0;

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

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: _userThumbs(),
      alignment: Alignment.center,
    );
  }

  List<Widget> _userThumbs() {
    if (widget.users.length > takeUser) {
      currentThumbCount = takeUser + 1;
      final widgetList = widget.users.take(takeUser).toList().asMap().entries.map(
        (e) {
          final index = e.key + 1;
          final value = e.value;
          return Positioned(
            left: _moveRightValue(index),
            child: UserStackItem(
              image: value.image,
              active: index == currentThumbCount - 1,
              name: value.userInitial,
            ),
          );
        },
      ).toList();

      return [
        Positioned(
          left: _moveRightValue(0),
          child: Container(
            width: 65,
            height: 40,
            child: Text(
              '+${widget.users.length - takeUser}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColor,
              ),
            ),
            alignment: Alignment.center,
          ),
        ),
        ...widgetList,
      ];
    } else {
      currentThumbCount = widget.users.length;
      return widget.users.asMap().entries.map(
        (e) {
          final index = e.key;
          final value = e.value;
          return Positioned(
            left: _moveRightValue(index),
            child: UserStackItem(
              image: value.image,
              active: index == widget.users.length - 1,
              name: value.userInitial,
            ),
          );
        },
      ).toList();
    }
  }

  double _moveRightValue(int index) {
    final x = _moveRight.value * (currentThumbCount - index) - movementLength;
    return x < 0 ? 0 : x;
  }
}
