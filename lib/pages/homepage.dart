import 'package:flutter/material.dart';
import 'package:payment_app/theme.dart';
import 'package:payment_app/widgets/checkout.dart';
import 'package:payment_app/widgets/header.dart';
// import 'package:payment_app/widgets/option.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Widget option(int index, String title, String subtitle, String price) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: selectedIndex == index ? blueColor : greyColor,
            ),
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              selectedIndex == index
                  ? Image.asset(
                      'assets/images/check2.png',
                      width: 18,
                      height: 18,
                    )
                  : Image.asset(
                      'assets/images/check.png',
                      width: 18,
                      height: 18,
                    ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: planStyle,
                  ),
                  Text(
                    subtitle,
                    style: descStyle,
                  ),
                ],
              ),
              const Spacer(),
              Text(
                price,
                style: priceStyle,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const Header(),
              option(0, 'Monthly', 'Good for starting up', '\$20'),
              option(1, 'Quarterly', 'Focusing on building', '\$55'),
              option(2, 'Yearly', 'Steady company', '\$220'),
              selectedIndex == -1 ? const SizedBox() : const Checkout(),
            ],
          ),
        ),
      ),
    );
  }
}
