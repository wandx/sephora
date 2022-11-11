import 'package:flutter/material.dart';

class OtpKeyboard extends StatefulWidget {
  OtpKeyboard({Key? key, required this.onChanged}) : super(key: key);

  final ValueChanged<String> onChanged;

  @override
  State<OtpKeyboard> createState() => _OtpKeyboardState();
}

class _OtpKeyboardState extends State<OtpKeyboard> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 2 / 1,
      ),
      children: [
        OtpKeyboardItem(
          text: '1',
          onPressed: () {
            widget.onChanged('1');
          },
        ),
        OtpKeyboardItem(
          text: '2',
          onPressed: () {
            widget.onChanged('2');
          },
        ),
        OtpKeyboardItem(
          text: '3',
          onPressed: () {
            widget.onChanged('3');
          },
        ),
        OtpKeyboardItem(
          text: '4',
          onPressed: () {
            widget.onChanged('4');
          },
        ),
        OtpKeyboardItem(
          text: '5',
          onPressed: () {
            widget.onChanged('5');
          },
        ),
        OtpKeyboardItem(
          text: '6',
          onPressed: () {
            widget.onChanged('6');
          },
        ),
        OtpKeyboardItem(
          text: '7',
          onPressed: () {
            widget.onChanged('7');
          },
        ),
        OtpKeyboardItem(
          text: '8',
          onPressed: () {
            widget.onChanged('8');
          },
        ),
        OtpKeyboardItem(
          text: '9',
          onPressed: () {
            widget.onChanged('9');
          },
        ),
        const SizedBox(),
        OtpKeyboardItem(
          text: '0',
          onPressed: () {
            widget.onChanged('0');
          },
        ),
        OtpKeyboardItem(
          text: '12',
          icon: Icon(Icons.delete_forever),
          onPressed: () {
            widget.onChanged('hapus');
          },
        ),
      ],
    );
  }
}

class OtpKeyboardItem extends StatelessWidget {
  const OtpKeyboardItem({
    Key? key,
    required this.text,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final Widget? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        radius: 60,
        onTap: onPressed,
        child: Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            color: Color(0xFFF3F7FD),
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Builder(
            builder: (context) {
              if (icon != null) {
                return icon!;
              }
              return Text(
                text,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              );
            },
          ),
        ),
      ),
    );
  }
}
