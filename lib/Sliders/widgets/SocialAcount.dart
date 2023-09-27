import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        const Icon(
          Icons.facebook,
          color: Colors.white,
        ).onTap(() {
          launch('https://www.facebook.com/safyan.tariq.52/');
        }),
        20.widthBox,
        const Icon(
          //FontAwesomeIcons.instagram
          Ionicons.logo_instagram,
          color: Colors.white,
        ).onTap(() {
          launch('https://www.instagram.com/safyan.tariq.52/');
        }),
        20.widthBox,
        const Icon(
          FontAwesomeIcons.github,
          color: Colors.white,
        ).onTap(
          () {
            launch('https://github.com/MuhammadSafyanTariq');
          },
        ),
        20.widthBox,
        const Icon(
          FontAwesomeIcons.whatsapp,
          color: Colors.white,
        ).onTap(
          () {
            launch('https://wa.me/message/DSVRXB6RA6XMK1');
          },
        ),
      ]),
    );
  }
}

class SocialAccountsV extends StatelessWidget {
  const SocialAccountsV({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        const Icon(
          Icons.facebook,
          color: Colors.white,
        ).onTap(() {
          launch('https://www.facebook.com/safyan.tariq.52/');
        }),
        8.heightBox,
        const Icon(
          //FontAwesomeIcons.instagram
          Ionicons.logo_instagram,
          color: Colors.white,
        ).onTap(() {
          launch('https://www.instagram.com/safyan.tariq.52/');
        }),
        8.heightBox,
        const Icon(
          FontAwesomeIcons.github,
          color: Colors.white,
        ).onTap(
          () {
            launch('https://github.com/MuhammadSafyanTariq');
          },
        ),
        8.heightBox,
        const Icon(
          FontAwesomeIcons.whatsapp,
          color: Colors.white,
        ).onTap(
          () {
            launch('https://wa.me/message/DSVRXB6RA6XMK1');
          },
        ),
      ]),
    );
  }
}
