import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(screen.width * 0.02),
            child: Text(
              "Your Logo",
              style: TextStyle(
                fontSize: screen.width * 0.05,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screen.width * 0.02,
                  vertical: screen.height * 0.01,
                ),
                child: Text(
                  "Home",
                  style: TextStyle(fontSize: screen.width * 0.04),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screen.width * 0.02,
                  vertical: screen.height * 0.01,
                ),
                child: Text(
                  "About",
                  style: TextStyle(fontSize: screen.width * 0.04),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screen.width * 0.02,
                  vertical: screen.height * 0.01,
                ),
                child: Text(
                  "Portfolio",
                  style: TextStyle(fontSize: screen.width * 0.04),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screen.width * 0.02,
                  vertical: screen.height * 0.01,
                ),
                child: Text(
                  "Contact",
                  style: TextStyle(fontSize: screen.width * 0.04),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
