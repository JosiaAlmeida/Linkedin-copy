import 'package:flutter/material.dart';
import 'package:linkedln/material/theme/app_images.dart';
import 'package:linkedln/modules/feed_page/feed_page.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        color: Colors.blue,
        height: size.height,
        child: Stack(children: [
          SplashScreen(
            seconds: 10,
            navigateAfterSeconds: FeedPage(),
            loaderColor: Colors.transparent,
          ),
          Center(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(AppImages.fullLogo),
                    fit: BoxFit.contain)),
            width: size.width * 0.18,
            height: size.height,
          )),
        ]));
  }
}
