import 'package:flutter/material.dart';
import 'package:safyan_tariq/Sliders/Screens/VideoScreen.dart';
import 'package:safyan_tariq/utils/animatedText.dart';

import 'package:velocity_x/velocity_x.dart';

import '../../utils/coolors.dart';
import '../widgets/IntroWidget.dart';
import 'DescriptionScreen.dart';
import 'ProjectsDetaileWidget.dart';
import 'footer.dart';
import 'header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolors.primaryColor,
      child: VStack(
        [
          const HeaderScreen(),
          Column(
            children: [
              const IntroductionWidget().centered().p32(),
              Container(
                height: 1,
                color: Vx.black,
              )
            ],
          ),
          50.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 0.4,
                color: Vx.white,
                width: context.percentWidth * 12,
              ),
              8.widthBox,
              const AnimatedTextOnce(
                words: ['', 'Our Services'],
                color: Colors.white,
                size: 32,
              ).centered(),
              8.widthBox,
              Container(
                height: 0.4,
                color: Vx.white,
                width: context.percentWidth * 12,
              ),
            ],
          ).centered(),
          if (context.percentWidth * 100 <= 1200)
            Column(
              children: [
                50.heightBox,
                const MyDescription(
                  title: 'Our Experties',
                  description:
                      '\n      -Flutter framework\n      -Node.js\n      -API integration\n      -Android\n      -iOS\n      -Hybrid Mobile Apps\n      -Firebase\n      -Backend Development\n      -Web App Development\n      -Full-stack Development\n      -Software Engineering Principles\n      -User-friendly Software Solutions\n      -Technology Trends\n ',
                  textAlign: TextAlign.left,
                ),
                50.heightBox,
                ProjectDetailSlider(),
                50.heightBox,
              ],
            ),
          if (context.percentWidth * 100 > 1200)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                500.heightBox,
                const MyDescription(
                    textAlign: TextAlign.justify,
                    title: 'Our Experties',
                    description:
                        '\n      -Flutter framework\n      -Node.js\n      -API integration\n      -Android\n      -iOS\n      -Hybrid Mobile Apps\n      -Firebase\n      -Backend Development\n      -Web App Development\n      -Full-stack Development\n      -Software Engineering Principles\n      -User-friendly Software Solutions\n      -Technology Trends\n '),
                WidthBox(context.percentWidth * 10),
                ProjectDetailSlider(),
                700.heightBox
              ],
            ),
          const MyDescription(
            textAlign: TextAlign.justify,
            title: 'About Me',
            description:
                ('            As a software engineering student, I have a strong foundation in programming languages such as C, C++, Dart, and Java. I have created multiple Flutter mobile applications showcasing my expertise in creating user-friendly and visually appealing software solutions. My experience includes utilizing Firebase for backend development, implementing authentication, cloud storage, and real-time database functionalities. I actively participate in coding competitions and hackathons to enhance my problem-solving and teamwork skills. I am committed to staying updated with the latest technologies through online courses and tutorials. With my dedication, motivation, and passion for software engineering, I am confident in my ability to contribute as a valuable team member in creating innovative and impactful software solutions.'),
          ),
          50.heightBox,
          // const VideoSlider(
          //     videoUrls: []),
          Container(
            height: 1,
            color: Vx.black,
            // width: context.percentWidth * 70,
          ),
          const FooterScreen(),
        ],
      ).scrollVertical(),
    );
  }
}
