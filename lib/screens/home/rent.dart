import 'package:flutter/material.dart';

import '../../models/user_rent_detail.dart';

class Rent extends StatefulWidget {
  const Rent({Key? key}) : super(key: key);

  @override
  State<Rent> createState() => _RentState();
}

class _RentState extends State<Rent> {
  List<User_Rent> paidUser = User_Rent.paidUser();
  List<User_Rent> unPaidUser = User_Rent.unPaidUser();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              'Paid',
              style: TextStyle(fontSize: 24, color: Colors.blueAccent),
              textAlign: TextAlign.center,
            ),
          ),
          ListView.builder(
            physics: PageScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: paidUser.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.blue[100],
                child: ListTile(
                  title: Text(paidUser[index].name),
                  subtitle: Text(paidUser[index].roomNo),
                  trailing: const Icon(
                    Icons.cloud_done,
                    color: Colors.green,
                  ),
                ),
              );
            },
          ),
          Divider(
            thickness: 0,
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              'Un Paid',
              style: TextStyle(fontSize: 24, color: Colors.blueAccent),
              textAlign: TextAlign.center,
            ),
          ),
          ListView.builder(
            physics: PageScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: unPaidUser.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.blue[100],
                child: ListTile(
                  title: Text(unPaidUser[index].name),
                  subtitle: Text(unPaidUser[index].roomNo),
                  trailing: Text('Rent ${unPaidUser[index].remainingAmount}'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
