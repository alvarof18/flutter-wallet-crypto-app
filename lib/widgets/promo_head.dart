import 'package:flutter/material.dart';

class PromoHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Stack(
        children: [
          _TextAndButtonPromoHead(),
          Positioned(right: 0, bottom: 10, child: _IlustratorPromoHead()),
        ],
      ),
    );
  }
}

class _TextAndButtonPromoHead extends StatelessWidget {
  // Se puede cambiar por una Columm
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(0xff9F9DF3)),
      child: Stack(
        children: [
          Positioned(
            left: 20,
            top: 20,
            child: _PromoTextHead(),
          ),
          Positioned(bottom: 20, left: 20, child: _PromoButtonHead()),
        ],
      ),
    );
  }
}

class _IlustratorPromoHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 185,
      child: Stack(
        children: [
          Positioned(
              left: 0, bottom: 0, child: Image.asset('assets/BTC_icon.png')),
          Positioned(
              right: 0, top: 10, child: Image.asset('assets/ETH_icon.png')),
          Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset('assets/robot_medium.png')),
        ],
      ),
    );
  }
}

class _PromoButtonHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 35,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: Colors.white,
              shape: const StadiumBorder()),
          onPressed: () {},
          child: const Text(
            'Try Now',
            style: TextStyle(fontSize: 14, color: Color(0xff26273C)),
          )),
    );
  }
}

class _PromoTextHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Try our AI for avoid\n'
      'huge loss',
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
      textAlign: TextAlign.left,
    );
  }
}
