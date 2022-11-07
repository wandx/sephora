import 'package:flutter/material.dart';

class SephoraAppBar extends StatelessWidget {
  const SephoraAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: (){
              print('back');
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.arrow_back,
                size: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 32,
            alignment: Alignment.center,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
