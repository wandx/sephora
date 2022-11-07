import 'package:flutter/material.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Berhasil!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 28),
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 81,
            ),
            SizedBox(height: 20),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 35),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Tutup'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(100, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
