import 'package:flutter/material.dart';

import '../constanta.dart';

class Paymentdisconnect extends StatelessWidget {
  const Paymentdisconnect({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        color: Colors.white,
        elevation: 5,
        //round
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Container(
            alignment: Alignment.centerLeft,
            width: size.width,
            height: 30,
            margin: const EdgeInsets.only(left: 20, top: 12, bottom: 12),
            child: Text(
              'Hubungkan alat pembayaran',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: greydefault()),
            )),
      ),
    );
  }
}
