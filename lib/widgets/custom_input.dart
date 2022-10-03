import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({Key? key, required this.iconUrl, required this.hintText})
      : super(key: key);

  final String iconUrl;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(0xccffffff)),
      child: TextField(
          style: const TextStyle(
              color: Color(0xff9395A4),
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400),
          decoration: InputDecoration(
              hintStyle: const TextStyle(fontSize: 15, fontFamily: 'Poppins'),
              hintText: hintText,
              icon: Image.asset(iconUrl),
              border: InputBorder.none)),
    );
  }
}
