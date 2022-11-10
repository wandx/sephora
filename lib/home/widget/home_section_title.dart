import 'package:flutter/material.dart';

class HomeSectionTitle extends StatelessWidget {
  const HomeSectionTitle({
    super.key,
    required this.title,
    this.onSeeAll,
  });

  final String title;
  final Function? onSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        Builder(builder: (context) {
          if (onSeeAll == null) {
            return SizedBox();
          }
          return Text(
            'Lihat Semua',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.blue,
            ),
          );
        }),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
