import 'package:flutter/material.dart';
import 'package:payment_app/theme.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 311,
          height: 52,
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: blueColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(71),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Checkout Now',
              style: bottonStyle,
            ),
          ),
        )
      ],
    );
  }
}
