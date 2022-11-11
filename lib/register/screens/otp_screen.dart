import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sephore/register/widgets/otp_digit_container.dart';
import 'package:sephore/register/widgets/otp_keyboard.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _otpLength = 6;
  var _otpValue = '';
  Timer? _timer;

  late int _sisaWaktu;
  final _totalSecond = (4 * 60) + 30;
  // final _totalSecond = 500;



  @override
  void initState() {
    _sisaWaktu = _totalSecond;
    super.initState();
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          _sisaWaktu--;
        });

        if(_sisaWaktu == 0){
          _timer!.cancel();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 32,
                      alignment: Alignment.center,
                      child: const Text(
                        'OTP',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Image.asset(
                'assets/mobile.png',
                width: 70,
              ),
              const SizedBox(height: 30),
               Text(
                formatTime(_sisaWaktu),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Masukkan 6 digit kode'
                  ' OTP yang telah dikirimkan'
                  ' melalui nomor telepon'
                  ' +62 81231231232',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              OtpDigitContainer(otpValue: _otpValue, optLength: _otpLength),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {},
                child: const Text('Kirim Ulang'),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: OtpKeyboard(
                  onChanged: (String value) {
                    if (value == 'hapus') {
                      _deleteLastChar();
                    }
                    if (_otpValue.length < _otpLength) {
                      if (value != 'hapus') {
                        setState(() {
                          _otpValue += value;
                        });
                      }
                    }

                    print(_otpValue);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _deleteLastChar() {
    print('Semua karakter: $_otpValue');
    print('Karakter terakhir sekarang: ${_otpValue.split('').last}');
    if (_otpValue.isNotEmpty) {
      final split = _otpValue.split('');
      split.removeLast();
      final join = split.join('');
      print('Nilai setelah di olah: $join');
      setState(() {
        _otpValue = join;
      });
    }
  }

  String formatTime(int seconds) {
    final duration = Duration(seconds: _sisaWaktu).toString();
    final firstSplit = duration.split('.').first;
    final removeFirstDigit = firstSplit.split(':')..removeAt(0);
    final cleanTimer = removeFirstDigit.join(':');
    return cleanTimer;
  }
}
