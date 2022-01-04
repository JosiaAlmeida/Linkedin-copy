import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignPage extends StatelessWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: size.height,
        child: Stack(
          children: [
            Container(
              height: size.height * 0.3,
              width: size.width,
              decoration: BoxDecoration(color: Colors.blue),
            ),
            Positioned(
              bottom: size.height * 0.8,
              child: Container(
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text.rich(
                    TextSpan(
                        text: "Conecta-se sempre que possivel",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                        children: [
                          TextSpan(
                            text: "\nJunta-se a nossa equipe do linkedin agora",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ]),
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: size.height * 0.35,
              child: Container(
                width: size.width,
                height: 280,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 15.0,
                          offset: Offset(0.0, 0.75))
                    ], color: Colors.white.withOpacity(0.8)),
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            child: TextFormField(
                                decoration: InputDecoration(
                              hintText: "Primeiro nome",
                              fillColor: Colors.blueAccent,
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                              focusColor: Colors.blue,
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            child: TextFormField(
                                decoration: InputDecoration(
                              hintText: "Primeiro nome",
                              fillColor: Colors.blueAccent,
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                              focusColor: Colors.blue,
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            child: TextFormField(
                                decoration: InputDecoration(
                              hintText: "Primeiro nome",
                              fillColor: Colors.blueAccent,
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                              focusColor: Colors.blue,
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            child: TextFormField(
                                decoration: InputDecoration(
                              hintText: "Primeiro nome",
                              fillColor: Colors.blueAccent,
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                              focusColor: Colors.blue,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: size.height * 0.30,
                child: Container(
                  width: size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Criar conta agora",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
