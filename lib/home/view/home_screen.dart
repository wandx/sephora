import 'package:flutter/material.dart';
import 'package:sephore/home/widget/account_jumbotron.dart';
import 'package:sephore/home/widget/favorite_list.dart';
import 'package:sephore/home/widget/inactive_account_info.dart';
import 'package:sephore/home/widget/transaction_history.dart';
import 'package:sephore/home/widget/user_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F7FD),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Mutasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
      ),
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
            SizedBox(height: 40),
            FavoriteList(),
            SizedBox(height: 50),
            TransactionHistory(),
          ],
        ),
      ),
    );
  }
}
