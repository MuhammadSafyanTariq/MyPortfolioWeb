import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class PictureWidget extends StatelessWidget {
  const PictureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/header.jpg',
      fit: BoxFit.fill,
      alignment: Alignment.center,
      height: context.screenHeight * 70,
      width: context.screenWidth * 100,
    );
  }
}
