import 'package:flutter/material.dart';
import 'package:sephore/home/widget/account_jumbotron_back.dart';
import 'package:sephore/home/widget/account_jumbotron_front.dart';

class AccountJumbotron extends StatelessWidget {
  const AccountJumbotron({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 335 / 240,
      child: Stack(
        children: [
          AccountJumbotronBack(),
          Align(
            alignment: Alignment.bottomCenter,
            child: AccountJumbotronFront(),
          ),
        ],
      ),
    );
  }
}
