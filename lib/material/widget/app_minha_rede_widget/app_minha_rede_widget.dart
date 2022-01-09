import 'package:flutter/material.dart';
import 'package:linkedln/material/widget/app_minha_rede_widget/app_user_to_conect.dart';
import 'package:linkedln/material/widget/app_minha_rede_widget/connect_user_widget.dart';

class AppMinhaRedeWidget extends StatelessWidget {
  const AppMinhaRedeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: AppUserToConnect(),
    );
  }
}
