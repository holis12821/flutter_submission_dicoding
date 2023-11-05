
import 'package:flutter/material.dart';
import 'package:flutter_submission_dicoding/utils/debounce_helper.dart';

class SearchBar extends StatelessWidget {
  SearchBar({
    super.key,
    required this.onSearch,
  });

  final Function(String) onSearch;

   final debouncer = Debouncer(milliseconds: 100);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      child: TextField(
        style: TextStyle(
          fontSize: 15.0,
          color: Colors.blueGrey[300],
        ),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          hintText: 'E.g: Istanbul, Turkey',
          prefixIcon: Icon(
            Icons.location_on,
            color: Colors.blueGrey[300],
          ),
          hintStyle: TextStyle(
            fontSize: 15.0,
            color: Colors.blueGrey[300],
          ),
        ),
        maxLines: 1,
        onChanged: (keyword) => {
          debouncer.run(() {
            if (keyword.length > 2) {
              onSearch(keyword);
            } 
          })
        },
      ),
    );
  }
}
