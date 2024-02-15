import 'package:flutter/material.dart';
import 'package:pulsce_app/service/themes/color_themes.dart';
import 'package:pulsce_app/service/themes/image_themes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        color: ColorResources.orangeColor         ,
        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height * 0.3,
              left: MediaQuery.of(context).size.width * 0.25,
              right: MediaQuery.of(context).size.width * 0.25,
              child: Image.asset(Images.splashLogo),
            ),
            Positioned.fill(
              top: null, 
              child: Image.asset(
                Images.splashanim,
                fit: BoxFit.cover, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
