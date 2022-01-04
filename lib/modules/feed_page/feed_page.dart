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
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Icon(Icons.home),
            Icon(Icons.home),
            Icon(Icons.add),
            Icon(Icons.notifications_on),
            Icon(Icons.badge),
          ],),
        ),
        );
  }
}
