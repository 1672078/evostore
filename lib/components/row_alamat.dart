import 'package:flutter/material.dart';

class RowAlamat extends StatelessWidget {
  const RowAlamat({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    //size
    // final size = MediaQuery.of(context).size;
    return SizedBox(
      width: 250,
      child: Row(
        children: [
          icon,
          const SizedBox(width: 20),
          SizedBox(
            width: 200,
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }
}
