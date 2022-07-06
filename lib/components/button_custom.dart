import 'package:evo_store/constanta.dart';
import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({Key? key, required this.textnya, required this.onpressed})
      : super(key: key);

  final String textnya;
  final void onpressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(bluedefault()),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ))
              //elevatedbutton shape
              ),
          onPressed: () => onpressed,
          child: Text(
            textnya,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          )),
    );
  }
}
