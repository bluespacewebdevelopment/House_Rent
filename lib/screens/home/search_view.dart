import 'package:flutter/material.dart';

import '../../widgets/search_input.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
      appBar: AppBar(
        title: Text('Searc View'),
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
          ),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SearchInput(
        enable: true,
      ),
    );
  }
}
