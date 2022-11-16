import 'package:flutter/material.dart';
import 'package:sephore/app_theme.dart';
import 'package:sephore/on_boarding/widgets/language_switcher.dart';
import 'package:sephore/on_boarding/widgets/on_boarding_carousel.dart';
import 'package:sephore/on_boarding/widgets/on_boarding_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppTheme.mainPadding),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'BANK SEPHORA',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF2F82FF),
                  ),
                ),
                LanguageSwitcher(
                  isID: (isId) {
                    print(isId ? 'Bahasa' : 'English');
                  },
                ),
              ],
            ),
            SizedBox(height: 58),
            OnBoardingCarousel(
              onChanged: (currentPage) {
                setState(() {
                  _currentPage = currentPage;
                });
              },
            ),
            SizedBox(height: 30),
            OnBoardingIndicator(currentPage: _currentPage),
            SizedBox(height: 30),
            const Text(
              'Kemudahan Dalam Genggaman',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xFF464455),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            const Text(
              'Hanya dengan 3 langkah'
              'registrasi, nikmati segala'
              'kemudahan dalam bertransaksi',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF727FA3),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 61),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Buat Akun Sekarang'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/chat.png'),
                  const Text('Butuh Bantuan?'),
                ],
              ),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.stretch,
        ),
      ),
    );
  }
}
