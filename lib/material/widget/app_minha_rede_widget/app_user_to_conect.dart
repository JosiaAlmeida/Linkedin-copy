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
      child: ListView.builder(itemBuilder: (BuildContext context, _){
        return ConnectUserWidget();
      }, itemCount: 3));
  }
}