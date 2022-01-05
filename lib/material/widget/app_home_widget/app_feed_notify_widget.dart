import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedln/material/theme/app_images.dart';
import 'package:simple_icons/simple_icons.dart';
import 'dart:math' as math;

class AppFeedNotifyWidget extends StatelessWidget {
  const AppFeedNotifyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue),
                      width: 40,
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text.rich(TextSpan(
                          text: "Josia Almeida\n",
                          style: TextStyle(fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(
                                text: "Desenvolvedor de SoftWare",
                                style: TextStyle(fontWeight: FontWeight.normal))
                          ])),
                    )
                  ],
                )),
                TextButton(
                    onPressed: () {}, child: FaIcon(FontAwesomeIcons.ellipsisV))
              ],
            ),
            Text("SUA CURTIDA PODE ME AJUDAR"),
            Container(
              child: Image.asset(AppImages.fullLogo),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          width: 1, color: Colors.grey.withOpacity(0.2)))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Center(
                            child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: FaIcon(FontAwesomeIcons.thumbsUp)),
                          ),
                          Text("Gostei", style: TextStyle(fontSize: 8))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          FaIcon(FontAwesomeIcons.commentAlt),
                          Text("Comentar", style: TextStyle(fontSize: 8))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          FaIcon(FontAwesomeIcons.share),
                          Text("Compartilhar", style: TextStyle(fontSize: 8))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          FaIcon(FontAwesomeIcons.solidPaperPlane),
                          Text("Enviar", style: TextStyle(fontSize: 8))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
