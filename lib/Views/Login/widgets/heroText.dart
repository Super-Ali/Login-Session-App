import 'package:flutter/material.dart';
import 'package:ropstam_app/Constants/UsableConstants.dart';

class heroText extends StatelessWidget {
  const heroText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Hello Again!",
          style: lgStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Chance to get your",
          style: smStyle,
        ),
        Text(
          "life better",
          style: smStyle,
        )
      ],
    );
  }
}

class passrecover extends StatelessWidget {
  const passrecover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(10),
        constraints: BoxConstraints(maxWidth: 300),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Container()),
            Text(
              "Recovery Password",
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
