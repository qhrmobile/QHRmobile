import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Container(
      padding: const EdgeInsets.only(right: 5, left: 15, top: 20),
      child: Column(children: [
        Container(
          width: 300,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: Colors.white,
                  inset: true,
                ),
                BoxShadow(
                  offset: Offset(1, 2),
                  blurRadius: 5,
                  color: Colors.grey,
                  inset: true,
                ),
              ]),
          child: TextField(
            textAlign: TextAlign.center,
            //onChanged: (value) {},
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
              hintText: 'Search',
              suffixIcon: const Icon(Icons.search),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
