import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 300),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          FaIcon(
            FontAwesomeIcons.google,
            color: Colors.green,
          ),
          FaIcon(FontAwesomeIcons.apple),
          FaIcon(
            FontAwesomeIcons.facebook,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
