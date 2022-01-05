import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
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
          width: size.width * 0.5,
          height: size.height * 0.06,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
            ),
          ),
        ),
        actions: [
          InkWell(
            child: Icon(
              Icons.message,
              size: 28,
            ),
          ),
        ],
      ),
      body: Container(),
      bottomNavigationBar: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [Icon(Icons.home), Text("Inicio", style: TextStyle(fontSize: 12))],
            ),
            Column(
              children: [Icon(Icons.person), Text("Minha rede", style: TextStyle(fontSize: 12))],
            ),
            Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                Text("Publicação", style: TextStyle(fontSize: 12))
              ],
            ),
            Column(
              children: [Icon(Icons.notifications_on), Text("Notificações", style: TextStyle(fontSize: 12))],
            ),
            Column(
              children: [Icon(Icons.badge), Text("Vagas", style: TextStyle(fontSize: 12),)],
            ),
          ],
        ),
      ),
    );
  }
}
