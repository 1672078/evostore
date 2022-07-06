import 'package:flutter/material.dart';

class BigDividerGrey extends StatelessWidget {
  const BigDividerGrey({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey.shade300,
      thickness: 4,
    );
  }
}
