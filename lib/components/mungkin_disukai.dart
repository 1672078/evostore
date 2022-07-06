import 'package:flutter/material.dart';

class MungkinDisukai extends StatelessWidget {
  const MungkinDisukai({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mungkin kamu sukai!",
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                "memunculkan 12 hasil..",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          const Icon(Icons.sort)
        ],
      ),
    );
  }
}
