import 'package:flutter/material.dart';
import 'package:safyan_tariq/utils/coolors.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDescription extends StatelessWidget {
  final String title;
  final String description;
  final TextAlign textAlign;

  const MyDescription({
    super.key,
    required this.title,
    required this.description,
    required this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = context.percentWidth * 100 < 1200;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HeightBox(context.percentHeight),
              Center(
                child: Text(
                  title,
                  textAlign: textAlign,
                  style: TextStyle(
                    fontSize: isSmallScreen ? 20 : 30,
                    color: Vx.blue800,
                  ),
                ),
              ),
              HeightBox(context.percentHeight * 2),
              Text(
                description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: isSmallScreen ? 10 : 12,
                  color: Colors.white,
                ),
              ),
            ],
          ).p(25),
        )
            .box
            .roundedLg
            .alignCenter
            .height(isSmallScreen ? 450 : 430)
            .width(isSmallScreen ? 340 : 500)
            .neumorphic(
              color: Coolors.primaryColor,
              elevation: 5.0,
              curve: VxCurve.flat,
            )
            .make()
            .p16()
            .centered(),
      ],
    );
  }
}
