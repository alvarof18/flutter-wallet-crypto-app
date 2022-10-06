import 'package:flutter/material.dart';

class IconMarkets extends StatelessWidget {
  final String title;
  final String urlIcon;
  final Color circleColor;

  const IconMarkets(
      {required this.title, required this.urlIcon, required this.circleColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 115,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white.withOpacity(0.4)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 32,
              height: 32,
              decoration:
                  BoxDecoration(color: circleColor, shape: BoxShape.circle),
              child: IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {},
                  icon: Image.asset(urlIcon)),
            ),
            const SizedBox(
              height: 17,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Color(0xff191C32),
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ));
  }
}
