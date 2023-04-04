import 'dart:math';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sss/coolors.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var Name = "Safyan\nTariq"
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();

    return SafeArea(
      child: VxBox(
        child: VStack(
          [
            ZStack(
              [
                PictureWidget().centered(),
                Row(
                  children: [
                    VStack(
                      [
                        if (context.isMobile) 50.heightBox else 10.heightBox,
                        CustomAppBar().shimmer(primaryColor: Vx.blue900),
                        30.heightBox,
                        Name,
                        20.heightBox,
                        VxBox()
                            .color(Vx.blue900)
                            .size(60, 10)
                            .make()
                            .shimmer(primaryColor: Vx.blue900),
                        30.heightBox,
                        SocialAccounts()
                      ],
                    ).pSymmetric(h: context.percentWidth * 10, v: 32),
                    Expanded(
                      child: VxResponsive(
                        fallback: const Offstage(),
                        medium: const IntroductionWidget().pOnly(left: 400).h(
                              context.percentHeight * 80,
                            ),
                        large: const IntroductionWidget().pOnly(left: 450).h(
                              context.percentHeight * 80,
                            ),
                      ),
                    ),
                  ],
                ).w(context.screenWidth)
              ],
            ),
          ],
        ),
      )
          .size(context.screenWidth, context.percentHeight * 80)
          .color(Coolors.secondaryColor)
          .make(),
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/w.jpg',
      fit: BoxFit.cover,
      height: context.percentHeight * 80,
      width: context.percentWidth * 100,
      alignment: Alignment.center,
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.code,
      size: 70,
      color: Vx.blue900,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Icon(
          Icons.facebook,
          color: Colors.white,
        ).onTap(() {
          launch('https://www.facebook.com/safyan.tariq.52/');
        }),
        20.widthBox,
        Icon(
          //FontAwesomeIcons.instagram
          Ionicons.logo_instagram,
          color: Colors.white,
        ).onTap(() {
          launch('https://www.instagram.com/safyan.tariq.52/');
        }),
        20.widthBox,
        Icon(
          FontAwesomeIcons.github,
          color: Colors.white,
        ).onTap(() {
          launch('https://github.com/MuhammadSafyanTariq');
        }),
      ]),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          '- Introduction'.text.gray500.widest.sm.maxLines(1).make(),
          10.heightBox,
          'Flutter developer, firebase, Dart, Software Engineer'
              .text
              .white
              .xl3
              .maxLines(5)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
          10.heightBox,
          // '                   As a Flutter developer and software engineering student, I possess a strong understanding of programming languages such as Java, Dart, C, and C++. I have experience developing applications for Android, iOS, and the web using Flutter framework and have a strong command over various tools and technologies. I am currently pursuing a degree in software engineering, which has provided me with a comprehensive understanding of software development methodologies, algorithms, data structures, and software design patterns. I am confident that this academic background will help me excel in my role as a Flutter developer. As a software engineer, I possess excellent communication skills and have the ability to work collaboratively with teams from diverse backgrounds.'
          //     .text
          //     .white
          //     .justify
          //     .make()
          //     .p16()
          //     .scrollVertical()
        ].vStack(),
      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}
