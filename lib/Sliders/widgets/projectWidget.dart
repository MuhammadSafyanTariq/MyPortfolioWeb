import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utils/coolors.dart';

class ProjectWidget extends StatelessWidget {
  final String title;
  const ProjectWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return title.text.bold.xl.white.center.wide
        .make()
        .box
        .p8
        .roundedLg
        .alignCenter
        .square(200)
        .neumorphic(
          color: context.isMobile ? Vx.blue900 : Coolors.primaryColor,
          elevation: 5.0,
          curve: VxCurve.flat,
        )
        .make()
        .p16();
  }
}
