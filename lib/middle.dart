import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  const MiddleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.blue900,
      child: Flex(
          direction: context.isMobile ? Axis.vertical : Axis.horizontal,
          children: [
            'All creative works\n'
                .richText
                .withTextSpanChildren(
                  [
                    'Selected projects.'.textSpan.yellow400.make(),
                  ],
                )
                .xl4
                .white
                .make(),
            20.widthBox,
            Expanded(
                child: VxSwiper(
              items: [
                ProjectWidget(title: 'BunnyGram'),
                ProjectWidget(title: 'TicTacToe'),
                ProjectWidget(title: 'BunnyzChat'),
                ProjectWidget(title: 'Catalog App'),
              ],
              height: 170,
              enlargeCenterPage: true,
              // viewportFraction: context.isMobile ? 0.75 : 0.7,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
            ))
          ]).p64().h(context.isMobile ? 500 : context.percentHeight * 60),
    );
  }
}

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
          color: Vx.blue900,
          elevation: 5.0,
          curve: VxCurve.flat,
        )
        .make()
        .p16();
  }
}
