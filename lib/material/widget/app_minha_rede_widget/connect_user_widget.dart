import 'package:flutter/material.dart';
import 'package:linkedln/material/widget/app_support/photo_user_widget.dart';

class ConnectUserWidget extends StatelessWidget {
  const ConnectUserWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.58,
      width: size.width,
      margin: EdgeInsets.fromLTRB(0, 12, 0, 12),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: size.width * 0.4,
                    height: size.height * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        PhotoUserWidget(
                          widthBackground: 0.4,
                          heghtBackground: 0.10,
                          heightImagePerfil: 0.11,
                          widthImagePerfil: 0.22,
                          leftPositionImage: 0.08,
                          topPositionImage: 0.04,
                          heigthContainer: 0.15,
                        ),
                        Container(
                          width: size.width,
                          child: Center(
                            child: Text.rich(TextSpan(
                                text: "Josia Almeida",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                children: [
                                  TextSpan(
                                      text: "\nDesenvolvedor de software",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))
                                ])),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8.0),
                          width: size.width,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blueAccent),
                          ),
                          child: TextButton(
                            child: Text("Conectar"),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: size.width * 0.4,
                    height: size.height * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        PhotoUserWidget(
                          widthBackground: 0.4,
                          heghtBackground: 0.10,
                          heightImagePerfil: 0.11,
                          widthImagePerfil: 0.22,
                          leftPositionImage: 0.08,
                          topPositionImage: 0.04,
                          heigthContainer: 0.15,
                        ),
                        Container(
                          width: size.width,
                          child: Center(
                            child: Text.rich(TextSpan(
                                text: "Josia Almeida",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                children: [
                                  TextSpan(
                                      text: "\nDesenvolvedor de software",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))
                                ])),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8.0),
                          width: size.width,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blueAccent),
                          ),
                          child: TextButton(
                            child: Text("Conectar"),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                // PhotoUserWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
