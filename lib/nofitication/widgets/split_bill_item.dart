import 'package:flutter/material.dart';
import 'package:sephore/app_theme.dart';
import 'package:sephore/nofitication/widgets/user_stack.dart';

class SplitBillItem extends StatelessWidget {
  const SplitBillItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tagihan Split Bill',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '14:30',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppTheme.gray,
                ),
              ),
            ],
          ),
          SizedBox(height: 13),
          Row(
            children: [
              Container(
                height: 50,
                width: 200,
                child: UserStack(),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Nominal Tagihan',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: AppTheme.gray,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Rp 1000.000',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
