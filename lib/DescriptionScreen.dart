import 'package:flutter/material.dart';
import 'package:sss/coolors.dart';
import 'package:velocity_x/velocity_x.dart';

class MyPage extends StatelessWidget {
  final String title;
  final String description;

  MyPage({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeightBox(context.percentHeight * 5),
        Container(
          // height: context.isMobile
          //     ? context.percentHeight * 90
          //     : context.percentHeight * 70,
          color: Coolors.primaryColor,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Roboto',
                    ),
                  ).shimmer(),
                ),
                SizedBox(height: 16),
                Text(
                  description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'Open Sans',
                  ),
                ).p(context.percentWidth * 2),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
