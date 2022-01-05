import 'package:flutter/material.dart';
import 'package:linkedln/material/widget/app_home_widget/app_feed_notify_widget.dart';

class AppHomeWidget extends StatefulWidget {
  AppHomeWidget({Key? key}) : super(key: key);

  @override
  _AppHomeWidgetState createState() => _AppHomeWidgetState();
}

class _AppHomeWidgetState extends State<AppHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemBuilder: (BuildContext context, _) {
        return Container(
          color: Colors.grey.withOpacity(0.2),
          width: MediaQuery.of(context).size.width,
          child: AppFeedNotifyWidget()
        );
      },
      itemCount: 3,
    ));
  }
}
