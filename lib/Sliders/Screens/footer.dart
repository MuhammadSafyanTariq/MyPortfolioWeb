import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/CustomAppBar.dart';
import '../widgets/SocialAcount.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: VStack(
            [
              HeightBox(context.isMobile
                  ? context.percentHeight * 3
                  : context.percentHeight * 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 0.4,
                    color: Vx.white,
                    width: context.percentWidth * 12,
                  ),
                  8.widthBox,
                  'Contact us'.text.white.center.bold.xl4.make(),
                  8.widthBox,
                  Container(
                    height: 0.4,
                    color: Vx.white,
                    width: context.percentWidth * 12,
                  ),
                ],
              ),
              20.heightBox,
              VStack(
                [
                  'Got a project?\nLet\'s talk'.text.white.center.xl2.make(),
                  10.heightBox,
                  if (context.percentHeight * 100 > 600)
                    'mstdevop786@gmail.com'
                        .text
                        .color(Vx.white)
                        .semiBold
                        .make()
                        .box
                        .border(color: Vx.white)
                        .p16
                        .rounded
                        .make()
                        .onTap(() {
                      launch(
                          'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSHxTgCddCmNbCLbDBTqlzBqsPtVfJDBNPRBplKnGhfKMxMwlXLZpNLlpjzTsDmKgxNPwTMM');
                    }),
                ],
                crossAlignment: CrossAxisAlignment.center,
              ),
              10.heightBox,
              if (context.percentHeight * 100 > 700) const CustomAppBar(),
              10.heightBox,
              'Thanks for visiting. '
                  .richText
                  .semiBold
                  .white
                  .withTextSpanChildren(
                      ['that\'s all Folks'.textSpan.gray500.make()]).make(),
              10.heightBox,
              [
                'Made by M.Safyan Tariq '.text.red500.make().shimmer(),
                const Icon(
                  Ionicons.heart,
                  color: Vx.white,
                ),
                10.heightBox,
              ].hStack(crossAlignment: CrossAxisAlignment.center),
              5.heightBox,
              [
                const Icon(
                  Ionicons.logo_whatsapp,
                  color: Vx.green400,
                ),
                ' WhatsApp   +92 324 6910899'
                    .text
                    .white
                    .align(TextAlign.left)
                    .make()
              ].hStack(),
              20.heightBox,
              [const SocialAccounts().centered()].hStack(),
            ],
            crossAlignment: CrossAxisAlignment.center,
          )
              .centered()
              .w(context.percentWidth * (context.isMobile ? 80 : 70))
              .p16()
              .h(context.percentHeight * 70),
        ),
      ],
    );
  }
}
