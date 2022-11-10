import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class FavoriteItemWidget extends StatelessWidget {
  const FavoriteItemWidget({
    super.key,
    required this.imageProvider,
    required this.label,
  });

  final ImageProvider imageProvider;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24),
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Image(
              image: imageProvider,
            ),
          ),
          SizedBox(height: 8),
          Builder(builder: (context) {
            final labelLength = label.length;
            final idealChar = 11;
            final filler = '...';
            final fillerLength = filler.length;

            if (labelLength > 11) {
              var newText = '';
              var cutLabel = label.substring(0, idealChar - fillerLength);
              return Text(
                '$cutLabel$filler',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              );
            }

            return Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            );
          })
        ],
      ),
    );
  }
}
