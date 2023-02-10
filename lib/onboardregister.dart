import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

import 'LoginPage.dart';
import 'RegisterPage.dart';

class OnboardRegister extends StatelessWidget {
  final Color kDarkBlueColor = const Color(0xFF053149);

  const OnboardRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Comenzar ahora',
      onFinish: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => RegisterPage(),
          ),
        );
      },

      trailing: Text(
        'Ya tengo cuenta',

        style: TextStyle(
          fontSize: 22,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w700,
        ),
      ),
      trailingFunction: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      },
      controllerColor: kDarkBlueColor,
      totalPage: 4,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        Image.asset(
          'assets/onboarding_images/onboardone.png',
          height: 550,
          alignment: Alignment.topCenter,
        ),
        Image.asset(
          'assets/onboarding_images/onboardtwo.png',
          height: 525,
          alignment: Alignment.topCenter,

        ),
        Image.asset(
          'assets/onboarding_images/onboardthree.png',
          height: 525,
          alignment: Alignment.topCenter,

        ),
        Image.asset(
          'assets/onboarding_images/onboardfour.png',
          height: 530,
          alignment: Alignment.topCenter,

        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              SizedBox(
                height: 500,
              ),
              Text(
                'Todo lo que necesitas para vivir una vida saludable en una sola aplicación',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              SizedBox(
                height: 500,
              ),
              Text(
                'Compra todo lo que necesites para el cuidado de tu diabetes en nuestra tienda especializada',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 500,
              ),
              Text(
                'Añade tus mediciones de glucosa, peso, presión arterial entre otras y envíalos directamente a tu médico.',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 500,
              ),
              Text(
                'Encuentra planes nutricionales y recetas especiales para cuidado tu salud.',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}