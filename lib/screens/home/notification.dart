import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationState();
}

class _NotificationState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.blue[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Icons.notifications,
              size: 50,
            ),
            Text(
              'No Notification',
              softWrap: true,
            )
          ],
        ),
      ),
    );
  }
}
