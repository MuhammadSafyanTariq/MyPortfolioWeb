import 'package:flutter/material.dart';
import 'package:sss/DescriptionScreen.dart';
import 'package:sss/Sliders/ProjectsWidget.dart';
import 'package:sss/coolors.dart';
import 'package:sss/footer.dart';
import 'package:sss/header.dart';
import 'package:sss/middle.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Coolors.primaryColor,
        child: VStack(
          [
            HeaderScreen(),
            if (context.isMobile) IntroductionWidget().p16(),
            MiddleScreen(),
            MyPage(
              title: 'Overview',
              description:
                  ('            As a software engineering student, I have gained a strong foundation in various programming languages and frameworks, including C, C++, Dart, and Java. With my extensive knowledge of Flutter app development, I have successfully created several mobile applications that demonstrate my expertise in creating user-friendly and visually appealing software solutions. I am particularly adept at leveraging Firebase for backend development, and have experience in implementing authentication, cloud storage, and real-time database functionalities. Throughout my academic career, I have actively participated in coding competitions and hackathons, where I have honed my problem-solving and teamwork skills. I am committed to staying up-to-date with the latest technologies and industry trends, and regularly engage in online courses and tutorials to enhance my knowledge and proficiency in software engineering. I am a dedicated and motivated individual who strives for excellence in all my endeavors. I believe that my strong technical background and passion for software engineering make me a valuable addition to any team, and I look forward to utilizing my skills to create innovative and impactful software solutions.'),
            ),
            PortfolioSlider(),
            FooterScreen(),
          ],
        ).scrollVertical());
  }
}
