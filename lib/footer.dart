import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';

import 'package:sss/coolors.dart';
import 'package:sss/header.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        HeightBox(context.isMobile
            ? context.percentHeight * 4
            : context.percentHeight * 10),
        VxDevice(
          mobile: VStack(
            [
              'Got a project?\nLet\'s talk'.text.white.center.xl2.make(),
              10.heightBox,
              'mstdevop786@gmail.com'
                  .text
                  .color(Vx.white)
                  .semiBold
                  .make()
                  .box
                  .border(color: Vx.white)
                  .p16
                  .rounded
                  .make(),
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              'Got a project?\nLet\'s talk'.text.white.center.xl2.make(),
              10.widthBox,
              'mstdevops786@gmail.com'
                  .text
                  .color(Vx.blue900)
                  .semiBold
                  .make()
                  .box
                  .border(color: Vx.blue900)
                  .p16
                  .rounded
                  .make()
                  .shimmer(),
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 70).scale150().p16(),
        ),
        10.heightBox,
        CustomAppBar(),
        10.heightBox,
        'Thanks for visiting. '.richText.semiBold.white.withTextSpanChildren(
            ['that\'s all Folks'.textSpan.gray500.make()]).make(),
        10.heightBox,
        [
          'Made by M.Safyan Tariq'.text.red500.make().shimmer(),
          Icon(
            Ionicons.heart,
            color: Vx.red500,
          ),
          10.heightBox,
        ].hStack(crossAlignment: CrossAxisAlignment.center),
        5.heightBox,
        [
          Icon(
            Ionicons.logo_whatsapp,
            color: Vx.green400,
          ),
          ' WhatsApp   +92 324 6910899'.text.white.align(TextAlign.left).make()
        ].hStack()
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16().h(context.percentHeight * 60);
  }
}
