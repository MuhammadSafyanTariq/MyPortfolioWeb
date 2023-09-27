import 'package:flutter/material.dart';
import 'package:safyan_tariq/Sliders/widgets/CustomAppBar.dart';
import 'package:safyan_tariq/Sliders/widgets/SocialAcount.dart';
import 'package:safyan_tariq/Sliders/widgets/picWidget.dart';
import 'package:safyan_tariq/utils/coolors.dart';
import 'package:velocity_x/velocity_x.dart';

// ... (other imports and constants)

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var Name = "Safyan Tariq"
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile
            ? 13
            : context.percentHeight > 30
                ? 18
                : 13)
        .bold
        .make()
        .shimmer(primaryColor: Vx.white);

    return SingleChildScrollView(
      child: SafeArea(
        child: VxBox(
          child: VStack(
            [
              ZStack(
                [
                  SizedBox(
                    height: context.percentHeight * 70,
                    child: const PictureWidget(),
                  ),
                  Row(
                    children: [
                      VStack(
                        [
                          if (context.percentHeight * 100 > 500)
                            HeightBox(context.percentHeight * 15),
                          const CustomAppBar().shimmer(primaryColor: Vx.white),
                          30.heightBox,
                          Name,
                          20.heightBox,
                          VxBox()
                              .color(Vx.white)
                              .size(300, 7)
                              .make()
                              .shimmer(primaryColor: Vx.white),
                          30.heightBox,
                          if (context.percentHeight * 100 > 400)
                            const SocialAccounts()
                        ],
                      ).pSymmetric(h: context.percentWidth * 4, v: 2),
                    ],
                  ).w(context.screenWidth),
                ],
              ),
            ],
          ),
        )
            .size(context.screenWidth, context.percentHeight * 70)
            .color(Coolors.secondaryColor)
            .make(),
      ),
    );
  }
}
