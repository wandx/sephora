import 'package:flutter/material.dart';

class OtpKeyboard extends StatefulWidget {
  const OtpKeyboard({Key? key}) : super(key: key);

  @override
  State<OtpKeyboard> createState() => _OtpKeyboardState();
}

class _OtpKeyboardState extends State<OtpKeyboard> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 2 / 1,
      ),
      children: [
        OtpKeyboardItem(text: '1'),
        OtpKeyboardItem(text: '2'),
        OtpKeyboardItem(text: '3'),
        OtpKeyboardItem(text: '4'),
        OtpKeyboardItem(text: '5'),
        OtpKeyboardItem(text: '6'),
        OtpKeyboardItem(text: '7'),
        OtpKeyboardItem(text: '8'),
        OtpKeyboardItem(text: '9'),
        SizedBox(),
        OtpKeyboardItem(text: '0'),
        OtpKeyboardItem(text: '12',icon: Icon(Icons.delete_forever),),
      ],
    );
  }
}

class OtpKeyboardItem extends StatelessWidget {
  const OtpKeyboardItem({
    Key? key,
    required this.text,
    this.icon,
  }) : super(key: key);

  final String text;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        radius: 60,
        onTap: (){},
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xFFF3F7FD),
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Builder(
            builder: (context){
              if(icon != null){
                return icon!;
              }
              return Text(
                text,
                style: TextStyle(
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
