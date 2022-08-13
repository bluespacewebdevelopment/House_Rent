import 'package:flutter/material.dart';
import 'package:house_rent/screens/home/notification.dart';
import 'package:house_rent/screens/home/rent.dart';
import 'package:house_rent/widgets/custom_app_bar.dart';

import '../../widgets/appbar.dart';
import '../../widgets/search_input.dart';
import 'HomePage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget layout = HomePage();
  var appbar = const CustomAppBar() as PreferredSizeWidget;
  late int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: appbar,
      body: layout,
      bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          margin: const EdgeInsets.only(bottom: 25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: BottomNavigationBar(
              currentIndex: selectIndex,
              selectedItemColor: Colors.lightBlue,
              unselectedItemColor: Colors.black,
              backgroundColor: Colors.white,
              elevation: 0,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  tooltip: 'Home',
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    tooltip: 'Home-Search',
                    label: 'Home-Search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notification_important),
                    tooltip: 'Notification',
                    label: 'Notification'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.roofing), tooltip: 'Rent', label: 'Rent'),
              ],
              onTap: (index) {
                setState(() {
                  selectIndex = index;
                });
                if (index == 0) {
                  setState(() {
                    layout = const HomePage();
                    appbar = const CustomAppBar();
                  });
                } else if (index == 1) {
                  setState(() {
                    layout = SearchInput(enable: true);
                    appbar = const Appbar(
                      title: 'SearchView',
                    );
                  });
                } else if (index == 2) {
                  setState(() {
                    layout = const Notifications();
                    appbar = const Appbar(
                      title: 'Notification',
                    );
                  });
                } else {
                  setState(() {
                    layout = Rent();
                    appbar = const Appbar(
                      title: 'Rent',
                    ) as PreferredSizeWidget;
                  });
                }
              },
            ),
          )),
    );
  }
}
