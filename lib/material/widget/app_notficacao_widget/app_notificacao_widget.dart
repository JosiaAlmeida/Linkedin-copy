import 'package:flutter/material.dart';

class AppNotificacaoWidget extends StatefulWidget {
  AppNotificacaoWidget({Key? key}) : super(key: key);

  @override
  _AppNotificacaoWidgetState createState() => _AppNotificacaoWidgetState();
}

class _AppNotificacaoWidgetState extends State<AppNotificacaoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("Notificao"),);
  }
}