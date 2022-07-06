import 'package:flutter/material.dart';

class FilterSearch extends StatelessWidget {
  const FilterSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [Icon(Icons.search), Icon(Icons.sort)],
      ),
    );
  }
}
