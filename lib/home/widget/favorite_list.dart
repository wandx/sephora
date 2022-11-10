import 'package:flutter/material.dart';
import 'package:sephore/home/widget/favorite_item/favorite_item.dart';
import 'package:sephore/home/widget/home_section_title.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeSectionTitle(
          title: 'Daftar Favorite',
          onSeeAll: () {},
        ),
        SizedBox(height: 15),
        Row(
          children: [
            AddFavoriteList(),
            FavoriteItemWidget(
              imageProvider: AssetImage('assets/logo_mandiri.png'),
              label: 'Lorem Ighwrh owjgiwjr oirjh owh ouwrh',
            ),
          ],
        )
      ],
    );
  }
}
