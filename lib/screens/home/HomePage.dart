import 'package:flutter/material.dart';
import 'package:house_rent/screens/home/search_view.dart';

import '../../widgets/best_offer.dart';
import '../../widgets/categories.dart';
import '../../widgets/recommended_house.dart';
import '../../widgets/search_input.dart';
import '../../widgets/welcome_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const WelcomeText(),
          GestureDetector(
            child: SearchInput(
              enable: false,
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SearchView()));
            },
          ),
          const Categories(),
          RecommendedHouse(),
          BestOffer(),
        ],
      ),
    );
  }
}
