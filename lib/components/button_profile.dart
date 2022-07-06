import 'package:flutter/material.dart';

class ButtonProfile extends StatelessWidget {
  const ButtonProfile({
    Key? key,
    required this.textnya,
  }) : super(key: key);

  final String textnya;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(8)),
        alignment: Alignment.centerLeft,
        width: 300,
        height: 55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              textnya,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.white),
            ),
            const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.white,
            )
          ],
        ));
  }
}
