import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {Key? key,
      required this.text,
      required this.assetsUrl,
      this.expanded = false})
      : super(key: key);
  final String text;
  final String assetsUrl;
  final bool expanded;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white,
      elevation: 0,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          initiallyExpanded: expanded,
          iconColor: const Color(0xffF7931A),
          collapsedIconColor: const Color(0xffCED0DE),
          leading: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xffFFE4C3)),
            child: Image.asset(assetsUrl),
          ),
          title: Text(text,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 1,
              color: const Color(0xff9395A4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: const Text(
                      'Buy',
                      style: TextStyle(
                          color: Color(0xff8567FF),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )),
                TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: const Text(
                      'Sell',
                      style: TextStyle(
                          color: Color(0xff9395A4),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )),
                TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: const Text(
                      'More',
                      style: TextStyle(
                          color: Color(0xff9395A4),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
