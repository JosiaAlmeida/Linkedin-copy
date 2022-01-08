import 'package:flutter/material.dart';

class PhotoUserWidget extends StatelessWidget {
  double heigthContainer;
  double heghtBackground;
  double heightImagePerfil;
  double widthImagePerfil;
  double widthBackground;
  double topPositionImage;
  double leftPositionImage;

  PhotoUserWidget({
    Key? key,
    this.heigthContainer = 0.4,
    this.heghtBackground = 0.2,
    this.heightImagePerfil = 0.2,
    this.widthImagePerfil = 0.4,
    this.widthBackground = 0,
    this.leftPositionImage = 0,
    this.topPositionImage = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * heigthContainer,
      child: Stack(
        children: [
          Container(
            width: widthBackground == 0
                ? size.width
                : size.width * widthBackground,
            height: size.height * heghtBackground,
            alignment: Alignment.topRight,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: widthBackground != 0
                ? TextButton(
                    onPressed: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(100)),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        )),
                  )
                : Container(),
          ),
          Positioned(
            top: topPositionImage == 0
                ? size.height * 0.08
                : size.height * topPositionImage,
            left: leftPositionImage == 0
                ? size.height * 0.14
                : size.width * leftPositionImage,
            child: Container(
              width: size.width * widthImagePerfil,
              height: size.height * heightImagePerfil,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
