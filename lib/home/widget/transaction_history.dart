import 'package:flutter/material.dart';
import 'package:sephore/home/widget/transaction_history_item.dart';

import 'home_section_title.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeSectionTitle(
          title: 'Riwayat Transaksi',
          onSeeAll: () {},
        ),
        SizedBox(height: 15),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 24, right: 20),
            child: Column(
              children: [
                TransactionHistoryItem(
                  imageProvider: AssetImage('assets/topup_ewallet.png'),
                  title: 'Topup E-Wallet',
                  description: 'Gopay - 081111111111',
                  amount: 14000000,
                  type: TransactionType.keluar,
                ),
                TransactionHistoryItem(
                  imageProvider: AssetImage('assets/topup_ewallet.png'),
                  title: 'Topup E-Wallet',
                  description: 'Gopay - 081111111111',
                  amount: 14000000,
                  type: TransactionType.masuk,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
