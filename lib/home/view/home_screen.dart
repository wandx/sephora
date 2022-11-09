import 'package:flutter/material.dart';
import 'package:sephore/home/widget/account_jumbotron.dart';
import 'package:sephore/home/widget/inactive_account_info.dart';
import 'package:sephore/home/widget/user_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F7FD),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Appbar
            UserInfo(),
            // Scrollview
            SingleChildScrollView(
              child: Container(),
            ),
            SizedBox(height: 10),
            InactiveAccountInfo(),
            SizedBox(height: 10),
            AccountJumbotron(),
          ],
        ),
      ),
    );
  }
}
