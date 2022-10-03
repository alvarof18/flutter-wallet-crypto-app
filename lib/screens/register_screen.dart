import 'package:flutter/material.dart';

import '../drawers/background_ilustrator.dart';
import '../widgets/custom_input.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF3F5F6),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _headerIlustrator(),
              const SizedBox(height: 20),
              const Text(
                'Register',
                style: TextStyle(
                    fontSize: 32,
                    color: Color(0xff191C32),
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins"),
              ),
              const SizedBox(height: 30),
              const CustomInput(
                  iconUrl: 'assets/user.png', hintText: 'Username'),
              const SizedBox(height: 10),
              const CustomInput(iconUrl: 'assets/email.png', hintText: 'Email'),
              const SizedBox(height: 10),
              const CustomInput(
                  iconUrl: 'assets/password.png', hintText: 'Password'),
              const SizedBox(height: 40),
              _Button(),
              const SizedBox(height: 30),
              _ButtonSocial()
            ],
          ),
        ));
  }
}

class _ButtonSocial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 54,
          width: 54,
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  fit: BoxFit.cover, image: AssetImage('assets/google.png'))),
        ),
        Container(
          height: 54,
          width: 54,
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  fit: BoxFit.cover, image: AssetImage('assets/facebook.png'))),
        ),
        Container(
          height: 54,
          width: 54,
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  fit: BoxFit.cover, image: AssetImage('assets/apple.png'))),
        )
      ],
    );
  }
}

class _Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              elevation: 0,
              primary: const Color(0xff191C32)),
          onPressed: () {},
          child: const Text(
            'Register',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
          )),
    );
  }
}

class _headerIlustrator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: CustomPaint(
              size: const Size(287, 287),
              painter: BackgroundLight(),
            ),
          ),
          Positioned(
            top: 15,
            left: 22,
            child: CustomPaint(
              painter: Background(),
            ),
          ),
          const Positioned(
            left: 30,
            child: Image(
              width: 235,
              height: 235,
              fit: BoxFit.cover,
              image: AssetImage('assets/robot.png'),
            ),
          )
        ],
      ),
    );
  }
}
