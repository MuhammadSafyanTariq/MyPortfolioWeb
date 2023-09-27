import 'package:flutter/material.dart';
import 'package:safyan_tariq/utils/animatedText.dart';
import 'package:velocity_x/velocity_x.dart';

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          '- Introduction'.text.gray500.widest.sm.maxLines(1).make(),
          10.heightBox,
          AnimatedTextOnce(
            words: const [
              '',
              'Software Engineer, Flutter developer, firebase Expert'
            ],
            color: Colors.white,
            size: 15 + context.percentWidth,
          ),
          10.heightBox,
        ].vStack(),
      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}
