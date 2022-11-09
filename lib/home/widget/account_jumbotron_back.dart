import 'package:flutter/material.dart';

class AccountJumbotronBack extends StatelessWidget {
  const AccountJumbotronBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 40),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tabungan Harian',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                '1234 1234 1234 6412',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  letterSpacing: 3,
                ),
              ),
              SizedBox(width: 15),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Salin',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Text(
            'Saldo Rekening Utama',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              letterSpacing: 3,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                '15.000.000.000',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  letterSpacing: 3,
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.remove_red_eye_sharp,
                color: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
