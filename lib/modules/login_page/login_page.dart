import 'package:flutter/material.dart';
import 'package:linkedln/material/theme/app_images.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          height: size.height,
          child: Stack(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 200,
                      height: 200,
                      child: Image.asset(AppImages.logoFull)),
                ),
              ),
              Positioned(
                bottom: size.height * 0.3,
                left: 0,
                right: 0,
                child: Text(
                  "Conecta-se as oportunidades",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(color: Colors.blue),
                          width: size.width,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Entrar",
                                style: TextStyle(color: Colors.white),
                              ))),
                      Container(
                          width: size.width,
                          child: TextButton(
                              onPressed: () {}, child: Text("Entrar"))),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
