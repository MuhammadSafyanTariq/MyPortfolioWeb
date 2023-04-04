import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sss/coolors.dart';
import 'package:velocity_x/velocity_x.dart';

class PortfolioSlider extends StatefulWidget {
  @override
  _PortfolioSliderState createState() => _PortfolioSliderState();
}

class _PortfolioSliderState extends State<PortfolioSlider> {
  final List<Map<String, String>> _sliderItems = [
    {
      'title': 'BunnyGram',
      'description':
          '           It is an app like Instagram built using Flutter and Firebase which include features such as a feed of photos and videos, user profiles, and a camera interface. Firebase would handle authentication, storage, and messaging, while Flutter would enable rapid development and iteration. Efficient resource usage and techniques such as caching would be implemented for a smooth user experience.',
      'button1': 'See Code',
      'button2': 'Download App',
    },
    {
      'title': 'BunnyzChat',
      'description':
          '           It is an app like WhatsApp built using Flutter and Firebase would include features such as messaging, voice and video calls, user profiles, and group chats. Firebase would handle authentication, messaging, and real-time database management, while Flutter would enable rapid development and iteration. Techniques such as push notifications and offline data synchronization would be implemented for a seamless user experience.',
      'button1': 'See Code',
      'button2': 'Download App',
    },
    {
      'title': 'Tic Tac Toe',
      'description':
          '           Tic Tac Toe game clone is a simple two-player game that takes place on a 3x3 grid of squares. Each player takes turns tapping a square to place their mark (either an "X" or an "O"). The game continues until either one player has three marks in a row (horizontally, vertically, or diagonally), or all squares on the grid have been filled without either player achieving three in a row, resulting in a tie.',
      'button1': 'See Code',
      'button2': 'Download App',
    },
    {
      'title': 'My Portfolio website in flutter',
      'description':
          "           A portfolio website made using Flutter showcases a person's work, skills, and accomplishments using Flutter's UI toolkit. It includes an introduction section, a portfolio section, an \"about me\" section, and a contact section. The website design is visually appealing, utilizing Flutter's widgets and animations, and hot-reload feature enables rapid development and iteration.",
      'button1': 'See Code',
      'button2': 'Download App',
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
        return Container(
          decoration: BoxDecoration(
            color: Vx.blue900,

            // image: DecorationImage(
            //   image: AssetImage('assets/images/slider_background.jpg'),
            //   fit: BoxFit.cover,
            // ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _sliderItems[index]['title']!,
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ).shimmer(),
                //    SizedBox(height: context.percentHeight * 2),
                Text(
                  _sliderItems[index]['description']!,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ).p(30),
                SizedBox(height: context.percentHeight * 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 6, 21, 62)),
                      ),
                      child: Text(
                        _sliderItems[index]['button1']!,
                        style: TextStyle(
                            color: Color.fromARGB(255, 186, 186, 227)),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 6, 21, 62)),
                      ),
                      child: Text(
                        _sliderItems[index]['button2']!,
                        style: TextStyle(
                            color: Color.fromARGB(255, 186, 186, 227)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
