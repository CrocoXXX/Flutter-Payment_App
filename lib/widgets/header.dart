import 'package:flutter/material.dart';
import 'package:payment_app/theme.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 50,
          ),
          child: Image.asset(
            'assets/images/achive.png',
            width: 267,
            height: 200,
            // colorBlendMode: BlendMode.color,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Upgrade to ',
              style: titleStyle,
            ),
            Text(
              'Pro',
              style: titleProStyle,
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Go unlock all features and \nbuild your own business bigger',
          style: subtitleStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
