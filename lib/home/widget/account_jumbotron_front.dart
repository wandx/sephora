import 'package:flutter/material.dart';

class AccountJumbotronFront extends StatelessWidget {
  const AccountJumbotronFront({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 13),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        height: 81,
        margin: EdgeInsets.symmetric(horizontal: 13),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
      ),
    );
  }
}
