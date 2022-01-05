import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedln/material/widget/app_home_widget/app_home_widget.dart';
import 'package:linkedln/material/widget/app_minha_rede_widget/app_minha_rede_widget.dart';
import 'package:linkedln/material/widget/app_notficacao_widget/app_notificacao_widget.dart';
import 'package:linkedln/material/widget/app_vaga_widget/app_vaga_widget.dart';
import 'package:linkedln/modules/feed_page/feed_controller.dart';

class FeedPage extends StatefulWidget {
  FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final controller = FeedController();

  Widget SelectSection() {
    if (controller.counter == 0) {
      return AppHomeWidget();
    } else if (controller.counter == 1) {
      return AppMinhaRedeWidget();
    } else if (controller.counter == 2) {
      return AppNotificacaoWidget();
    } else
      return AppVagaWidget();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.black)),
        ),
        title: Container(
          width: size.width * 0.8,
          height: size.height * 0.06,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
            ),
          ),
        ),
        actions: [
          InkWell(
            child: Center(child: FaIcon(FontAwesomeIcons.solidCommentDots,)),
          ),
        ],
      ),
      body: SelectSection(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(0.02),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 50,
              decoration: BoxDecoration(
                border: controller.counter == 0
                    ? Border(top: BorderSide(width: 2, color: Colors.black))
                    : null,
              ),
              child: TextButton(
                onPressed: () {
                  controller.indexController(0);
                  setState(() {});
                },
                child: Column(
                  children: [
                    Icon(Icons.home,
                        color: controller.counter == 0 ? Colors.black : null),
                    Text("Inicio", style: TextStyle(fontSize: 8))
                  ],
                ),
              ),
            ),
            Container(
              width: 62,
              decoration: BoxDecoration(
                border: controller.counter == 1
                    ? Border(top: BorderSide(width: 2, color: Colors.black))
                    : null,
              ),
              child: TextButton(
                onPressed: () {
                  controller.indexController(1);
                  setState(() {});
                },
                child: Column(
                  children: [
                    FaIcon(FontAwesomeIcons.userFriends,
                        color: controller.counter == 1 ? Colors.black : null),
                    Text("Minha rede", style: TextStyle(fontSize: 8))
                  ],
                ),
              ),
            ),
            Container(
              width: 62,
              child: TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                    Text("Publicação", style: TextStyle(fontSize: 8))
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: controller.counter == 2
                    ? Border(top: BorderSide(width: 2, color: Colors.black))
                    : null,
              ),
              width: 62,
              child: TextButton(
                onPressed: () {
                  controller.indexController(2);
                  setState(() {});
                },
                child: Column(
                  children: [
                    FaIcon(FontAwesomeIcons.solidBell,
                        color: controller.counter == 2 ? Colors.black : null),
                    Text("Notificações", style: TextStyle(fontSize: 8))
                  ],
                ),
              ),
            ),
            Container(
              width: 50,
              decoration: BoxDecoration(
                border: controller.counter == 3
                    ? Border(top: BorderSide(width: 2, color: Colors.black))
                    : null,
              ),
              child: TextButton(
                onPressed: () {
                  controller.indexController(3);
                  setState(() {});
                },
                child: Column(
                  children: [
                    FaIcon(FontAwesomeIcons.businessTime,
                        color: controller.counter == 3 ? Colors.black : null),
                    Text(
                      "Vagas",
                      style: TextStyle(fontSize: 8),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
