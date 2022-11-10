import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddFavoriteList extends StatelessWidget {
  const AddFavoriteList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24),
      child: Column(
        children: [
          DottedBorder(
            dashPattern: [10],
            borderType: BorderType.RRect,
            color: Colors.blue,
            radius: const Radius.circular(60),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Container(
                width: 60,
                height: 60,
                color: Colors.white,
                child: const Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Tambah',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
