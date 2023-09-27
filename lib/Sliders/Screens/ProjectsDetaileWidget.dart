import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utils/coolors.dart';

class ProjectDetailSlider extends StatefulWidget {
  @override
  _ProjectDetailSliderState createState() => _ProjectDetailSliderState();
}

class _ProjectDetailSliderState extends State<ProjectDetailSlider> {
  final List<Map<String, String>> _sliderItems = [
    {
      'title': 'BunnyGram',
      'description':
          '           It is an app like Instagram built using Flutter and Firebase which include features such as a feed of photos and videos, user profiles, and a camera interface. Firebase would handle authentication, storage, and messaging, while Flutter would enable rapid development and iteration. Efficient resource usage and techniques such as caching would be implemented for a smooth user experience.',
      'button1': 'See Code',
      'button2': 'Download App',
      'action1': 'https://github.com/MuhammadSafyanTariq/Instagram-clone',
      'action2':
          'https://drive.google.com/file/d/128p1YD6XcRTcK3LnFpJWMeC7dvMMEsXp/view?usp=sharing',
    },
    {
      'title': 'BunnyzChat',
      'description':
          '           It is an app like WhatsApp built using Flutter and Firebase would include features such as messaging, voice and video calls, user profiles, and group chats. Firebase would handle authentication, messaging, and real-time database management, while Flutter would enable rapid development and iteration. Techniques such as push notifications and offline data synchronization would be implemented for a seamless user experience.',
      'button1': 'See Code',
      'button2': 'Download App',
      'action1':
          'https://github.com/MuhammadSafyanTariq/WhatsApp_clone_flutter',
      'action2':
          'https://drive.google.com/file/d/12889McpAeR3aBFFj1GbMolHEClGTgn_V/view?usp=sharing',
    },
    {
      'title': 'Tic Tac Toe',
      'description':
          '           Tic Tac Toe game clone is a simple two-player game that takes place on a 3x3 grid of squares. Each player takes turns tapping a square to place their mark (either an "X" or an "O"). The game continues until either one player has three marks in a row (horizontally, vertically, or diagonally), or all squares on the grid have been filled without either player achieving three in a row, resulting in a tie.',
      'button1': 'See Code',
      'button2': 'Download App',
      'action1': 'https://github.com/MuhammadSafyanTariq/Tic-Tac-Toe-',
      'action2':
          'https://drive.google.com/file/d/1eEO6aFf4u-e-SgVZOCaAEn85DjlGXoJI/view?usp=drivesdk',
    },
    {
      'title': 'Portfolio web (flutter)',
      'description':
          "           A portfolio website made using Flutter showcases a person's work, skills, and accomplishments using Flutter's UI toolkit. It includes an introduction section, a portfolio section, an \"about me\" section, and a contact section. The website design is visually appealing, utilizing Flutter's widgets and animations, and hot-reload feature enables rapid development and iteration.",
      'button1': 'See Code',
      'button2': 'Availiable soon',
      'action1': 'https://github.com/MuhammadSafyanTariq/MyPortfolioWeb',
      'action2': '',
    },
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: _sliderItems.length,
      options: CarouselOptions(
        height: 500.0,
        viewportFraction: 1.0,
        autoPlay: true,
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            'Some pervious projects'.richText.center.blue800.size(30).make(),
            Container(
              height: 0.5,
              width: 260,
              color: Vx.white,
            ).shimmer(primaryColor: Vx.black).p(20),
            Text(
              _sliderItems[index]['title']!,
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Vx.white,
              ),
            ),
            //    SizedBox(height: context.percentHeight * 2),
            Text(
              _sliderItems[index]['description']!,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 13.0,
                color: Colors.white,
              ),
            ).p(20),
            SizedBox(height: context.percentHeight * 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    launch(_sliderItems[index]['action1']!);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Vx.blue800),
                  ),
                  child: Text(
                    _sliderItems[index]['button1']!,
                    style: const TextStyle(color: Vx.white),
                  ),
                ),
                const SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: () {
                    launch(_sliderItems[index]['action2']!);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Vx.blue800),
                  ),
                  child: Text(
                    _sliderItems[index]['button2']!,
                    style: const TextStyle(color: Vx.white),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    )
        .box
        .roundedLg
        .alignCenter
        .height(context.percentWidth * 100 <= 1200 ? 550 : 430)
        .width(context.percentWidth * 100 < 1200 ? 340 : 500)
        .neumorphic(
          color: Coolors.primaryColor,
          elevation: 5.0,
          curve: VxCurve.flat,
        )
        .make()
        .centered();
  }
}
