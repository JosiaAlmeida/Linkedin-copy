import 'package:flutter/material.dart';
import 'package:linkedln/material/widget/app_minha_rede_widget/connect_user_widget.dart';

class AppUserToConnect extends StatelessWidget {
  const AppUserToConnect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Text("Minha redes"),
            ConnectUserWidget(),
            ConnectUserWidget(),
            ConnectUserWidget(),
            SizedBox(
              height: size.height * 0.3,
            )
          ]),
        ));
  }
}
