import 'package:flutter/material.dart';
import 'package:linkedln/material/theme/app_images.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
            child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(AppImages.fullLogo), fit: BoxFit.contain)),
          width: size.width * 0.18,
          height: size.height,
        )));
  }
}
