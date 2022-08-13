import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.jpeg'),
                radius: 70,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: Text(
                'Name',
                style: TextStyle(fontSize: 28),
              ),
            )
          ],
        ),
      ),
    );
  }
}
