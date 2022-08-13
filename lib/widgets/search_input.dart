import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/house.dart';

class SearchInput extends StatefulWidget {
  SearchInput({Key? key, required this.enable}) : super(key: key);
  bool enable;

  @override
  State<SearchInput> createState() => _SearchInputState(enable);
}

class _SearchInputState extends State<SearchInput> {
  _SearchInputState(this.enable) {
    _search.addListener(() {
      if (_search.text.isEmpty) {
        setState(() {
          search = '';
        });
      } else {
        setState(() {
          search = _search.text;
        });
      }
    });
  }
  bool enable = true;
  final TextEditingController _search = TextEditingController();
  late String search = '';
  @override
  Widget build(BuildContext context) {
    setState(() {
      search = _search.text;
    });

    return Card(
      color: Colors.blue[100],
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: _search,
                enabled: enable,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'Search here...',
                  prefixIcon: Container(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset('assets/icons/search.svg'),
                  ),
                  contentPadding: const EdgeInsets.all(2),
                ),
                onChanged: (value) {
                  setState(() {
                    search = value;
                  });
                },
              ),
            ),
            find(search)
          ],
        ),
      ),
    );
  }

  Widget find(String value) {
    List<House> list = [];
    setState(() {
      for (House house in House.generateRecommended()) {
        var val;
        if (house.name.length >= search.length) {
          val = house.name.substring(0, value.length);
        } else {
          val = house.name;
        }
        if (val.toLowerCase().contains(value.toLowerCase()) &&
            value.isNotEmpty) {
          list.add(house);
        }
      }
    });

    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) {
        House hous = list.elementAt(index);
        return ListTile(
          title: Text(hous.name),
          subtitle: Text(
            hous.address,
            softWrap: true,
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          thickness: 1,
        );
      },
    );
  }
}
