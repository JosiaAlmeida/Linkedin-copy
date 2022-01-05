import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
import 'package:flutter_unicons/flutter_unicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math' as math;

class ReactionsController {
  YYDialog YYNoticeDialog() {
    return YYDialog().build()
      ..width = 120
      ..height = 110
      ..backgroundColor = Colors.black.withOpacity(0.8)
      ..borderRadius = 10.0
      ..showCallBack = () {
        print("showCallBack invoke");
      }
      ..dismissCallBack = () {
        print("dismissCallBack invoke");
      }
      ..widget(Padding(
        padding: EdgeInsets.only(top: 21),
        child: Image.asset(
          'images/success.png',
          width: 38,
          height: 38,
        ),
      ))
      ..widget(Padding(
        padding: EdgeInsets.only(top: 10),
        child: Text(
          "Success",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ))
      ..animatedFunc = (child, animation) {
        return ScaleTransition(
          child: child,
          scale: Tween(begin: 0.0, end: 1.0).animate(animation),
        );
      }
      ..show();
  }

  void showDialog(BuildContext context) {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 70,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 40,
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Center(
                            child: Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.rotationY(math.pi),
                                child:FaIcon(
                                  FontAwesomeIcons.solidThumbsUp,
                                  size: 30,
                                  color: Colors.blue,
                                )),
                          ),
                          Text("Gostei", style: TextStyle(fontSize: 8))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Center(
                            child: Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.rotationY(math.pi),
                                child: Icon(
                                  Icons.celebration,
                                  size: 30,
                                  color: Colors.green,
                                )),
                          ),
                          Text("Parabens", style: TextStyle(fontSize: 8))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Center(
                            child: Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.rotationY(math.pi),
                                child: FaIcon(
                                  FontAwesomeIcons.solidStar,
                                  size: 30,
                                  color: Colors.purpleAccent,
                                )),
                          ),
                          Text("Apoio", style: TextStyle(fontSize: 8))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Center(
                            child: Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.rotationY(math.pi),
                                child: FaIcon(
                                  FontAwesomeIcons.solidHeart,
                                  color: Colors.red,
                                  size: 30,
                                )),
                          ),
                          Text("Adorei", style: TextStyle(fontSize: 8))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.brightness_7,
                            size: 30,
                            color: Colors.yellow,
                          ),
                          Text("Ideia", style: TextStyle(fontSize: 8))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Center(
                            child: Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.rotationY(math.pi),
                                child: Icon(
                                  Icons.insert_emoticon,
                                  size: 30,
                                  color: Colors.purple,
                                )),
                          ),
                          Text("Curioso", style: TextStyle(fontSize: 8))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            margin: EdgeInsets.only(bottom: 50, left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }
}
